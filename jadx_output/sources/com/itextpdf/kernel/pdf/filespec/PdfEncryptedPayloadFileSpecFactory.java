package com.itextpdf.kernel.pdf.filespec;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfEncryptedPayload;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.IOException;
import java.io.InputStream;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfEncryptedPayloadFileSpecFactory {
    public static PdfFileSpec create(PdfDocument pdfDocument, byte[] bArr, PdfEncryptedPayload pdfEncryptedPayload, PdfName pdfName, PdfDictionary pdfDictionary) {
        return addEncryptedPayloadDictionary(PdfFileSpec.createEmbeddedFileSpec(pdfDocument, bArr, generateDescription(pdfEncryptedPayload), generateFileDisplay(pdfEncryptedPayload), pdfName, pdfDictionary, PdfName.EncryptedPayload), pdfEncryptedPayload);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, byte[] bArr, PdfEncryptedPayload pdfEncryptedPayload, PdfDictionary pdfDictionary) {
        return create(pdfDocument, bArr, pdfEncryptedPayload, (PdfName) null, pdfDictionary);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, byte[] bArr, PdfEncryptedPayload pdfEncryptedPayload) {
        return create(pdfDocument, bArr, pdfEncryptedPayload, (PdfName) null, (PdfDictionary) null);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, String str, PdfEncryptedPayload pdfEncryptedPayload, PdfName pdfName, PdfDictionary pdfDictionary) throws IOException {
        return addEncryptedPayloadDictionary(PdfFileSpec.createEmbeddedFileSpec(pdfDocument, str, generateDescription(pdfEncryptedPayload), generateFileDisplay(pdfEncryptedPayload), pdfName, pdfDictionary, PdfName.EncryptedPayload), pdfEncryptedPayload);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, String str, PdfEncryptedPayload pdfEncryptedPayload, PdfName pdfName) throws IOException {
        return create(pdfDocument, str, pdfEncryptedPayload, pdfName, (PdfDictionary) null);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, String str, PdfEncryptedPayload pdfEncryptedPayload) throws IOException {
        return create(pdfDocument, str, pdfEncryptedPayload, (PdfName) null, (PdfDictionary) null);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, InputStream inputStream, PdfEncryptedPayload pdfEncryptedPayload, PdfName pdfName, PdfDictionary pdfDictionary) {
        return addEncryptedPayloadDictionary(PdfFileSpec.createEmbeddedFileSpec(pdfDocument, inputStream, generateDescription(pdfEncryptedPayload), generateFileDisplay(pdfEncryptedPayload), pdfName, pdfDictionary, PdfName.EncryptedPayload), pdfEncryptedPayload);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, InputStream inputStream, PdfEncryptedPayload pdfEncryptedPayload, PdfName pdfName) {
        return create(pdfDocument, inputStream, pdfEncryptedPayload, pdfName, (PdfDictionary) null);
    }

    public static PdfFileSpec create(PdfDocument pdfDocument, InputStream inputStream, PdfEncryptedPayload pdfEncryptedPayload) {
        return create(pdfDocument, inputStream, pdfEncryptedPayload, (PdfName) null, (PdfDictionary) null);
    }

    public static PdfFileSpec wrap(PdfDictionary pdfDictionary) {
        if (!PdfName.EncryptedPayload.equals(pdfDictionary.getAsName(PdfName.AFRelationship))) {
            LoggerFactory.getLogger((Class<?>) PdfEncryptedPayloadFileSpecFactory.class).error(IoLogMessageConstant.f2892xfdc6407c);
        }
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f3001EF);
        if (asDictionary == null || (asDictionary.getAsStream(PdfName.f3004F) == null && asDictionary.getAsStream(PdfName.f3085UF) == null)) {
            throw new PdfException(KernelExceptionMessageConstant.ENCRYPTED_PAYLOAD_FILE_SPEC_SHALL_HAVE_EF_DICTIONARY);
        }
        if (!PdfName.Filespec.equals(pdfDictionary.getAsName(PdfName.Type))) {
            throw new PdfException(KernelExceptionMessageConstant.ENCRYPTED_PAYLOAD_FILE_SPEC_SHALL_HAVE_TYPE_EQUAL_TO_FILESPEC);
        }
        if (!pdfDictionary.isIndirect()) {
            throw new PdfException(KernelExceptionMessageConstant.ENCRYPTED_PAYLOAD_FILE_SPEC_SHALL_BE_INDIRECT);
        }
        PdfFileSpec pdfFileSpecWrapFileSpecObject = PdfFileSpec.wrapFileSpecObject(pdfDictionary);
        if (PdfEncryptedPayload.extractFrom(pdfFileSpecWrapFileSpecObject) != null) {
            return pdfFileSpecWrapFileSpecObject;
        }
        throw new PdfException(KernelExceptionMessageConstant.f2918x55092f54);
    }

    public static String generateDescription(PdfEncryptedPayload pdfEncryptedPayload) {
        String str = "This embedded file is encrypted using " + pdfEncryptedPayload.getSubtype().getValue();
        PdfName version = pdfEncryptedPayload.getVersion();
        return version != null ? str + " , version: " + version.getValue() : str;
    }

    public static String generateFileDisplay(PdfEncryptedPayload pdfEncryptedPayload) {
        return pdfEncryptedPayload.getSubtype().getValue() + "Protected.pdf";
    }

    private static PdfFileSpec addEncryptedPayloadDictionary(PdfFileSpec pdfFileSpec, PdfEncryptedPayload pdfEncryptedPayload) {
        ((PdfDictionary) pdfFileSpec.getPdfObject()).put(PdfName.f3002EP, pdfEncryptedPayload.getPdfObject());
        return pdfFileSpec;
    }
}
