package com.itextpdf.kernel.pdf.canvas.parser;

import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.canvas.parser.listener.ITextExtractionStrategy;
import com.itextpdf.kernel.pdf.canvas.parser.listener.LocationTextExtractionStrategy;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class PdfTextExtractor {
    private PdfTextExtractor() {
    }

    public static String getTextFromPage(PdfPage pdfPage, ITextExtractionStrategy iTextExtractionStrategy, Map<String, IContentOperator> map) {
        new PdfCanvasProcessor(iTextExtractionStrategy, map).processPageContent(pdfPage);
        return iTextExtractionStrategy.getResultantText();
    }

    public static String getTextFromPage(PdfPage pdfPage, ITextExtractionStrategy iTextExtractionStrategy) {
        return getTextFromPage(pdfPage, iTextExtractionStrategy, new HashMap());
    }

    public static String getTextFromPage(PdfPage pdfPage) {
        return getTextFromPage(pdfPage, new LocationTextExtractionStrategy());
    }
}
