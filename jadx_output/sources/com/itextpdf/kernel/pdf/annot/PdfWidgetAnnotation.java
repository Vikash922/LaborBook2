package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.action.PdfAction;

/* JADX INFO: loaded from: classes6.dex */
public class PdfWidgetAnnotation extends PdfAnnotation {
    public static final int HIDDEN = 1;
    public static final int HIDDEN_BUT_PRINTABLE = 3;
    public static final int VISIBLE = 4;
    public static final int VISIBLE_BUT_DOES_NOT_PRINT = 2;

    public PdfWidgetAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    protected PdfWidgetAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Widget;
    }

    public PdfWidgetAnnotation setParent(PdfObject pdfObject) {
        return (PdfWidgetAnnotation) put(PdfName.Parent, pdfObject);
    }

    public PdfWidgetAnnotation setHighlightMode(PdfName pdfName) {
        return (PdfWidgetAnnotation) put(PdfName.f3011H, pdfName);
    }

    public PdfName getHighlightMode() {
        return getPdfObject().getAsName(PdfName.f3011H);
    }

    public void releaseFormFieldFromWidgetAnnotation() {
        PdfDictionary pdfObject = getPdfObject();
        PdfDictionary asDictionary = pdfObject.getAsDictionary(PdfName.Parent);
        if (asDictionary != null) {
            PdfArray asArray = asDictionary.getAsArray(PdfName.Kids);
            asArray.remove(pdfObject);
            if (asArray.isEmpty()) {
                asDictionary.remove(PdfName.Kids);
            }
        }
    }

    public PdfWidgetAnnotation setVisibility(int i) {
        if (i == 1) {
            getPdfObject().put(PdfName.f3004F, new PdfNumber(6));
        } else if (i != 2) {
            if (i == 3) {
                getPdfObject().put(PdfName.f3004F, new PdfNumber(36));
            } else {
                getPdfObject().put(PdfName.f3004F, new PdfNumber(4));
            }
        }
        return this;
    }

    public PdfDictionary getAction() {
        return getPdfObject().getAsDictionary(PdfName.f2967A);
    }

    public PdfWidgetAnnotation setAction(PdfAction pdfAction) {
        return (PdfWidgetAnnotation) put(PdfName.f2967A, pdfAction.getPdfObject());
    }

    public PdfDictionary getAdditionalAction() {
        return getPdfObject().getAsDictionary(PdfName.f2968AA);
    }

    public PdfWidgetAnnotation setAdditionalAction(PdfName pdfName, PdfAction pdfAction) {
        PdfAction.setAdditionalAction(this, pdfName, pdfAction);
        return this;
    }

    public PdfDictionary getAppearanceCharacteristics() {
        return getPdfObject().getAsDictionary(PdfName.f3033MK);
    }

    public PdfWidgetAnnotation setAppearanceCharacteristics(PdfDictionary pdfDictionary) {
        return (PdfWidgetAnnotation) put(PdfName.f3033MK, pdfDictionary);
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfWidgetAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfWidgetAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfWidgetAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfWidgetAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }
}
