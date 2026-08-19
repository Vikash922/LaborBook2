package com.itextpdf.kernel.font;

import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfStream;

/* JADX INFO: loaded from: classes6.dex */
interface IDocFontProgram {
    PdfStream getFontFile();

    PdfName getFontFileName();

    PdfName getSubtype();
}
