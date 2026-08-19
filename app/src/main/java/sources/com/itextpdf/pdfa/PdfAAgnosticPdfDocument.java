package com.itextpdf.pdfa;

import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.StampingProperties;

/* JADX INFO: loaded from: classes6.dex */
public class PdfAAgnosticPdfDocument extends PdfADocument {
    public PdfAAgnosticPdfDocument(PdfReader pdfReader, PdfWriter pdfWriter) {
        this(pdfReader, pdfWriter, new StampingProperties());
    }

    public PdfAAgnosticPdfDocument(PdfReader pdfReader, PdfWriter pdfWriter, StampingProperties stampingProperties) {
        super(pdfReader, pdfWriter, stampingProperties, true);
    }
}
