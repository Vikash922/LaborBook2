package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;

/* JADX INFO: loaded from: classes6.dex */
public class PdfEncryptedPayload extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfEncryptedPayload(String str) {
        this(new PdfDictionary());
        getPdfObject().put(PdfName.Type, PdfName.EncryptedPayload);
        setSubtype(str);
    }

    private PdfEncryptedPayload(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public static PdfEncryptedPayload extractFrom(PdfFileSpec pdfFileSpec) {
        if (pdfFileSpec == null || !pdfFileSpec.getPdfObject().isDictionary()) {
            return null;
        }
        return wrap(((PdfDictionary) pdfFileSpec.getPdfObject()).getAsDictionary(PdfName.f3002EP));
    }

    public static PdfEncryptedPayload wrap(PdfDictionary pdfDictionary) {
        PdfName asName = pdfDictionary.getAsName(PdfName.Type);
        if (asName != null && !asName.equals(PdfName.EncryptedPayload)) {
            throw new PdfException(KernelExceptionMessageConstant.f2919x3b00c936);
        }
        if (pdfDictionary.getAsName(PdfName.Subtype) == null) {
            throw new PdfException(KernelExceptionMessageConstant.ENCRYPTED_PAYLOAD_SHALL_HAVE_SUBTYPE);
        }
        return new PdfEncryptedPayload(pdfDictionary);
    }

    public PdfName getSubtype() {
        return getPdfObject().getAsName(PdfName.Subtype);
    }

    public PdfEncryptedPayload setSubtype(String str) {
        return setSubtype(new PdfName(str));
    }

    public PdfEncryptedPayload setSubtype(PdfName pdfName) {
        setModified();
        getPdfObject().put(PdfName.Subtype, pdfName);
        return this;
    }

    public PdfName getVersion() {
        return getPdfObject().getAsName(PdfName.Version);
    }

    public PdfEncryptedPayload setVersion(String str) {
        return setVersion(new PdfName(str));
    }

    public PdfEncryptedPayload setVersion(PdfName pdfName) {
        setModified();
        getPdfObject().put(PdfName.Version, pdfName);
        return this;
    }
}
