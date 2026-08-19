package com.itextpdf.kernel.utils;

import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;

/* JADX INFO: loaded from: classes6.dex */
public final class NullCopyFilter implements ICopyFilter {
    private static final NullCopyFilter INSTANCE = new NullCopyFilter();

    @Override // com.itextpdf.kernel.utils.ICopyFilter
    public boolean shouldProcess(PdfObject pdfObject, PdfName pdfName, PdfObject pdfObject2) {
        return true;
    }

    private NullCopyFilter() {
    }

    public static NullCopyFilter getInstance() {
        return INSTANCE;
    }
}
