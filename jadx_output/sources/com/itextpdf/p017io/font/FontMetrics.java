package com.itextpdf.p017io.font;

/* JADX INFO: loaded from: classes6.dex */
public class FontMetrics {
    private int advanceWidthMax;
    private int ascender;
    private int descender;
    private int[] glyphWidths;
    private boolean isFixedPitch;
    private int lineGap;
    private int numOfGlyphs;
    private int strikeoutPosition;
    private int strikeoutSize;
    private int subscriptOffset;
    private int subscriptSize;
    private int superscriptOffset;
    private int superscriptSize;
    private int winAscender;
    private int winDescender;
    protected float normalizationCoef = 1.0f;
    private int unitsPerEm = 1000;
    private int typoAscender = 800;
    private int typoDescender = -200;
    private int capHeight = 700;
    private int xHeight = 0;
    private float italicAngle = 0.0f;
    private int[] bbox = {-50, -200, 1000, 900};
    private int underlinePosition = -100;
    private int underlineThickness = 50;
    private int stemV = 80;
    private int stemH = 0;

    public int getUnitsPerEm() {
        return this.unitsPerEm;
    }

    public int getNumberOfGlyphs() {
        return this.numOfGlyphs;
    }

    public int[] getGlyphWidths() {
        return this.glyphWidths;
    }

    public int getTypoAscender() {
        return this.typoAscender;
    }

    public int getTypoDescender() {
        return this.typoDescender;
    }

    public int getCapHeight() {
        return this.capHeight;
    }

    public int getXHeight() {
        return this.xHeight;
    }

    public float getItalicAngle() {
        return this.italicAngle;
    }

    public int[] getBbox() {
        return this.bbox;
    }

    public void setBbox(int i, int i2, int i3, int i4) {
        int[] iArr = this.bbox;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
    }

    public int getAscender() {
        return this.ascender;
    }

    public int getDescender() {
        return this.descender;
    }

    public int getLineGap() {
        return this.lineGap;
    }

    public int getWinAscender() {
        return this.winAscender;
    }

    public int getWinDescender() {
        return this.winDescender;
    }

    public int getAdvanceWidthMax() {
        return this.advanceWidthMax;
    }

    public int getUnderlinePosition() {
        return this.underlinePosition - (this.underlineThickness / 2);
    }

    public int getUnderlineThickness() {
        return this.underlineThickness;
    }

    public int getStrikeoutPosition() {
        return this.strikeoutPosition;
    }

    public int getStrikeoutSize() {
        return this.strikeoutSize;
    }

    public int getSubscriptSize() {
        return this.subscriptSize;
    }

    public int getSubscriptOffset() {
        return this.subscriptOffset;
    }

    public int getSuperscriptSize() {
        return this.superscriptSize;
    }

    public int getSuperscriptOffset() {
        return this.superscriptOffset;
    }

    public int getStemV() {
        return this.stemV;
    }

    public int getStemH() {
        return this.stemH;
    }

    public boolean isFixedPitch() {
        return this.isFixedPitch;
    }

    protected void setUnitsPerEm(int i) {
        this.unitsPerEm = i;
        this.normalizationCoef = 1000.0f / i;
    }

    protected void updateBbox(float f, float f2, float f3, float f4) {
        int[] iArr = this.bbox;
        float f5 = this.normalizationCoef;
        iArr[0] = (int) (f * f5);
        iArr[1] = (int) (f2 * f5);
        iArr[2] = (int) (f3 * f5);
        iArr[3] = (int) (f4 * f5);
    }

    protected void setNumberOfGlyphs(int i) {
        this.numOfGlyphs = i;
    }

    protected void setGlyphWidths(int[] iArr) {
        this.glyphWidths = iArr;
    }

    protected void setTypoAscender(int i) {
        this.typoAscender = (int) (i * this.normalizationCoef);
    }

    protected void setTypoDescender(int i) {
        this.typoDescender = (int) (i * this.normalizationCoef);
    }

    protected void setCapHeight(int i) {
        this.capHeight = (int) (i * this.normalizationCoef);
    }

    protected void setXHeight(int i) {
        this.xHeight = (int) (i * this.normalizationCoef);
    }

    protected void setItalicAngle(float f) {
        this.italicAngle = f;
    }

    protected void setAscender(int i) {
        this.ascender = (int) (i * this.normalizationCoef);
    }

    protected void setDescender(int i) {
        this.descender = (int) (i * this.normalizationCoef);
    }

    protected void setLineGap(int i) {
        this.lineGap = (int) (i * this.normalizationCoef);
    }

    protected void setWinAscender(int i) {
        this.winAscender = (int) (i * this.normalizationCoef);
    }

    protected void setWinDescender(int i) {
        this.winDescender = (int) (i * this.normalizationCoef);
    }

    protected void setAdvanceWidthMax(int i) {
        this.advanceWidthMax = (int) (i * this.normalizationCoef);
    }

    protected void setUnderlinePosition(int i) {
        this.underlinePosition = (int) (i * this.normalizationCoef);
    }

    protected void setUnderlineThickness(int i) {
        this.underlineThickness = i;
    }

    protected void setStrikeoutPosition(int i) {
        this.strikeoutPosition = (int) (i * this.normalizationCoef);
    }

    protected void setStrikeoutSize(int i) {
        this.strikeoutSize = (int) (i * this.normalizationCoef);
    }

    protected void setSubscriptSize(int i) {
        this.subscriptSize = (int) (i * this.normalizationCoef);
    }

    protected void setSubscriptOffset(int i) {
        this.subscriptOffset = (int) (i * this.normalizationCoef);
    }

    protected void setSuperscriptSize(int i) {
        this.superscriptSize = i;
    }

    protected void setSuperscriptOffset(int i) {
        this.superscriptOffset = (int) (i * this.normalizationCoef);
    }

    public void setStemV(int i) {
        this.stemV = i;
    }

    protected void setStemH(int i) {
        this.stemH = i;
    }

    protected void setIsFixedPitch(boolean z) {
        this.isFixedPitch = z;
    }
}
