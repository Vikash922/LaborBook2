package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.p017io.source.ByteBuffer;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class SmartModePdfObjectsSerializer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private MessageDigest md5;
    private HashMap<SerializedObjectContent, PdfIndirectReference> serializedContentToObj = new HashMap<>();

    SmartModePdfObjectsSerializer() {
        try {
            this.md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public void saveSerializedObject(SerializedObjectContent serializedObjectContent, PdfIndirectReference pdfIndirectReference) {
        this.serializedContentToObj.put(serializedObjectContent, pdfIndirectReference);
    }

    public PdfIndirectReference getSavedSerializedObject(SerializedObjectContent serializedObjectContent) {
        if (serializedObjectContent != null) {
            return this.serializedContentToObj.get(serializedObjectContent);
        }
        return null;
    }

    public SerializedObjectContent serializeObject(PdfObject pdfObject) {
        if (!pdfObject.isStream() && !pdfObject.isDictionary()) {
            return null;
        }
        PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
        Map<PdfIndirectReference, byte[]> map = indirectReference.getDocument().serializedObjectsCache;
        byte[] byteArray = map.get(indirectReference);
        if (byteArray == null) {
            ByteBuffer byteBuffer = new ByteBuffer();
            try {
                serObject(pdfObject, byteBuffer, 100, map);
                byteArray = byteBuffer.toByteArray();
            } catch (SelfReferenceException unused) {
                return null;
            }
        }
        return new SerializedObjectContent(byteArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void serObject(PdfObject pdfObject, ByteBuffer byteBuffer, int i, Map<PdfIndirectReference, byte[]> map) throws SelfReferenceException {
        PdfIndirectReference pdfIndirectReference;
        if (i <= 0) {
            return;
        }
        if (pdfObject == null) {
            byteBuffer.append("$Lnull");
            return;
        }
        ByteBuffer byteBuffer2 = null;
        Object[] objArr = 0;
        if (pdfObject.isIndirectReference()) {
            PdfIndirectReference pdfIndirectReference2 = (PdfIndirectReference) pdfObject;
            byte[] bArr = map.get(pdfIndirectReference2);
            if (bArr != null) {
                byteBuffer.append(bArr);
                return;
            }
            if (map.keySet().contains(pdfIndirectReference2)) {
                throw new SelfReferenceException();
            }
            map.put(pdfIndirectReference2, null);
            ByteBuffer byteBuffer3 = new ByteBuffer();
            pdfIndirectReference = pdfIndirectReference2;
            pdfObject = pdfIndirectReference2.getRefersTo();
            byteBuffer2 = byteBuffer;
            byteBuffer = byteBuffer3;
        } else {
            pdfIndirectReference = null;
        }
        if (pdfObject.isStream()) {
            serDic((PdfDictionary) pdfObject, byteBuffer, i - 1, map);
            byteBuffer.append("$B");
            if (i > 0) {
                byteBuffer.append(this.md5.digest(((PdfStream) pdfObject).getBytes(false)));
            }
        } else if (pdfObject.isDictionary()) {
            serDic((PdfDictionary) pdfObject, byteBuffer, i - 1, map);
        } else if (pdfObject.isArray()) {
            serArray((PdfArray) pdfObject, byteBuffer, i - 1, map);
        } else if (pdfObject.isString()) {
            byteBuffer.append("$S").append(pdfObject.toString());
        } else if (pdfObject.isName()) {
            byteBuffer.append("$N").append(pdfObject.toString());
        } else {
            byteBuffer.append("$L").append(pdfObject.toString());
        }
        if (byteBuffer2 != null) {
            map.put(pdfIndirectReference, byteBuffer.toByteArray());
            byteBuffer2.append(byteBuffer.getInternalBuffer(), 0, byteBuffer.size());
        }
    }

    private void serDic(PdfDictionary pdfDictionary, ByteBuffer byteBuffer, int i, Map<PdfIndirectReference, byte[]> map) throws SelfReferenceException {
        byteBuffer.append("$D");
        if (i <= 0) {
            return;
        }
        for (PdfName pdfName : pdfDictionary.keySet()) {
            if (!isKeyRefersBack(pdfDictionary, pdfName)) {
                serObject(pdfName, byteBuffer, i, map);
                serObject(pdfDictionary.get(pdfName, false), byteBuffer, i, map);
            }
        }
        byteBuffer.append("$\\D");
    }

    private void serArray(PdfArray pdfArray, ByteBuffer byteBuffer, int i, Map<PdfIndirectReference, byte[]> map) throws SelfReferenceException {
        byteBuffer.append("$A");
        if (i <= 0) {
            return;
        }
        for (int i2 = 0; i2 < pdfArray.size(); i2++) {
            serObject(pdfArray.get(i2, false), byteBuffer, i, map);
        }
        byteBuffer.append("$\\A");
    }

    private boolean isKeyRefersBack(PdfDictionary pdfDictionary, PdfName pdfName) {
        return (pdfName.equals(PdfName.f3047P) && (pdfDictionary.get(pdfName).isIndirectReference() || pdfDictionary.get(pdfName).isDictionary())) || pdfName.equals(PdfName.Parent);
    }

    private static class SelfReferenceException extends Exception {
        private SelfReferenceException() {
        }
    }
}
