package com.itextpdf.kernel.pdf.action;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfAnnotationAdditionalActions extends PdfObjectWrapper<PdfDictionary> {
    private static final PdfName[] Events = {PdfName.f3000E, PdfName.f3095X, PdfName.f2992D, PdfName.f3083U, PdfName.f3010Fo, PdfName.f2979Bl, PdfName.f3051PO, PdfName.f3049PC, PdfName.f3053PV, PdfName.f3050PI};

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfAnnotationAdditionalActions(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfAction getOnEnter() {
        return getPdfActionForEvent(PdfName.f3000E);
    }

    public void setOnEnter(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3000E, pdfAction);
    }

    public PdfAction getOnExit() {
        return getPdfActionForEvent(PdfName.f3095X);
    }

    public void setOnExit(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3095X, pdfAction);
    }

    public PdfAction getOnMouseDown() {
        return getPdfActionForEvent(PdfName.f2992D);
    }

    public void setOnMouseDown(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f2992D, pdfAction);
    }

    public PdfAction getOnMouseUp() {
        return getPdfActionForEvent(PdfName.f3083U);
    }

    public void setOnMouseUp(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3083U, pdfAction);
    }

    public PdfAction getOnFocus() {
        return getPdfActionForEvent(PdfName.f3010Fo);
    }

    public void setOnFocus(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3010Fo, pdfAction);
    }

    public PdfAction getOnLostFocus() {
        return getPdfActionForEvent(PdfName.f2979Bl);
    }

    public void setOnLostFocus(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f2979Bl, pdfAction);
    }

    public PdfAction getOnPageOpened() {
        return getPdfActionForEvent(PdfName.f3051PO);
    }

    public void setOnPageOpened(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3051PO, pdfAction);
    }

    public PdfAction getOnPageClosed() {
        return getPdfActionForEvent(PdfName.f3049PC);
    }

    public void setOnPageClosed(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3049PC, pdfAction);
    }

    public PdfAction getOnPageVisible() {
        return getPdfActionForEvent(PdfName.f3053PV);
    }

    public void setOnPageVisible(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3053PV, pdfAction);
    }

    public PdfAction getOnPageLostView() {
        return getPdfActionForEvent(PdfName.f3050PI);
    }

    public void setOnPageLostView(PdfAction pdfAction) {
        setPdfActionForEvent(PdfName.f3050PI, pdfAction);
    }

    public List<PdfAction> getAllKnownActions() {
        ArrayList arrayList = new ArrayList();
        for (PdfName pdfName : Events) {
            PdfAction pdfActionForEvent = getPdfActionForEvent(pdfName);
            if (pdfActionForEvent != null) {
                arrayList.add(pdfActionForEvent);
            }
        }
        return arrayList;
    }

    public PdfAction getPdfActionForEvent(PdfName pdfName) {
        PdfObject pdfObject = getPdfObject().get(pdfName);
        if (pdfObject == null || !pdfObject.isDictionary()) {
            return null;
        }
        return new PdfAction((PdfDictionary) pdfObject);
    }

    public void setPdfActionForEvent(PdfName pdfName, PdfAction pdfAction) {
        if (pdfAction == null) {
            getPdfObject().remove(pdfName);
        } else {
            getPdfObject().put(pdfName, pdfAction.getPdfObject());
        }
        setModified();
    }
}
