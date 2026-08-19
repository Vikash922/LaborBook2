package com.itextpdf.signatures;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import java.io.InputStream;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes6.dex */
public class ExternalBlankSignatureContainer implements IExternalSignatureContainer {
    private PdfDictionary sigDic;

    public ExternalBlankSignatureContainer(PdfDictionary pdfDictionary) {
        this.sigDic = pdfDictionary;
    }

    public ExternalBlankSignatureContainer(PdfName pdfName, PdfName pdfName2) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        this.sigDic = pdfDictionary;
        pdfDictionary.put(PdfName.Filter, pdfName);
        this.sigDic.put(PdfName.SubFilter, pdfName2);
    }

    @Override // com.itextpdf.signatures.IExternalSignatureContainer
    public byte[] sign(InputStream inputStream) throws GeneralSecurityException {
        return new byte[0];
    }

    @Override // com.itextpdf.signatures.IExternalSignatureContainer
    public void modifySigningDictionary(PdfDictionary pdfDictionary) {
        pdfDictionary.putAll(this.sigDic);
    }
}
