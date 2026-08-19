package com.itextpdf.kernel.pdf;

import com.itextpdf.p017io.font.PdfEncodings;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDocumentInfo {
    static final PdfName[] PDF20_DEPRECATED_KEYS = {PdfName.Title, PdfName.Author, PdfName.Subject, PdfName.Keywords, PdfName.Creator, PdfName.Producer, PdfName.Trapped};
    private PdfDictionary infoDictionary;

    PdfDocumentInfo(PdfDictionary pdfDictionary, PdfDocument pdfDocument) {
        this.infoDictionary = pdfDictionary;
        if (pdfDocument.getWriter() != null) {
            this.infoDictionary.makeIndirect(pdfDocument);
        }
    }

    PdfDocumentInfo(PdfDocument pdfDocument) {
        this(new PdfDictionary(), pdfDocument);
    }

    public PdfDocumentInfo setTitle(String str) {
        return put(PdfName.Title, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfDocumentInfo setAuthor(String str) {
        return put(PdfName.Author, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfDocumentInfo setSubject(String str) {
        return put(PdfName.Subject, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfDocumentInfo setKeywords(String str) {
        return put(PdfName.Keywords, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfDocumentInfo setCreator(String str) {
        return put(PdfName.Creator, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfDocumentInfo setProducer(String str) {
        getPdfObject().put(PdfName.Producer, new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    public PdfDocumentInfo setTrapped(PdfName pdfName) {
        return put(PdfName.Trapped, pdfName);
    }

    public String getTitle() {
        return getStringValue(PdfName.Title);
    }

    public String getAuthor() {
        return getStringValue(PdfName.Author);
    }

    public String getSubject() {
        return getStringValue(PdfName.Subject);
    }

    public String getKeywords() {
        return getStringValue(PdfName.Keywords);
    }

    public String getCreator() {
        return getStringValue(PdfName.Creator);
    }

    public String getProducer() {
        return getStringValue(PdfName.Producer);
    }

    public PdfName getTrapped() {
        return this.infoDictionary.getAsName(PdfName.Trapped);
    }

    public PdfDocumentInfo addCreationDate() {
        return put(PdfName.CreationDate, new PdfDate().getPdfObject());
    }

    public PdfDocumentInfo addModDate() {
        return put(PdfName.ModDate, new PdfDate().getPdfObject());
    }

    public void setMoreInfo(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                setMoreInfo(entry.getKey(), entry.getValue());
            }
        }
    }

    public void setMoreInfo(String str, String str2) {
        PdfName pdfName = new PdfName(str);
        if (str2 == null) {
            this.infoDictionary.remove(pdfName);
            this.infoDictionary.setModified();
        } else {
            put(pdfName, new PdfString(str2, PdfEncodings.UNICODE_BIG));
        }
    }

    public String getMoreInfo(String str) {
        return getStringValue(new PdfName(str));
    }

    PdfDictionary getPdfObject() {
        return this.infoDictionary;
    }

    PdfDocumentInfo put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        getPdfObject().setModified();
        return this;
    }

    private String getStringValue(PdfName pdfName) {
        PdfString asString = this.infoDictionary.getAsString(pdfName);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }
}
