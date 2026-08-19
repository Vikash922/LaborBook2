package com.itextpdf.kernel.pdf.canvas;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.tagging.PdfMcr;

/* JADX INFO: loaded from: classes6.dex */
public class CanvasTag {
    protected PdfDictionary properties;
    protected PdfName role;

    public CanvasTag(PdfName pdfName) {
        this.role = pdfName;
    }

    public CanvasTag(PdfName pdfName, int i) {
        this.role = pdfName;
        addProperty(PdfName.MCID, new PdfNumber(i));
    }

    public CanvasTag(PdfMcr pdfMcr) {
        this(pdfMcr.getRole(), pdfMcr.getMcid());
    }

    public PdfName getRole() {
        return this.role;
    }

    public int getMcid() {
        PdfDictionary pdfDictionary = this.properties;
        int iIntValue = pdfDictionary != null ? pdfDictionary.getAsInt(PdfName.MCID).intValue() : -1;
        if (iIntValue != -1) {
            return iIntValue;
        }
        throw new IllegalStateException("CanvasTag has no MCID");
    }

    public boolean hasMcid() {
        PdfDictionary pdfDictionary = this.properties;
        return pdfDictionary != null && pdfDictionary.containsKey(PdfName.MCID);
    }

    public CanvasTag setProperties(PdfDictionary pdfDictionary) {
        this.properties = pdfDictionary;
        return this;
    }

    public CanvasTag addProperty(PdfName pdfName, PdfObject pdfObject) {
        ensurePropertiesInit();
        this.properties.put(pdfName, pdfObject);
        return this;
    }

    public CanvasTag removeProperty(PdfName pdfName) {
        PdfDictionary pdfDictionary = this.properties;
        if (pdfDictionary != null) {
            pdfDictionary.remove(pdfName);
        }
        return this;
    }

    public PdfObject getProperty(PdfName pdfName) {
        PdfDictionary pdfDictionary = this.properties;
        if (pdfDictionary == null) {
            return null;
        }
        return pdfDictionary.get(pdfName);
    }

    public PdfDictionary getProperties() {
        return this.properties;
    }

    public String getActualText() {
        return getPropertyAsString(PdfName.ActualText);
    }

    public String getExpansionText() {
        return getPropertyAsString(PdfName.f3000E);
    }

    private String getPropertyAsString(PdfName pdfName) {
        PdfDictionary pdfDictionary = this.properties;
        PdfString asString = pdfDictionary != null ? pdfDictionary.getAsString(pdfName) : null;
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    private void ensurePropertiesInit() {
        if (this.properties == null) {
            this.properties = new PdfDictionary();
        }
    }
}
