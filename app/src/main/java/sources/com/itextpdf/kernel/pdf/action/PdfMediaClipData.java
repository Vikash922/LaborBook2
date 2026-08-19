package com.itextpdf.kernel.pdf.action;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;

/* JADX INFO: loaded from: classes6.dex */
public class PdfMediaClipData extends PdfObjectWrapper<PdfDictionary> {
    private static final PdfString TEMPACCESS = new PdfString("TEMPACCESS");

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfMediaClipData(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfMediaClipData(String str, PdfFileSpec pdfFileSpec, String str2) {
        this(new PdfDictionary());
        PdfDictionary pdfDictionary = new PdfDictionary();
        markObjectAsIndirect(pdfDictionary);
        pdfDictionary.put(PdfName.f3074TF, TEMPACCESS);
        getPdfObject().put(PdfName.Type, PdfName.MediaClip);
        getPdfObject().put(PdfName.f3065S, PdfName.MCD);
        getPdfObject().put(PdfName.f3037N, new PdfString(MessageFormatUtil.format("Media clip for {0}", str)));
        getPdfObject().put(PdfName.f2990CT, new PdfString(str2));
        getPdfObject().put(PdfName.f3047P, pdfDictionary);
        getPdfObject().put(PdfName.f2992D, pdfFileSpec.getPdfObject());
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }
}
