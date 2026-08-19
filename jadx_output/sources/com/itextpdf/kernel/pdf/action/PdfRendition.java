package com.itextpdf.kernel.pdf.action;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;

/* JADX INFO: loaded from: classes6.dex */
public class PdfRendition extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfRendition(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfRendition(String str, PdfFileSpec pdfFileSpec, String str2) {
        this(new PdfDictionary());
        getPdfObject().put(PdfName.f3065S, PdfName.f3036MR);
        getPdfObject().put(PdfName.f3037N, new PdfString(MessageFormatUtil.format("Rendition for {0}", str)));
        getPdfObject().put(PdfName.f2980C, new PdfMediaClipData(str, pdfFileSpec, str2).getPdfObject());
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }
}
