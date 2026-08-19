package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfMarkupAnnotation extends PdfAnnotation {
    protected PdfAnnotation inReplyTo;
    protected PdfPopupAnnotation popup;

    protected PdfMarkupAnnotation(Rectangle rectangle) {
        super(rectangle);
        this.inReplyTo = null;
        this.popup = null;
    }

    protected PdfMarkupAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.inReplyTo = null;
        this.popup = null;
    }

    public PdfString getText() {
        return getPdfObject().getAsString(PdfName.f3071T);
    }

    public PdfMarkupAnnotation setText(PdfString pdfString) {
        return (PdfMarkupAnnotation) put(PdfName.f3071T, pdfString);
    }

    public PdfNumber getOpacity() {
        return getPdfObject().getAsNumber(PdfName.f2983CA);
    }

    public PdfMarkupAnnotation setOpacity(PdfNumber pdfNumber) {
        return (PdfMarkupAnnotation) put(PdfName.f2983CA, pdfNumber);
    }

    public PdfObject getRichText() {
        return getPdfObject().get(PdfName.f3058RC);
    }

    public PdfMarkupAnnotation setRichText(PdfObject pdfObject) {
        return (PdfMarkupAnnotation) put(PdfName.f3058RC, pdfObject);
    }

    public PdfString getCreationDate() {
        return getPdfObject().getAsString(PdfName.CreationDate);
    }

    public PdfMarkupAnnotation setCreationDate(PdfString pdfString) {
        return (PdfMarkupAnnotation) put(PdfName.CreationDate, pdfString);
    }

    public PdfDictionary getInReplyToObject() {
        return getPdfObject().getAsDictionary(PdfName.IRT);
    }

    public PdfAnnotation getInReplyTo() {
        if (this.inReplyTo == null) {
            this.inReplyTo = makeAnnotation(getInReplyToObject());
        }
        return this.inReplyTo;
    }

    public PdfMarkupAnnotation setInReplyTo(PdfAnnotation pdfAnnotation) {
        this.inReplyTo = pdfAnnotation;
        return (PdfMarkupAnnotation) put(PdfName.IRT, pdfAnnotation.getPdfObject());
    }

    public PdfMarkupAnnotation setPopup(PdfPopupAnnotation pdfPopupAnnotation) {
        this.popup = pdfPopupAnnotation;
        pdfPopupAnnotation.setParent(this);
        return (PdfMarkupAnnotation) put(PdfName.Popup, pdfPopupAnnotation.getPdfObject());
    }

    public PdfDictionary getPopupObject() {
        return getPdfObject().getAsDictionary(PdfName.Popup);
    }

    public PdfPopupAnnotation getPopup() {
        PdfDictionary popupObject;
        if (this.popup == null && (popupObject = getPopupObject()) != null) {
            PdfAnnotation pdfAnnotationMakeAnnotation = makeAnnotation(popupObject);
            if (!(pdfAnnotationMakeAnnotation instanceof PdfPopupAnnotation)) {
                LoggerFactory.getLogger((Class<?>) PdfMarkupAnnotation.class).warn(IoLogMessageConstant.POPUP_ENTRY_IS_NOT_POPUP_ANNOTATION);
                return null;
            }
            this.popup = (PdfPopupAnnotation) pdfAnnotationMakeAnnotation;
        }
        return this.popup;
    }

    public PdfString getSubject() {
        return getPdfObject().getAsString(PdfName.Subj);
    }

    public PdfMarkupAnnotation setSubject(PdfString pdfString) {
        return (PdfMarkupAnnotation) put(PdfName.Subj, pdfString);
    }

    public PdfName getReplyType() {
        return getPdfObject().getAsName(PdfName.f3063RT);
    }

    public PdfMarkupAnnotation setReplyType(PdfName pdfName) {
        return (PdfMarkupAnnotation) put(PdfName.f3063RT, pdfName);
    }

    public PdfName getIntent() {
        return getPdfObject().getAsName(PdfName.f3022IT);
    }

    public PdfMarkupAnnotation setIntent(PdfName pdfName) {
        return (PdfMarkupAnnotation) put(PdfName.f3022IT, pdfName);
    }

    public PdfDictionary getExternalData() {
        return getPdfObject().getAsDictionary(PdfName.ExData);
    }

    public PdfMarkupAnnotation setExternalData(PdfDictionary pdfDictionary) {
        return (PdfMarkupAnnotation) put(PdfName.ExData, pdfDictionary);
    }
}
