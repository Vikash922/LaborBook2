package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.security.IExternalDecryptionProcess;
import java.security.Key;
import java.security.cert.Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class PubSecHandlerUsingStandard128 extends PubSecHandlerUsingStandard40 {
    public PubSecHandlerUsingStandard128(PdfDictionary pdfDictionary, Certificate[] certificateArr, int[] iArr, boolean z, boolean z2) {
        super(pdfDictionary, certificateArr, iArr, z, z2);
    }

    public PubSecHandlerUsingStandard128(PdfDictionary pdfDictionary, Key key, Certificate certificate, String str, IExternalDecryptionProcess iExternalDecryptionProcess, boolean z) {
        super(pdfDictionary, key, certificate, str, iExternalDecryptionProcess, z);
    }

    @Override // com.itextpdf.kernel.crypto.securityhandler.PubSecHandlerUsingStandard40, com.itextpdf.kernel.crypto.securityhandler.PubKeySecurityHandler
    protected void setPubSecSpecificHandlerDicEntries(PdfDictionary pdfDictionary, boolean z, boolean z2) {
        pdfDictionary.put(PdfName.Filter, PdfName.Adobe_PubSec);
        PdfObject pdfObjectCreateRecipientsArray = createRecipientsArray();
        if (z) {
            pdfDictionary.put(PdfName.f3056R, new PdfNumber(3));
            pdfDictionary.put(PdfName.f3086V, new PdfNumber(2));
            pdfDictionary.put(PdfName.SubFilter, PdfName.Adbe_pkcs7_s4);
            pdfDictionary.put(PdfName.Recipients, pdfObjectCreateRecipientsArray);
            return;
        }
        pdfDictionary.put(PdfName.f3056R, new PdfNumber(4));
        pdfDictionary.put(PdfName.f3086V, new PdfNumber(4));
        pdfDictionary.put(PdfName.SubFilter, PdfName.Adbe_pkcs7_s5);
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.Recipients, pdfObjectCreateRecipientsArray);
        pdfDictionary2.put(PdfName.EncryptMetadata, PdfBoolean.FALSE);
        pdfDictionary2.put(PdfName.CFM, PdfName.f3087V2);
        PdfDictionary pdfDictionary3 = new PdfDictionary();
        pdfDictionary3.put(PdfName.DefaultCryptFilter, pdfDictionary2);
        pdfDictionary.put(PdfName.f2984CF, pdfDictionary3);
        if (z2) {
            pdfDictionary.put(PdfName.EFF, PdfName.DefaultCryptFilter);
            pdfDictionary.put(PdfName.StrF, PdfName.Identity);
            pdfDictionary.put(PdfName.StmF, PdfName.Identity);
        } else {
            pdfDictionary.put(PdfName.StrF, PdfName.DefaultCryptFilter);
            pdfDictionary.put(PdfName.StmF, PdfName.DefaultCryptFilter);
        }
    }
}
