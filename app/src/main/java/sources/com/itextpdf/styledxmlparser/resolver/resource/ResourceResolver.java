package com.itextpdf.styledxmlparser.resolver.resource;

import com.itextpdf.commons.utils.Base64;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.p017io.image.ImageDataFactory;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ResourceResolver {
    public static final String BASE64_IDENTIFIER = "base64";
    public static final String DATA_SCHEMA_PREFIX = "data:";
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) ResourceResolver.class);
    private SimpleImageCache imageCache;
    private IResourceRetriever retriever;
    private UriResolver uriResolver;

    public ResourceResolver(String str) {
        this(str, null);
    }

    public ResourceResolver(String str, IResourceRetriever iResourceRetriever) {
        this.uriResolver = new UriResolver(str == null ? "" : str);
        this.imageCache = new SimpleImageCache();
        if (iResourceRetriever == null) {
            this.retriever = new DefaultResourceRetriever();
        } else {
            this.retriever = iResourceRetriever;
        }
    }

    public IResourceRetriever getRetriever() {
        return this.retriever;
    }

    public ResourceResolver setRetriever(IResourceRetriever iResourceRetriever) {
        this.retriever = iResourceRetriever;
        return this;
    }

    public PdfXObject retrieveImage(String str) {
        PdfXObject pdfXObjectTryResolveBase64ImageSource;
        if (str != null) {
            if (isContains64Mark(str) && (pdfXObjectTryResolveBase64ImageSource = tryResolveBase64ImageSource(str)) != null) {
                return pdfXObjectTryResolveBase64ImageSource;
            }
            PdfXObject pdfXObjectTryResolveUrlImageSource = tryResolveUrlImageSource(str);
            if (pdfXObjectTryResolveUrlImageSource != null) {
                return pdfXObjectTryResolveUrlImageSource;
            }
        }
        if (isDataSrc(str)) {
            logger.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNABLE_TO_RETRIEVE_IMAGE_WITH_GIVEN_DATA_URI, str));
            return null;
        }
        logger.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNABLE_TO_RETRIEVE_IMAGE_WITH_GIVEN_BASE_URI, this.uriResolver.getBaseUri(), str));
        return null;
    }

    public byte[] retrieveBytesFromResource(String str) {
        byte[] bArrRetrieveBytesFromBase64Src = retrieveBytesFromBase64Src(str);
        if (bArrRetrieveBytesFromBase64Src != null) {
            return bArrRetrieveBytesFromBase64Src;
        }
        try {
            return this.retriever.getByteArrayByUrl(this.uriResolver.resolveAgainstBaseUri(str));
        } catch (Exception e) {
            logger.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNABLE_TO_RETRIEVE_STREAM_WITH_GIVEN_BASE_URI, this.uriResolver.getBaseUri(), str), (Throwable) e);
            return null;
        }
    }

    public InputStream retrieveResourceAsInputStream(String str) {
        byte[] bArrRetrieveBytesFromBase64Src = retrieveBytesFromBase64Src(str);
        if (bArrRetrieveBytesFromBase64Src != null) {
            return new ByteArrayInputStream(bArrRetrieveBytesFromBase64Src);
        }
        try {
            return this.retriever.getInputStreamByUrl(this.uriResolver.resolveAgainstBaseUri(str));
        } catch (Exception e) {
            logger.error(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNABLE_TO_RETRIEVE_STREAM_WITH_GIVEN_BASE_URI, this.uriResolver.getBaseUri(), str), (Throwable) e);
            return null;
        }
    }

    public static boolean isDataSrc(String str) {
        return str != null && str.toLowerCase().startsWith(DATA_SCHEMA_PREFIX) && str.contains(",");
    }

    public URL resolveAgainstBaseUri(String str) throws MalformedURLException {
        return this.uriResolver.resolveAgainstBaseUri(str);
    }

    public void resetCache() {
        this.imageCache.reset();
    }

    protected PdfXObject tryResolveBase64ImageSource(String str) {
        try {
            String strReplaceAll = str.replaceAll("\\s", "");
            String strSubstring = strReplaceAll.substring(strReplaceAll.indexOf(BASE64_IDENTIFIER) + BASE64_IDENTIFIER.length() + 1);
            PdfXObject image = this.imageCache.getImage(strSubstring);
            if (image != null) {
                return image;
            }
            PdfImageXObject pdfImageXObject = new PdfImageXObject(ImageDataFactory.create(Base64.decode(strSubstring)));
            this.imageCache.putImage(strSubstring, pdfImageXObject);
            return pdfImageXObject;
        } catch (Exception unused) {
            return null;
        }
    }

    protected PdfXObject tryResolveUrlImageSource(String str) {
        try {
            URL urlResolveAgainstBaseUri = this.uriResolver.resolveAgainstBaseUri(str);
            String externalForm = urlResolveAgainstBaseUri.toExternalForm();
            PdfXObject image = this.imageCache.getImage(externalForm);
            if (image == null && (image = createImageByUrl(urlResolveAgainstBaseUri)) != null) {
                this.imageCache.putImage(externalForm, image);
            }
            return image;
        } catch (Exception unused) {
            return null;
        }
    }

    protected PdfXObject createImageByUrl(URL url) throws Exception {
        byte[] byteArrayByUrl = this.retriever.getByteArrayByUrl(url);
        if (byteArrayByUrl == null) {
            return null;
        }
        return new PdfImageXObject(ImageDataFactory.create(byteArrayByUrl));
    }

    private byte[] retrieveBytesFromBase64Src(String str) {
        if (!isContains64Mark(str)) {
            return null;
        }
        try {
            String strReplaceAll = str.replaceAll("\\s", "");
            return Base64.decode(strReplaceAll.substring(strReplaceAll.indexOf(BASE64_IDENTIFIER) + BASE64_IDENTIFIER.length() + 1));
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean isContains64Mark(String str) {
        return str.contains(BASE64_IDENTIFIER);
    }
}
