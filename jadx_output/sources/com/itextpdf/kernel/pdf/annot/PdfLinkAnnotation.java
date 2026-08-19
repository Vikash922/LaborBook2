package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.kernel.pdf.navigation.PdfDestination;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfLinkAnnotation extends PdfAnnotation {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) PdfLinkAnnotation.class);
    public static final PdfName None = PdfName.f3037N;
    public static final PdfName Invert = PdfName.f3019I;
    public static final PdfName Outline = PdfName.f3041O;
    public static final PdfName Push = PdfName.f3047P;

    protected PdfLinkAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfLinkAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Link;
    }

    public PdfObject getDestinationObject() {
        return getPdfObject().get(PdfName.Dest);
    }

    public PdfLinkAnnotation setDestination(PdfObject pdfObject) {
        if (getPdfObject().containsKey(PdfName.f2967A)) {
            getPdfObject().remove(PdfName.f2967A);
            logger.warn(IoLogMessageConstant.DESTINATION_NOT_PERMITTED_WHEN_ACTION_IS_SET);
        }
        if (pdfObject.isArray() && ((PdfArray) pdfObject).get(0).isNumber()) {
            LoggerFactory.getLogger((Class<?>) PdfLinkAnnotation.class).warn(IoLogMessageConstant.INVALID_DESTINATION_TYPE);
        }
        return (PdfLinkAnnotation) put(PdfName.Dest, pdfObject);
    }

    public PdfLinkAnnotation setDestination(PdfDestination pdfDestination) {
        return setDestination(pdfDestination.getPdfObject());
    }

    public PdfLinkAnnotation removeDestination() {
        getPdfObject().remove(PdfName.Dest);
        return this;
    }

    public PdfDictionary getAction() {
        return getPdfObject().getAsDictionary(PdfName.f2967A);
    }

    public PdfLinkAnnotation setAction(PdfDictionary pdfDictionary) {
        return (PdfLinkAnnotation) put(PdfName.f2967A, pdfDictionary);
    }

    public PdfLinkAnnotation setAction(PdfAction pdfAction) {
        if (getDestinationObject() != null) {
            removeDestination();
            logger.warn(IoLogMessageConstant.ACTION_WAS_SET_TO_LINK_ANNOTATION_WITH_DESTINATION);
        }
        return (PdfLinkAnnotation) put(PdfName.f2967A, pdfAction.getPdfObject());
    }

    public PdfLinkAnnotation removeAction() {
        getPdfObject().remove(PdfName.f2967A);
        return this;
    }

    public PdfName getHighlightMode() {
        return getPdfObject().getAsName(PdfName.f3011H);
    }

    public PdfLinkAnnotation setHighlightMode(PdfName pdfName) {
        return (PdfLinkAnnotation) put(PdfName.f3011H, pdfName);
    }

    public PdfDictionary getUriActionObject() {
        return getPdfObject().getAsDictionary(PdfName.f3048PA);
    }

    public PdfLinkAnnotation setUriAction(PdfDictionary pdfDictionary) {
        return (PdfLinkAnnotation) put(PdfName.f3048PA, pdfDictionary);
    }

    public PdfLinkAnnotation setUriAction(PdfAction pdfAction) {
        return (PdfLinkAnnotation) put(PdfName.f3048PA, pdfAction.getPdfObject());
    }

    public PdfArray getQuadPoints() {
        return getPdfObject().getAsArray(PdfName.QuadPoints);
    }

    public PdfLinkAnnotation setQuadPoints(PdfArray pdfArray) {
        return (PdfLinkAnnotation) put(PdfName.QuadPoints, pdfArray);
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfLinkAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfLinkAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfLinkAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfLinkAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }
}
