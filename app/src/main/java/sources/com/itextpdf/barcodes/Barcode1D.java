package com.itextpdf.barcodes;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import java.awt.Color;
import java.awt.Image;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Barcode1D {
    public static final int ALIGN_CENTER = 3;
    public static final int ALIGN_LEFT = 1;
    public static final int ALIGN_RIGHT = 2;
    protected String altText;
    protected float barHeight;
    protected float baseline;
    protected boolean checksumText;
    protected int codeType;
    protected PdfDocument document;
    protected boolean extended;
    protected PdfFont font;
    protected boolean generateChecksum;
    protected boolean guardBars;

    /* JADX INFO: renamed from: n */
    protected float f2833n;
    protected float size;
    protected boolean startStopText;
    protected int textAlignment;

    /* JADX INFO: renamed from: x */
    protected float f2834x;
    protected final Color DEFAULT_BAR_FOREGROUND_COLOR = Color.BLACK;
    protected final Color DEFAULT_BAR_BACKGROUND_COLOR = Color.WHITE;
    protected String code = "";
    protected float inkSpreading = 0.0f;

    public abstract Image createAwtImage(Color color, Color color2);

    public abstract Rectangle getBarcodeSize();

    public abstract Rectangle placeBarcode(PdfCanvas pdfCanvas, com.itextpdf.kernel.colors.Color color, com.itextpdf.kernel.colors.Color color2);

    protected Barcode1D(PdfDocument pdfDocument) {
        this.document = pdfDocument;
    }

    public float getX() {
        return this.f2834x;
    }

    public void setX(float f) {
        this.f2834x = f;
    }

    public float getN() {
        return this.f2833n;
    }

    public void setN(float f) {
        this.f2833n = f;
    }

    public PdfFont getFont() {
        return this.font;
    }

    public void setFont(PdfFont pdfFont) {
        this.font = pdfFont;
    }

    public float getSize() {
        return this.size;
    }

    public void setSize(float f) {
        this.size = f;
    }

    public float getBaseline() {
        return this.baseline;
    }

    public void setBaseline(float f) {
        this.baseline = f;
    }

    public float getBarHeight() {
        return this.barHeight;
    }

    public void setBarHeight(float f) {
        this.barHeight = f;
    }

    public int getTextAlignment() {
        return this.textAlignment;
    }

    public void setTextAlignment(int i) {
        this.textAlignment = i;
    }

    public boolean isGenerateChecksum() {
        return this.generateChecksum;
    }

    public void setGenerateChecksum(boolean z) {
        this.generateChecksum = z;
    }

    public boolean isChecksumText() {
        return this.checksumText;
    }

    public void setChecksumText(boolean z) {
        this.checksumText = z;
    }

    public boolean isStartStopText() {
        return this.startStopText;
    }

    public void setStartStopText(boolean z) {
        this.startStopText = z;
    }

    public boolean isExtended() {
        return this.extended;
    }

    public void setExtended(boolean z) {
        this.extended = z;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public boolean isGuardBars() {
        return this.guardBars;
    }

    public void setGuardBars(boolean z) {
        this.guardBars = z;
    }

    public int getCodeType() {
        return this.codeType;
    }

    public void setCodeType(int i) {
        this.codeType = i;
    }

    public float getInkSpreading() {
        return this.inkSpreading;
    }

    public void setInkSpreading(float f) {
        this.inkSpreading = f;
    }

    public String getAltText() {
        return this.altText;
    }

    public void setAltText(String str) {
        this.altText = str;
    }

    public PdfFormXObject createFormXObject(PdfDocument pdfDocument) {
        return createFormXObject(null, null, pdfDocument);
    }

    public PdfFormXObject createFormXObject(com.itextpdf.kernel.colors.Color color, com.itextpdf.kernel.colors.Color color2, PdfDocument pdfDocument) {
        PdfFormXObject pdfFormXObject = new PdfFormXObject((Rectangle) null);
        pdfFormXObject.setBBox(new PdfArray(placeBarcode(new PdfCanvas(pdfFormXObject, pdfDocument), color, color2)));
        return pdfFormXObject;
    }

    public void fitWidth(float f) {
        setX((this.f2834x * f) / getBarcodeSize().getWidth());
    }

    protected float getDescender() {
        return this.font.getFontProgram().getFontMetrics().getTypoDescender() * (this.size / 1000.0f);
    }
}
