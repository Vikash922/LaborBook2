package com.itextpdf.signatures;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDate;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.PdfEncodings;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSignature extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfSignature() {
        super(new PdfDictionary());
        put(PdfName.Type, PdfName.Sig);
    }

    public PdfSignature(PdfName pdfName, PdfName pdfName2) {
        this();
        put(PdfName.Filter, pdfName);
        put(PdfName.SubFilter, pdfName2);
    }

    public PdfSignature(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        PdfString asString = getPdfObject().getAsString(PdfName.Contents);
        if (asString != null) {
            asString.markAsUnencryptedObject();
        }
    }

    public PdfName getSubFilter() {
        return getPdfObject().getAsName(PdfName.SubFilter);
    }

    public PdfName getType() {
        return getPdfObject().getAsName(PdfName.Type);
    }

    public void setByteRange(int[] iArr) {
        PdfArray pdfArray = new PdfArray();
        for (int i : iArr) {
            pdfArray.add(new PdfNumber(i));
        }
        put(PdfName.ByteRange, pdfArray);
    }

    public PdfArray getByteRange() {
        return getPdfObject().getAsArray(PdfName.ByteRange);
    }

    public void setContents(byte[] bArr) {
        PdfString hexWriting = new PdfString(bArr).setHexWriting(true);
        hexWriting.markAsUnencryptedObject();
        put(PdfName.Contents, hexWriting);
    }

    public PdfString getContents() {
        return getPdfObject().getAsString(PdfName.Contents);
    }

    public void setCert(byte[] bArr) {
        put(PdfName.Cert, new PdfString(bArr));
    }

    public PdfString getCert() {
        return getPdfObject().getAsString(PdfName.Cert);
    }

    public PdfObject getCertObject() {
        PdfString asString = getPdfObject().getAsString(PdfName.Cert);
        return asString != null ? asString : getPdfObject().getAsArray(PdfName.Cert);
    }

    public void setName(String str) {
        put(PdfName.Name, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public String getName() {
        PdfString asString = getPdfObject().getAsString(PdfName.Name);
        PdfName asName = getPdfObject().getAsName(PdfName.Name);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        if (asName != null) {
            return asName.getValue();
        }
        return null;
    }

    public void setDate(PdfDate pdfDate) {
        put(PdfName.f3032M, pdfDate.getPdfObject());
    }

    public PdfString getDate() {
        return getPdfObject().getAsString(PdfName.f3032M);
    }

    public void setLocation(String str) {
        put(PdfName.Location, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public String getLocation() {
        PdfString asString = getPdfObject().getAsString(PdfName.Location);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    public void setReason(String str) {
        put(PdfName.Reason, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public String getReason() {
        PdfString asString = getPdfObject().getAsString(PdfName.Reason);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    public void setSignatureCreator(String str) {
        if (str != null) {
            getPdfSignatureBuildProperties().setSignatureCreator(str);
        }
    }

    public void setContact(String str) {
        put(PdfName.ContactInfo, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfSignature put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    private PdfSignatureBuildProperties getPdfSignatureBuildProperties() {
        PdfDictionary asDictionary = ((PdfDictionary) getPdfObject()).getAsDictionary(PdfName.Prop_Build);
        if (asDictionary == null) {
            asDictionary = new PdfDictionary();
            put(PdfName.Prop_Build, asDictionary);
        }
        return new PdfSignatureBuildProperties(asDictionary);
    }
}
