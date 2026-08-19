package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class PdfOutputIntent extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfOutputIntent(String str, String str2, String str3, String str4, InputStream inputStream) {
        super(new PdfDictionary());
        setOutputIntentSubtype(PdfName.GTS_PDFA1);
        getPdfObject().put(PdfName.Type, PdfName.OutputIntent);
        if (str2 != null) {
            setOutputCondition(str2);
        }
        if (str != null) {
            setOutputConditionIdentifier(str);
        }
        if (str3 != null) {
            setRegistryName(str3);
        }
        if (str4 != null) {
            setInfo(str4);
        }
        if (inputStream != null) {
            setDestOutputProfile(inputStream);
        }
    }

    public PdfOutputIntent(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfStream getDestOutputProfile() {
        return getPdfObject().getAsStream(PdfName.DestOutputProfile);
    }

    public void setDestOutputProfile(InputStream inputStream) {
        getPdfObject().put(PdfName.DestOutputProfile, PdfCieBasedCs.IccBased.getIccProfileStream(inputStream));
    }

    public PdfString getInfo() {
        return getPdfObject().getAsString(PdfName.Info);
    }

    public void setInfo(String str) {
        getPdfObject().put(PdfName.Info, new PdfString(str));
    }

    public PdfString getRegistryName() {
        return getPdfObject().getAsString(PdfName.RegistryName);
    }

    public void setRegistryName(String str) {
        getPdfObject().put(PdfName.RegistryName, new PdfString(str));
    }

    public PdfString getOutputConditionIdentifier() {
        return getPdfObject().getAsString(PdfName.OutputConditionIdentifier);
    }

    public void setOutputConditionIdentifier(String str) {
        getPdfObject().put(PdfName.OutputConditionIdentifier, new PdfString(str));
    }

    public PdfString getOutputCondition() {
        return getPdfObject().getAsString(PdfName.OutputCondition);
    }

    public void setOutputCondition(String str) {
        getPdfObject().put(PdfName.OutputCondition, new PdfString(str));
    }

    public PdfName getOutputIntentSubtype() {
        return getPdfObject().getAsName(PdfName.f3065S);
    }

    public void setOutputIntentSubtype(PdfName pdfName) {
        getPdfObject().put(PdfName.f3065S, pdfName);
    }
}
