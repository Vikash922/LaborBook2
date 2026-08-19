package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;

/* JADX INFO: loaded from: classes6.dex */
public class TagReference {
    protected int insertIndex;
    protected PdfDictionary properties;
    protected PdfStructElem referencedTag;
    protected PdfName role;
    protected TagTreePointer tagPointer;

    protected TagReference(PdfStructElem pdfStructElem, TagTreePointer tagTreePointer, int i) {
        this.role = pdfStructElem.getRole();
        this.referencedTag = pdfStructElem;
        this.tagPointer = tagTreePointer;
        this.insertIndex = i;
    }

    public PdfName getRole() {
        return this.role;
    }

    public int createNextMcid() {
        return this.tagPointer.createNextMcidForStructElem(this.referencedTag, this.insertIndex);
    }

    public TagReference addProperty(PdfName pdfName, PdfObject pdfObject) {
        if (this.properties == null) {
            this.properties = new PdfDictionary();
        }
        this.properties.put(pdfName, pdfObject);
        return this;
    }

    public TagReference removeProperty(PdfName pdfName) {
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
}
