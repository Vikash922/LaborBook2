package com.itextpdf.svg.converter;

import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.WriterProperties;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.layout.element.Image;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.node.INode;
import com.itextpdf.styledxmlparser.node.impl.jsoup.JsoupXmlParser;
import com.itextpdf.styledxmlparser.resolver.resource.ResourceResolver;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.logs.SvgLogMessageConstant;
import com.itextpdf.svg.processors.ISvgConverterProperties;
import com.itextpdf.svg.processors.ISvgProcessorResult;
import com.itextpdf.svg.processors.impl.DefaultSvgProcessor;
import com.itextpdf.svg.processors.impl.SvgConverterProperties;
import com.itextpdf.svg.processors.impl.SvgProcessorResult;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.renderers.impl.PdfRootSvgNodeRenderer;
import com.itextpdf.svg.utils.SvgCssUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class SvgConverter {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) SvgConverter.class);

    private SvgConverter() {
    }

    private static void checkNull(Object obj) {
        if (obj == null) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.PARAMETER_CANNOT_BE_NULL);
        }
    }

    public static void drawOnDocument(String str, PdfDocument pdfDocument, int i) {
        drawOnDocument(str, pdfDocument, i, 0.0f, 0.0f);
    }

    public static void drawOnDocument(String str, PdfDocument pdfDocument, int i, float f, float f2) {
        checkNull(pdfDocument);
        drawOnPage(str, pdfDocument.getPage(i), f, f2);
    }

    public static void drawOnDocument(String str, PdfDocument pdfDocument, int i, ISvgConverterProperties iSvgConverterProperties) {
        drawOnDocument(str, pdfDocument, i, 0.0f, 0.0f, iSvgConverterProperties);
    }

    public static void drawOnDocument(String str, PdfDocument pdfDocument, int i, float f, float f2, ISvgConverterProperties iSvgConverterProperties) {
        checkNull(pdfDocument);
        drawOnPage(str, pdfDocument.getPage(i), f, f2, iSvgConverterProperties);
    }

    public static void drawOnDocument(InputStream inputStream, PdfDocument pdfDocument, int i) throws IOException {
        drawOnDocument(inputStream, pdfDocument, i, 0.0f, 0.0f);
    }

    public static void drawOnDocument(InputStream inputStream, PdfDocument pdfDocument, int i, float f, float f2) throws IOException {
        checkNull(pdfDocument);
        drawOnPage(inputStream, pdfDocument.getPage(i), f, f2);
    }

    public static void drawOnDocument(InputStream inputStream, PdfDocument pdfDocument, int i, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        drawOnDocument(inputStream, pdfDocument, i, 0.0f, 0.0f, iSvgConverterProperties);
    }

    public static void drawOnDocument(InputStream inputStream, PdfDocument pdfDocument, int i, float f, float f2, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        checkNull(pdfDocument);
        drawOnPage(inputStream, pdfDocument.getPage(i), f, f2, iSvgConverterProperties);
    }

    public static void drawOnPage(String str, PdfPage pdfPage) {
        drawOnPage(str, pdfPage, 0.0f, 0.0f);
    }

    public static void drawOnPage(String str, PdfPage pdfPage, float f, float f2) {
        checkNull(pdfPage);
        drawOnCanvas(str, new PdfCanvas(pdfPage), f, f2);
    }

    public static void drawOnPage(String str, PdfPage pdfPage, ISvgConverterProperties iSvgConverterProperties) {
        drawOnPage(str, pdfPage, 0.0f, 0.0f, iSvgConverterProperties);
    }

    public static void drawOnPage(String str, PdfPage pdfPage, float f, float f2, ISvgConverterProperties iSvgConverterProperties) {
        checkNull(pdfPage);
        drawOnCanvas(str, new PdfCanvas(pdfPage), f, f2, iSvgConverterProperties);
    }

    public static void drawOnPage(InputStream inputStream, PdfPage pdfPage) throws IOException {
        drawOnPage(inputStream, pdfPage, 0.0f, 0.0f);
    }

    public static void drawOnPage(InputStream inputStream, PdfPage pdfPage, float f, float f2) throws IOException {
        checkNull(pdfPage);
        drawOnCanvas(inputStream, new PdfCanvas(pdfPage), f, f2);
    }

    public static void drawOnPage(InputStream inputStream, PdfPage pdfPage, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        drawOnPage(inputStream, pdfPage, 0.0f, 0.0f, iSvgConverterProperties);
    }

    public static void drawOnPage(InputStream inputStream, PdfPage pdfPage, float f, float f2, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        checkNull(pdfPage);
        drawOnCanvas(inputStream, new PdfCanvas(pdfPage), f, f2, iSvgConverterProperties);
    }

    public static void drawOnCanvas(String str, PdfCanvas pdfCanvas) {
        drawOnCanvas(str, pdfCanvas, 0.0f, 0.0f);
    }

    public static void drawOnCanvas(String str, PdfCanvas pdfCanvas, float f, float f2) {
        checkNull(pdfCanvas);
        draw(convertToXObject(str, pdfCanvas.getDocument()), pdfCanvas, f, f2);
    }

    public static void drawOnCanvas(String str, PdfCanvas pdfCanvas, ISvgConverterProperties iSvgConverterProperties) {
        drawOnCanvas(str, pdfCanvas, 0.0f, 0.0f, iSvgConverterProperties);
    }

    public static void drawOnCanvas(String str, PdfCanvas pdfCanvas, float f, float f2, ISvgConverterProperties iSvgConverterProperties) {
        checkNull(pdfCanvas);
        draw(convertToXObject(str, pdfCanvas.getDocument(), iSvgConverterProperties), pdfCanvas, f, f2);
    }

    public static void drawOnCanvas(InputStream inputStream, PdfCanvas pdfCanvas) throws IOException {
        drawOnCanvas(inputStream, pdfCanvas, 0.0f, 0.0f);
    }

    public static void drawOnCanvas(InputStream inputStream, PdfCanvas pdfCanvas, float f, float f2) throws IOException {
        checkNull(pdfCanvas);
        draw(convertToXObject(inputStream, pdfCanvas.getDocument()), pdfCanvas, f, f2);
    }

    public static void drawOnCanvas(InputStream inputStream, PdfCanvas pdfCanvas, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        drawOnCanvas(inputStream, pdfCanvas, 0.0f, 0.0f, iSvgConverterProperties);
    }

    public static void drawOnCanvas(InputStream inputStream, PdfCanvas pdfCanvas, float f, float f2, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        checkNull(pdfCanvas);
        draw(convertToXObject(inputStream, pdfCanvas.getDocument(), iSvgConverterProperties), pdfCanvas, f, f2);
    }

    public static void createPdf(File file, File file2) throws IOException {
        createPdf(file, file2, (ISvgConverterProperties) null, (WriterProperties) null);
    }

    public static void createPdf(File file, File file2, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        createPdf(file, file2, iSvgConverterProperties, (WriterProperties) null);
    }

    public static void createPdf(File file, File file2, WriterProperties writerProperties) throws IOException {
        createPdf(file, file2, (ISvgConverterProperties) null, writerProperties);
    }

    public static void createPdf(File file, File file2, ISvgConverterProperties iSvgConverterProperties, WriterProperties writerProperties) throws IOException {
        if (iSvgConverterProperties == null) {
            iSvgConverterProperties = new SvgConverterProperties().setBaseUri(FileUtil.getParentDirectoryUri(file));
        } else if (iSvgConverterProperties.getBaseUri() == null || iSvgConverterProperties.getBaseUri().isEmpty()) {
            iSvgConverterProperties = convertToSvgConverterProps(iSvgConverterProperties, FileUtil.getParentDirectoryUri(file));
        }
        FileInputStream fileInputStream = new FileInputStream(file.getAbsolutePath());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2.getAbsolutePath());
            try {
                createPdf(fileInputStream, fileOutputStream, iSvgConverterProperties, writerProperties);
                fileOutputStream.close();
                fileInputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private static SvgConverterProperties convertToSvgConverterProps(ISvgConverterProperties iSvgConverterProperties, String str) {
        return new SvgConverterProperties().setBaseUri(str).setMediaDeviceDescription(iSvgConverterProperties.getMediaDeviceDescription()).setFontProvider(iSvgConverterProperties.getFontProvider()).setCharset(iSvgConverterProperties.getCharset()).setRendererFactory(iSvgConverterProperties.getRendererFactory());
    }

    public static void createPdf(InputStream inputStream, OutputStream outputStream) throws IOException {
        createPdf(inputStream, outputStream, (ISvgConverterProperties) null, (WriterProperties) null);
    }

    public static void createPdf(InputStream inputStream, OutputStream outputStream, WriterProperties writerProperties) throws IOException {
        createPdf(inputStream, outputStream, (ISvgConverterProperties) null, writerProperties);
    }

    public static void createPdf(InputStream inputStream, OutputStream outputStream, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        createPdf(inputStream, outputStream, iSvgConverterProperties, (WriterProperties) null);
    }

    public static void createPdf(InputStream inputStream, OutputStream outputStream, ISvgConverterProperties iSvgConverterProperties, WriterProperties writerProperties) throws IOException {
        if (writerProperties == null) {
            writerProperties = new WriterProperties();
        }
        PdfWriter pdfWriter = new PdfWriter(outputStream, writerProperties);
        try {
            PdfDocument pdfDocument = new PdfDocument(pdfWriter);
            try {
                ISvgProcessorResult iSvgProcessorResultProcess = process(parse(inputStream, iSvgConverterProperties), iSvgConverterProperties);
                SvgDrawContext svgDrawContext = new SvgDrawContext(getResourceResolver(iSvgProcessorResultProcess, iSvgConverterProperties), iSvgProcessorResultProcess.getFontProvider());
                if (iSvgProcessorResultProcess instanceof SvgProcessorResult) {
                    svgDrawContext.setCssContext(((SvgProcessorResult) iSvgProcessorResultProcess).getContext().getCssContext());
                }
                svgDrawContext.addNamedObjects(iSvgProcessorResultProcess.getNamedObjects());
                svgDrawContext.setTempFonts(iSvgProcessorResultProcess.getTempFonts());
                ISvgNodeRenderer rootRenderer = iSvgProcessorResultProcess.getRootRenderer();
                checkNull(rootRenderer);
                checkNull(pdfDocument);
                float[] fArrExtractWidthAndHeight = extractWidthAndHeight(rootRenderer);
                pdfDocument.setDefaultPageSize(new PageSize(fArrExtractWidthAndHeight[0], fArrExtractWidthAndHeight[1]));
                draw(convertToXObject(rootRenderer, pdfDocument, svgDrawContext), new PdfCanvas(pdfDocument.addNewPage()));
                pdfDocument.close();
                pdfWriter.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pdfWriter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static PdfFormXObject convertToXObject(String str, PdfDocument pdfDocument) {
        return convertToXObject(str, pdfDocument, (ISvgConverterProperties) null);
    }

    public static PdfFormXObject convertToXObject(String str, PdfDocument pdfDocument, ISvgConverterProperties iSvgConverterProperties) {
        checkNull(str);
        checkNull(pdfDocument);
        return convertToXObject(process(parse(str), iSvgConverterProperties), pdfDocument, iSvgConverterProperties);
    }

    public static PdfFormXObject convertToXObject(InputStream inputStream, PdfDocument pdfDocument, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        checkNull(inputStream);
        checkNull(pdfDocument);
        return convertToXObject(process(parse(inputStream, iSvgConverterProperties), iSvgConverterProperties), pdfDocument, iSvgConverterProperties);
    }

    private static PdfFormXObject convertToXObject(ISvgProcessorResult iSvgProcessorResult, PdfDocument pdfDocument, ISvgConverterProperties iSvgConverterProperties) {
        SvgDrawContext svgDrawContext = new SvgDrawContext(getResourceResolver(iSvgProcessorResult, iSvgConverterProperties), iSvgProcessorResult.getFontProvider());
        if (iSvgProcessorResult instanceof SvgProcessorResult) {
            svgDrawContext.setCssContext(((SvgProcessorResult) iSvgProcessorResult).getContext().getCssContext());
        }
        svgDrawContext.setTempFonts(iSvgProcessorResult.getTempFonts());
        svgDrawContext.addNamedObjects(iSvgProcessorResult.getNamedObjects());
        return convertToXObject(iSvgProcessorResult.getRootRenderer(), pdfDocument, svgDrawContext);
    }

    public static PdfFormXObject convertToXObject(InputStream inputStream, PdfDocument pdfDocument) throws IOException {
        return convertToXObject(inputStream, pdfDocument, (ISvgConverterProperties) null);
    }

    public static Image convertToImage(InputStream inputStream, PdfDocument pdfDocument) throws IOException {
        return new Image(convertToXObject(inputStream, pdfDocument));
    }

    public static Image convertToImage(InputStream inputStream, PdfDocument pdfDocument, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        return new Image(convertToXObject(inputStream, pdfDocument, iSvgConverterProperties));
    }

    private static void draw(PdfFormXObject pdfFormXObject, PdfCanvas pdfCanvas) {
        draw(pdfFormXObject, pdfCanvas, 0.0f, 0.0f);
    }

    static void draw(PdfFormXObject pdfFormXObject, PdfCanvas pdfCanvas, float f, float f2) {
        pdfCanvas.addXObjectAt(pdfFormXObject, f + (pdfFormXObject.getBBox() == null ? 0.0f : pdfFormXObject.getBBox().getAsNumber(0).floatValue()), f2 + (pdfFormXObject.getBBox() != null ? pdfFormXObject.getBBox().getAsNumber(1).floatValue() : 0.0f));
    }

    public static PdfFormXObject convertToXObject(ISvgNodeRenderer iSvgNodeRenderer, PdfDocument pdfDocument) {
        return convertToXObject(iSvgNodeRenderer, pdfDocument, new SvgDrawContext(null, null));
    }

    private static PdfFormXObject convertToXObject(ISvgNodeRenderer iSvgNodeRenderer, PdfDocument pdfDocument, SvgDrawContext svgDrawContext) {
        checkNull(iSvgNodeRenderer);
        checkNull(pdfDocument);
        checkNull(svgDrawContext);
        float[] fArrExtractWidthAndHeight = extractWidthAndHeight(iSvgNodeRenderer);
        PdfFormXObject pdfFormXObject = new PdfFormXObject(new Rectangle(0.0f, 0.0f, fArrExtractWidthAndHeight[0], fArrExtractWidthAndHeight[1]));
        svgDrawContext.pushCanvas(new PdfCanvas(pdfFormXObject, pdfDocument));
        new PdfRootSvgNodeRenderer(iSvgNodeRenderer).draw(svgDrawContext);
        return pdfFormXObject;
    }

    public static ISvgProcessorResult parseAndProcess(InputStream inputStream) {
        return parseAndProcess(inputStream, null);
    }

    public static ISvgProcessorResult parseAndProcess(InputStream inputStream, ISvgConverterProperties iSvgConverterProperties) {
        try {
            return new DefaultSvgProcessor().process(new JsoupXmlParser().parse(inputStream, tryToExtractCharset(iSvgConverterProperties)), iSvgConverterProperties);
        } catch (Exception e) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.FAILED_TO_PARSE_INPUTSTREAM, e);
        }
    }

    public static ISvgProcessorResult process(INode iNode, ISvgConverterProperties iSvgConverterProperties) {
        checkNull(iNode);
        return new DefaultSvgProcessor().process(iNode, iSvgConverterProperties);
    }

    public static INode parse(String str) {
        checkNull(str);
        return new JsoupXmlParser().parse(str);
    }

    public static INode parse(InputStream inputStream) throws IOException {
        checkNull(inputStream);
        return parse(inputStream, null);
    }

    public static INode parse(InputStream inputStream, ISvgConverterProperties iSvgConverterProperties) throws IOException {
        checkNull(inputStream);
        return new JsoupXmlParser().parse(inputStream, tryToExtractCharset(iSvgConverterProperties));
    }

    public static float[] extractWidthAndHeight(ISvgNodeRenderer iSvgNodeRenderer) {
        boolean z;
        float absoluteLength;
        float absoluteLength2;
        String attribute = iSvgNodeRenderer.getAttribute(SvgConstants.Attributes.VIEWBOX);
        if (attribute == null) {
            attribute = iSvgNodeRenderer.getAttribute(SvgConstants.Attributes.VIEWBOX.toLowerCase());
        }
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f};
        if (attribute != null) {
            List<String> listSplitValueList = SvgCssUtils.splitValueList(attribute);
            int size = listSplitValueList.size();
            float[] fArr2 = new float[size];
            for (int i = 0; i < size; i++) {
                fArr2[i] = CssDimensionParsingUtils.parseAbsoluteLength(listSplitValueList.get(i));
            }
            fArr = fArr2;
            z = true;
        } else {
            z = false;
        }
        String attribute2 = iSvgNodeRenderer.getAttribute("width");
        if (attribute2 != null) {
            absoluteLength = CssDimensionParsingUtils.parseAbsoluteLength(attribute2);
        } else if (z) {
            absoluteLength = fArr[2];
        } else {
            LOGGER.warn(SvgLogMessageConstant.MISSING_WIDTH);
            absoluteLength = CssDimensionParsingUtils.parseAbsoluteLength("300px");
        }
        String attribute3 = iSvgNodeRenderer.getAttribute("height");
        if (attribute3 != null) {
            absoluteLength2 = CssDimensionParsingUtils.parseAbsoluteLength(attribute3);
        } else if (z) {
            absoluteLength2 = fArr[3];
        } else {
            LOGGER.warn(SvgLogMessageConstant.MISSING_HEIGHT);
            absoluteLength2 = CssDimensionParsingUtils.parseAbsoluteLength("150px");
        }
        return new float[]{absoluteLength, absoluteLength2};
    }

    static ResourceResolver getResourceResolver(ISvgProcessorResult iSvgProcessorResult, ISvgConverterProperties iSvgConverterProperties) {
        if (iSvgProcessorResult instanceof SvgProcessorResult) {
            return ((SvgProcessorResult) iSvgProcessorResult).getContext().getResourceResolver();
        }
        return createResourceResolver(iSvgConverterProperties);
    }

    private static String tryToExtractCharset(ISvgConverterProperties iSvgConverterProperties) {
        if (iSvgConverterProperties != null) {
            return iSvgConverterProperties.getCharset();
        }
        return null;
    }

    private static ResourceResolver createResourceResolver(ISvgConverterProperties iSvgConverterProperties) {
        if (iSvgConverterProperties == null) {
            return new ResourceResolver(null);
        }
        return new ResourceResolver(iSvgConverterProperties.getBaseUri(), iSvgConverterProperties.getResourceRetriever());
    }
}
