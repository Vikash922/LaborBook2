package com.itextpdf.kernel.pdf.extgstate;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfExtGState extends PdfObjectWrapper<PdfDictionary> {
    public static PdfName BM_NORMAL = PdfName.Normal;
    public static PdfName BM_MULTIPLY = PdfName.Multiply;
    public static PdfName BM_SCREEN = PdfName.Screen;
    public static PdfName BM_OVERLAY = PdfName.Overlay;
    public static PdfName BM_DARKEN = PdfName.Darken;
    public static PdfName BM_LIGHTEN = PdfName.Lighten;
    public static PdfName BM_COLOR_DODGE = PdfName.ColorDodge;
    public static PdfName BM_COLOR_BURN = PdfName.ColorBurn;
    public static PdfName BM_HARD_LIGHT = PdfName.HardLight;
    public static PdfName BM_SOFT_LIGHT = PdfName.SoftLight;
    public static PdfName BM_DIFFERENCE = PdfName.Difference;
    public static PdfName BM_EXCLUSION = PdfName.Exclusion;
    public static PdfName BM_HUE = PdfName.Hue;
    public static PdfName BM_SATURATION = PdfName.Saturation;
    public static PdfName BM_COLOR = PdfName.Color;
    public static PdfName BM_LUMINOSITY = PdfName.Luminosity;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfExtGState(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfExtGState() {
        this(new PdfDictionary());
    }

    public Float getLineWidth() {
        return getPdfObject().getAsFloat(PdfName.f3031LW);
    }

    public PdfExtGState setLineWidth(float f) {
        return put(PdfName.f3031LW, new PdfNumber(f));
    }

    public Integer getLineCapStyle() {
        return getPdfObject().getAsInt(PdfName.f3026LC);
    }

    public PdfExtGState setLineCapStyle(int i) {
        return put(PdfName.f3026LC, new PdfNumber(i));
    }

    public Integer getLineJoinStyle() {
        return getPdfObject().getAsInt(PdfName.f3029LJ);
    }

    public PdfExtGState setLineJoinStyle(int i) {
        return put(PdfName.f3029LJ, new PdfNumber(i));
    }

    public Float getMiterLimit() {
        return getPdfObject().getAsFloat(PdfName.f3034ML);
    }

    public PdfExtGState setMiterLimit(float f) {
        return put(PdfName.f3034ML, new PdfNumber(f));
    }

    public PdfArray getDashPattern() {
        return getPdfObject().getAsArray(PdfName.f2992D);
    }

    public PdfExtGState setDashPattern(PdfArray pdfArray) {
        return put(PdfName.f2992D, pdfArray);
    }

    public PdfName getRenderingIntent() {
        return getPdfObject().getAsName(PdfName.f3060RI);
    }

    public PdfExtGState setRenderingIntent(PdfName pdfName) {
        return put(PdfName.f3060RI, pdfName);
    }

    public Boolean getStrokeOverprintFlag() {
        return getPdfObject().getAsBool(PdfName.f3045OP);
    }

    public PdfExtGState setStrokeOverPrintFlag(boolean z) {
        return put(PdfName.f3045OP, PdfBoolean.valueOf(z));
    }

    public Boolean getFillOverprintFlag() {
        return getPdfObject().getAsBool(PdfName.f3098op);
    }

    public PdfExtGState setFillOverPrintFlag(boolean z) {
        return put(PdfName.f3098op, PdfBoolean.valueOf(z));
    }

    public Integer getOverprintMode() {
        return getPdfObject().getAsInt(PdfName.OPM);
    }

    public PdfExtGState setOverprintMode(int i) {
        return put(PdfName.OPM, new PdfNumber(i));
    }

    public PdfArray getFont() {
        return getPdfObject().getAsArray(PdfName.Font);
    }

    public PdfExtGState setFont(PdfArray pdfArray) {
        return put(PdfName.Font, pdfArray);
    }

    public PdfObject getBlackGenerationFunction() {
        return getPdfObject().get(PdfName.f2976BG);
    }

    public PdfExtGState setBlackGenerationFunction(PdfObject pdfObject) {
        return put(PdfName.f2976BG, pdfObject);
    }

    public PdfObject getBlackGenerationFunction2() {
        return getPdfObject().get(PdfName.BG2);
    }

    public PdfExtGState setBlackGenerationFunction2(PdfObject pdfObject) {
        return put(PdfName.BG2, pdfObject);
    }

    public PdfObject getUndercolorRemovalFunction() {
        return getPdfObject().get(PdfName.UCR);
    }

    public PdfExtGState setUndercolorRemovalFunction(PdfObject pdfObject) {
        return put(PdfName.UCR, pdfObject);
    }

    public PdfObject getUndercolorRemovalFunction2() {
        return getPdfObject().get(PdfName.UCR2);
    }

    public PdfExtGState setUndercolorRemovalFunction2(PdfObject pdfObject) {
        return put(PdfName.UCR2, pdfObject);
    }

    public PdfObject getTransferFunction() {
        return getPdfObject().get(PdfName.f3080TR);
    }

    public PdfExtGState setTransferFunction(PdfObject pdfObject) {
        return put(PdfName.f3080TR, pdfObject);
    }

    public PdfObject getTransferFunction2() {
        return getPdfObject().get(PdfName.TR2);
    }

    public PdfExtGState setTransferFunction2(PdfObject pdfObject) {
        return put(PdfName.TR2, pdfObject);
    }

    public PdfObject getHalftone() {
        return getPdfObject().get(PdfName.f3018HT);
    }

    public PdfExtGState setHalftone(PdfObject pdfObject) {
        return put(PdfName.f3018HT, pdfObject);
    }

    public Float getFlatnessTolerance() {
        return getPdfObject().getAsFloat(PdfName.f3005FL);
    }

    public PdfExtGState setFlatnessTolerance(float f) {
        return put(PdfName.f3005FL, new PdfNumber(f));
    }

    public Float getSmothnessTolerance() {
        return getPdfObject().getAsFloat(PdfName.f3068SM);
    }

    public PdfExtGState setSmoothnessTolerance(float f) {
        return put(PdfName.f3068SM, new PdfNumber(f));
    }

    public Boolean getAutomaticStrokeAdjustmentFlag() {
        return getPdfObject().getAsBool(PdfName.f3066SA);
    }

    public PdfExtGState setAutomaticStrokeAdjustmentFlag(boolean z) {
        return put(PdfName.f3066SA, PdfBoolean.valueOf(z));
    }

    public PdfObject getBlendMode() {
        return getPdfObject().get(PdfName.f2977BM);
    }

    public PdfExtGState setBlendMode(PdfObject pdfObject) {
        return put(PdfName.f2977BM, pdfObject);
    }

    public PdfObject getSoftMask() {
        return getPdfObject().get(PdfName.SMask);
    }

    public PdfExtGState setSoftMask(PdfObject pdfObject) {
        return put(PdfName.SMask, pdfObject);
    }

    public Float getStrokeOpacity() {
        return getPdfObject().getAsFloat(PdfName.f2983CA);
    }

    public PdfExtGState setStrokeOpacity(float f) {
        return put(PdfName.f2983CA, new PdfNumber(f));
    }

    public Float getFillOpacity() {
        return getPdfObject().getAsFloat(PdfName.f3097ca);
    }

    public PdfExtGState setFillOpacity(float f) {
        return put(PdfName.f3097ca, new PdfNumber(f));
    }

    public Boolean getAlphaSourceFlag() {
        return getPdfObject().getAsBool(PdfName.AIS);
    }

    public PdfExtGState setAlphaSourceFlag(boolean z) {
        return put(PdfName.AIS, PdfBoolean.valueOf(z));
    }

    public Boolean getTextKnockoutFlag() {
        return getPdfObject().getAsBool(PdfName.f3077TK);
    }

    public PdfExtGState setTextKnockoutFlag(boolean z) {
        return put(PdfName.f3077TK, PdfBoolean.valueOf(z));
    }

    public PdfExtGState setUseBlackPointCompensation(boolean z) {
        return put(PdfName.UseBlackPtComp, z ? PdfName.f3044ON : PdfName.OFF);
    }

    public Boolean isBlackPointCompensationUsed() {
        PdfName asName = getPdfObject().getAsName(PdfName.UseBlackPtComp);
        if (PdfName.f3044ON.equals(asName)) {
            return true;
        }
        return PdfName.OFF.equals(asName) ? false : null;
    }

    public PdfExtGState setHalftoneOrigin(float f, float f2) {
        PdfArray pdfArray = new PdfArray();
        pdfArray.add(new PdfNumber(f));
        pdfArray.add(new PdfNumber(f2));
        return put(PdfName.HTO, pdfArray);
    }

    public float[] getHalftoneOrigin() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.HTO);
        if (asArray != null && asArray.size() == 2 && asArray.get(0).isNumber() && asArray.get(1).isNumber()) {
            return new float[]{asArray.getAsNumber(0).floatValue(), asArray.getAsNumber(1).floatValue()};
        }
        return null;
    }

    public PdfExtGState put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }
}
