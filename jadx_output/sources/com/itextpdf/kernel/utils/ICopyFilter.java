package com.itextpdf.kernel.utils;

import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;

/* JADX INFO: loaded from: classes6.dex */
public interface ICopyFilter {
    boolean shouldProcess(PdfObject pdfObject, PdfName pdfName, PdfObject pdfObject2);
}
