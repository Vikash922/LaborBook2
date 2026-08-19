package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfPolyGeomAnnotation extends PdfMarkupAnnotation {
    PdfPolyGeomAnnotation(Rectangle rectangle, float[] fArr) {
        super(rectangle);
        setVertices(fArr);
    }

    protected PdfPolyGeomAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public static PdfPolyGeomAnnotation createPolygon(Rectangle rectangle, float[] fArr) {
        return new PdfPolygonAnnotation(rectangle, fArr);
    }

    public static PdfPolyGeomAnnotation createPolyLine(Rectangle rectangle, float[] fArr) {
        return new PdfPolylineAnnotation(rectangle, fArr);
    }

    public PdfArray getVertices() {
        return getPdfObject().getAsArray(PdfName.Vertices);
    }

    public PdfPolyGeomAnnotation setVertices(PdfArray pdfArray) {
        if (getPdfObject().containsKey(PdfName.Path)) {
            LoggerFactory.getLogger(getClass()).warn(IoLogMessageConstant.PATH_KEY_IS_PRESENT_VERTICES_WILL_BE_IGNORED);
        }
        return (PdfPolyGeomAnnotation) put(PdfName.Vertices, pdfArray);
    }

    public PdfPolyGeomAnnotation setVertices(float[] fArr) {
        if (getPdfObject().containsKey(PdfName.Path)) {
            LoggerFactory.getLogger(getClass()).warn(IoLogMessageConstant.PATH_KEY_IS_PRESENT_VERTICES_WILL_BE_IGNORED);
        }
        return (PdfPolyGeomAnnotation) put(PdfName.Vertices, new PdfArray(fArr));
    }

    public PdfArray getLineEndingStyles() {
        return getPdfObject().getAsArray(PdfName.f3027LE);
    }

    public PdfPolyGeomAnnotation setLineEndingStyles(PdfArray pdfArray) {
        return (PdfPolyGeomAnnotation) put(PdfName.f3027LE, pdfArray);
    }

    public PdfDictionary getMeasure() {
        return getPdfObject().getAsDictionary(PdfName.Measure);
    }

    public PdfPolyGeomAnnotation setMeasure(PdfDictionary pdfDictionary) {
        return (PdfPolyGeomAnnotation) put(PdfName.Measure, pdfDictionary);
    }

    public PdfArray getPath() {
        return getPdfObject().getAsArray(PdfName.Path);
    }

    public PdfPolyGeomAnnotation setPath(PdfArray pdfArray) {
        if (getPdfObject().containsKey(PdfName.Vertices)) {
            LoggerFactory.getLogger(getClass()).error(IoLogMessageConstant.IF_PATH_IS_SET_VERTICES_SHALL_NOT_BE_PRESENT);
        }
        return (PdfPolyGeomAnnotation) put(PdfName.Path, pdfArray);
    }

    public PdfDictionary getBorderStyle() {
        return getPdfObject().getAsDictionary(PdfName.f2978BS);
    }

    public PdfPolyGeomAnnotation setBorderStyle(PdfDictionary pdfDictionary) {
        return (PdfPolyGeomAnnotation) put(PdfName.f2978BS, pdfDictionary);
    }

    public PdfPolyGeomAnnotation setBorderStyle(PdfName pdfName) {
        return setBorderStyle(BorderStyleUtil.setStyle(getBorderStyle(), pdfName));
    }

    public PdfPolyGeomAnnotation setDashPattern(PdfArray pdfArray) {
        return setBorderStyle(BorderStyleUtil.setDashPattern(getBorderStyle(), pdfArray));
    }

    public PdfDictionary getBorderEffect() {
        return getPdfObject().getAsDictionary(PdfName.f2975BE);
    }

    public PdfPolyGeomAnnotation setBorderEffect(PdfDictionary pdfDictionary) {
        return (PdfPolyGeomAnnotation) put(PdfName.f2975BE, pdfDictionary);
    }

    public Color getInteriorColor() {
        return InteriorColorUtil.parseInteriorColor(getPdfObject().getAsArray(PdfName.f3020IC));
    }

    public PdfPolyGeomAnnotation setInteriorColor(PdfArray pdfArray) {
        return (PdfPolyGeomAnnotation) put(PdfName.f3020IC, pdfArray);
    }

    public PdfPolyGeomAnnotation setInteriorColor(float[] fArr) {
        return setInteriorColor(new PdfArray(fArr));
    }
}
