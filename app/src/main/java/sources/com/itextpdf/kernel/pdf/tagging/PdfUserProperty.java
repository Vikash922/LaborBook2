package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.PdfEncodings;

/* JADX INFO: loaded from: classes6.dex */
public class PdfUserProperty extends PdfObjectWrapper<PdfDictionary> {

    public enum ValueType {
        UNKNOWN,
        TEXT,
        NUMBER,
        BOOLEAN
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfUserProperty(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfUserProperty(String str, String str2) {
        super(new PdfDictionary());
        setName(str);
        setValue(str2);
    }

    public PdfUserProperty(String str, int i) {
        super(new PdfDictionary());
        setName(str);
        setValue(i);
    }

    public PdfUserProperty(String str, float f) {
        super(new PdfDictionary());
        setName(str);
        setValue(f);
    }

    public PdfUserProperty(String str, boolean z) {
        super(new PdfDictionary());
        setName(str);
        setValue(z);
    }

    public String getName() {
        return getPdfObject().getAsString(PdfName.f3037N).toUnicodeString();
    }

    public PdfUserProperty setName(String str) {
        getPdfObject().put(PdfName.f3037N, new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    public ValueType getValueType() {
        PdfObject pdfObject = getPdfObject().get(PdfName.f3086V);
        if (pdfObject == null) {
            return ValueType.UNKNOWN;
        }
        byte type = pdfObject.getType();
        if (type == 2) {
            return ValueType.BOOLEAN;
        }
        if (type == 8) {
            return ValueType.NUMBER;
        }
        if (type == 10) {
            return ValueType.TEXT;
        }
        return ValueType.UNKNOWN;
    }

    public PdfUserProperty setValue(String str) {
        getPdfObject().put(PdfName.f3086V, new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    public PdfUserProperty setValue(int i) {
        getPdfObject().put(PdfName.f3086V, new PdfNumber(i));
        return this;
    }

    public PdfUserProperty setValue(float f) {
        getPdfObject().put(PdfName.f3086V, new PdfNumber(f));
        return this;
    }

    public PdfUserProperty setValue(boolean z) {
        getPdfObject().put(PdfName.f3086V, new PdfBoolean(z));
        return this;
    }

    public String getValueAsText() {
        PdfString asString = getPdfObject().getAsString(PdfName.f3086V);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    public Float getValueAsFloat() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f3086V);
        if (asNumber != null) {
            return Float.valueOf(asNumber.floatValue());
        }
        return null;
    }

    public Boolean getValueAsBool() {
        return getPdfObject().getAsBool(PdfName.f3086V);
    }

    public String getValueFormattedRepresentation() {
        PdfString asString = getPdfObject().getAsString(PdfName.f3004F);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    public PdfUserProperty setValueFormattedRepresentation(String str) {
        getPdfObject().put(PdfName.f3004F, new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    public Boolean isHidden() {
        return getPdfObject().getAsBool(PdfName.f3011H);
    }

    public PdfUserProperty setHidden(boolean z) {
        getPdfObject().put(PdfName.f3011H, new PdfBoolean(z));
        return this;
    }
}
