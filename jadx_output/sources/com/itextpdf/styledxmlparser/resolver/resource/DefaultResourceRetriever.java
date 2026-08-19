package com.itextpdf.styledxmlparser.resolver.resource;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.util.StreamUtil;
import com.itextpdf.p017io.util.UrlUtil;
import com.itextpdf.styledxmlparser.exceptions.ReadingByteLimitException;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultResourceRetriever implements IResourceRetriever {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) DefaultResourceRetriever.class);
    private long resourceSizeByteLimit = Long.MAX_VALUE;

    protected boolean urlFilter(URL url) {
        return true;
    }

    public long getResourceSizeByteLimit() {
        return this.resourceSizeByteLimit;
    }

    public IResourceRetriever setResourceSizeByteLimit(long j) {
        this.resourceSizeByteLimit = j;
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.resolver.resource.IResourceRetriever
    public InputStream getInputStreamByUrl(URL url) throws IOException {
        if (!urlFilter(url)) {
            logger.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.RESOURCE_WITH_GIVEN_URL_WAS_FILTERED_OUT, url));
            return null;
        }
        return new LimitedInputStream(UrlUtil.getInputStreamOfFinalConnection(url), this.resourceSizeByteLimit);
    }

    @Override // com.itextpdf.styledxmlparser.resolver.resource.IResourceRetriever
    public byte[] getByteArrayByUrl(URL url) throws IOException {
        try {
            InputStream inputStreamByUrl = getInputStreamByUrl(url);
            if (inputStreamByUrl == null) {
                if (inputStreamByUrl != null) {
                    inputStreamByUrl.close();
                }
                return null;
            }
            try {
                byte[] bArrInputStreamToArray = StreamUtil.inputStreamToArray(inputStreamByUrl);
                if (inputStreamByUrl != null) {
                    inputStreamByUrl.close();
                }
                return bArrInputStreamToArray;
            } finally {
            }
        } catch (ReadingByteLimitException unused) {
            logger.warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.UNABLE_TO_RETRIEVE_RESOURCE_WITH_GIVEN_RESOURCE_SIZE_BYTE_LIMIT, url, Long.valueOf(this.resourceSizeByteLimit)));
            return null;
        }
    }
}
