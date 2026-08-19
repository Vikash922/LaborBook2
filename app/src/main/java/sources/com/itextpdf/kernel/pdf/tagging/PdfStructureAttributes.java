package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.PdfEncodings;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStructureAttributes extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfStructureAttributes(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfStructureAttributes(String str) {
        super(new PdfDictionary());
        getPdfObject().put(PdfName.f3041O, PdfStructTreeRoot.convertRoleToPdfName(str));
    }

    public PdfStructureAttributes(PdfNamespace pdfNamespace) {
        super(new PdfDictionary());
        getPdfObject().put(PdfName.f3041O, PdfName.NSO);
        getPdfObject().put(PdfName.f3040NS, pdfNamespace.getPdfObject());
    }

    public PdfStructureAttributes addEnumAttribute(String str, String str2) {
        getPdfObject().put(PdfStructTreeRoot.convertRoleToPdfName(str), new PdfName(str2));
        setModified();
        return this;
    }

    public PdfStructureAttributes addTextAttribute(String str, String str2) {
        getPdfObject().put(PdfStructTreeRoot.convertRoleToPdfName(str), new PdfString(str2, PdfEncodings.UNICODE_BIG));
        setModified();
        return this;
    }

    public PdfStructureAttributes addIntAttribute(String str, int i) {
        getPdfObject().put(PdfStructTreeRoot.convertRoleToPdfName(str), new PdfNumber(i));
        setModified();
        return this;
    }

    public PdfStructureAttributes addFloatAttribute(String str, float f) {
        getPdfObject().put(PdfStructTreeRoot.convertRoleToPdfName(str), new PdfNumber(f));
        setModified();
        return this;
    }

    public String getAttributeAsEnum(String str) {
        PdfName asName = getPdfObject().getAsName(PdfStructTreeRoot.convertRoleToPdfName(str));
        if (asName != null) {
            return asName.getValue();
        }
        return null;
    }

    public String getAttributeAsText(String str) {
        PdfString asString = getPdfObject().getAsString(PdfStructTreeRoot.convertRoleToPdfName(str));
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    public Integer getAttributeAsInt(String str) {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfStructTreeRoot.convertRoleToPdfName(str));
        if (asNumber != null) {
            return Integer.valueOf(asNumber.intValue());
        }
        return null;
    }

    public Float getAttributeAsFloat(String str) {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfStructTreeRoot.convertRoleToPdfName(str));
        if (asNumber != null) {
            return Float.valueOf(asNumber.floatValue());
        }
        return null;
    }

    public PdfStructureAttributes removeAttribute(String str) {
        getPdfObject().remove(PdfStructTreeRoot.convertRoleToPdfName(str));
        setModified();
        return this;
    }
}
