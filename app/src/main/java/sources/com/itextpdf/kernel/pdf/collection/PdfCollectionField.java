package com.itextpdf.kernel.pdf.collection;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDate;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCollectionField extends PdfObjectWrapper<PdfDictionary> {
    public static final int CREATIONDATE = 6;
    public static final int DATE = 1;
    public static final int DESC = 4;
    public static final int FILENAME = 3;
    public static final int MODDATE = 5;
    public static final int NUMBER = 2;
    public static final int SIZE = 7;
    public static final int TEXT = 0;
    protected int subType;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    protected PdfCollectionField(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        String value = pdfDictionary.getAsName(PdfName.Subtype).getValue();
        value.hashCode();
        switch (value) {
            case "ModDate":
                this.subType = 5;
                break;
            case "D":
                this.subType = 1;
                break;
            case "F":
                this.subType = 3;
                break;
            case "N":
                this.subType = 2;
                break;
            case "Desc":
                this.subType = 4;
                break;
            case "Size":
                this.subType = 7;
                break;
            case "CreationDate":
                this.subType = 6;
                break;
            default:
                this.subType = 0;
                break;
        }
    }

    public PdfCollectionField(String str, int i) {
        super(new PdfDictionary());
        getPdfObject().put(PdfName.f3037N, new PdfString(str));
        this.subType = i;
        switch (i) {
            case 1:
                getPdfObject().put(PdfName.Subtype, PdfName.f2992D);
                break;
            case 2:
                getPdfObject().put(PdfName.Subtype, PdfName.f3037N);
                break;
            case 3:
                getPdfObject().put(PdfName.Subtype, PdfName.f3004F);
                break;
            case 4:
                getPdfObject().put(PdfName.Subtype, PdfName.Desc);
                break;
            case 5:
                getPdfObject().put(PdfName.Subtype, PdfName.ModDate);
                break;
            case 6:
                getPdfObject().put(PdfName.Subtype, PdfName.CreationDate);
                break;
            case 7:
                getPdfObject().put(PdfName.Subtype, PdfName.Size);
                break;
            default:
                getPdfObject().put(PdfName.Subtype, PdfName.f3065S);
                break;
        }
    }

    public PdfCollectionField setOrder(int i) {
        getPdfObject().put(PdfName.f3041O, new PdfNumber(i));
        return this;
    }

    public PdfNumber getOrder() {
        return getPdfObject().getAsNumber(PdfName.f3041O);
    }

    public PdfCollectionField setVisibility(boolean z) {
        getPdfObject().put(PdfName.f3086V, PdfBoolean.valueOf(z));
        return this;
    }

    public PdfBoolean getVisibility() {
        return getPdfObject().getAsBoolean(PdfName.f3086V);
    }

    public PdfCollectionField setEditable(boolean z) {
        getPdfObject().put(PdfName.f3000E, PdfBoolean.valueOf(z));
        return this;
    }

    public PdfBoolean getEditable() {
        return getPdfObject().getAsBoolean(PdfName.f3000E);
    }

    public PdfObject getValue(String str) {
        int i = this.subType;
        if (i == 0) {
            return new PdfString(str);
        }
        if (i == 1) {
            return new PdfDate(PdfDate.decode(str)).getPdfObject();
        }
        if (i == 2) {
            return new PdfNumber(Double.parseDouble(str.trim()));
        }
        throw new PdfException(KernelExceptionMessageConstant.UNACCEPTABLE_FIELD_VALUE).setMessageParams(str, getPdfObject().getAsString(PdfName.f3037N).getValue());
    }
}
