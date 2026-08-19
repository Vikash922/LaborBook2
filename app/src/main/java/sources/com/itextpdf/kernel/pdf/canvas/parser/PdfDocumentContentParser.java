package com.itextpdf.kernel.pdf.canvas.parser;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDocumentContentParser {
    private final PdfDocument pdfDocument;

    public PdfDocumentContentParser(PdfDocument pdfDocument) {
        this.pdfDocument = pdfDocument;
    }

    public <E extends IEventListener> E processContent(int i, E e, Map<String, IContentOperator> map) {
        new PdfCanvasProcessor(e, map).processPageContent(this.pdfDocument.getPage(i));
        return e;
    }

    public <E extends IEventListener> E processContent(int i, E e) {
        return (E) processContent(i, e, new HashMap());
    }
}
