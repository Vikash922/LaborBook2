package com.itextpdf.kernel.pdf.function;

import com.itextpdf.kernel.pdf.PdfObject;

/* JADX INFO: loaded from: classes6.dex */
@FunctionalInterface
public interface IPdfFunctionFactory {
    IPdfFunction create(PdfObject pdfObject);
}
