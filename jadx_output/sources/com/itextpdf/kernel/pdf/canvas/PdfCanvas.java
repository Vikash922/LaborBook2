package com.itextpdf.kernel.pdf.canvas;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.PatternColor;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfType0Font;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.IsoKey;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfOutputStream;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.canvas.wmf.WmfImageHelper;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.kernel.pdf.colorspace.PdfShading;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.kernel.pdf.layer.IPdfOCG;
import com.itextpdf.kernel.pdf.layer.PdfLayer;
import com.itextpdf.kernel.pdf.layer.PdfLayerMembership;
import com.itextpdf.kernel.pdf.tagutils.TagReference;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.font.otf.ActualTextIterator;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.image.ImageType;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.p017io.util.StreamUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCanvas {
    private static final float IDENTITY_MATRIX_EPS = 1.0E-4f;
    protected PdfStream contentStream;
    protected CanvasGraphicsState currentGs;
    private boolean defaultDeviceGrayBlackColorCheckRequired;
    protected PdfDocument document;
    protected Stack<CanvasGraphicsState> gsStack;
    protected List<Integer> layerDepth;
    protected int mcDepth;
    protected PdfResources resources;

    /* JADX INFO: renamed from: B */
    private static final byte[] f3109B = ByteUtils.getIsoBytes("B\n");

    /* JADX INFO: renamed from: b */
    private static final byte[] f3137b = ByteUtils.getIsoBytes("b\n");
    private static final byte[] BDC = ByteUtils.getIsoBytes("BDC\n");

    /* JADX INFO: renamed from: BI */
    private static final byte[] f3110BI = ByteUtils.getIsoBytes("BI\n");
    private static final byte[] BMC = ByteUtils.getIsoBytes("BMC\n");
    private static final byte[] BStar = ByteUtils.getIsoBytes("B*\n");
    private static final byte[] bStar = ByteUtils.getIsoBytes("b*\n");

    /* JADX INFO: renamed from: BT */
    private static final byte[] f3111BT = ByteUtils.getIsoBytes("BT\n");

    /* JADX INFO: renamed from: c */
    private static final byte[] f3138c = ByteUtils.getIsoBytes("c\n");

    /* JADX INFO: renamed from: cm */
    private static final byte[] f3139cm = ByteUtils.getIsoBytes("cm\n");

    /* JADX INFO: renamed from: cs */
    private static final byte[] f3140cs = ByteUtils.getIsoBytes("cs\n");

    /* JADX INFO: renamed from: CS */
    private static final byte[] f3112CS = ByteUtils.getIsoBytes("CS\n");

    /* JADX INFO: renamed from: d */
    private static final byte[] f3141d = ByteUtils.getIsoBytes("d\n");

    /* JADX INFO: renamed from: Do */
    private static final byte[] f3113Do = ByteUtils.getIsoBytes("Do\n");

    /* JADX INFO: renamed from: EI */
    private static final byte[] f3114EI = ByteUtils.getIsoBytes("EI\n");
    private static final byte[] EMC = ByteUtils.getIsoBytes("EMC\n");

    /* JADX INFO: renamed from: ET */
    private static final byte[] f3115ET = ByteUtils.getIsoBytes("ET\n");

    /* JADX INFO: renamed from: f */
    private static final byte[] f3142f = ByteUtils.getIsoBytes("f\n");
    private static final byte[] fStar = ByteUtils.getIsoBytes("f*\n");

    /* JADX INFO: renamed from: G */
    private static final byte[] f3116G = ByteUtils.getIsoBytes("G\n");

    /* JADX INFO: renamed from: g */
    private static final byte[] f3143g = ByteUtils.getIsoBytes("g\n");

    /* JADX INFO: renamed from: gs */
    private static final byte[] f3144gs = ByteUtils.getIsoBytes("gs\n");

    /* JADX INFO: renamed from: h */
    private static final byte[] f3145h = ByteUtils.getIsoBytes("h\n");

    /* JADX INFO: renamed from: i */
    private static final byte[] f3146i = ByteUtils.getIsoBytes("i\n");

    /* JADX INFO: renamed from: ID */
    private static final byte[] f3117ID = ByteUtils.getIsoBytes("ID\n");

    /* JADX INFO: renamed from: j */
    private static final byte[] f3147j = ByteUtils.getIsoBytes("j\n");

    /* JADX INFO: renamed from: J */
    private static final byte[] f3118J = ByteUtils.getIsoBytes("J\n");

    /* JADX INFO: renamed from: K */
    private static final byte[] f3119K = ByteUtils.getIsoBytes("K\n");

    /* JADX INFO: renamed from: k */
    private static final byte[] f3148k = ByteUtils.getIsoBytes("k\n");

    /* JADX INFO: renamed from: l */
    private static final byte[] f3149l = ByteUtils.getIsoBytes("l\n");

    /* JADX INFO: renamed from: m */
    private static final byte[] f3150m = ByteUtils.getIsoBytes("m\n");

    /* JADX INFO: renamed from: M */
    private static final byte[] f3120M = ByteUtils.getIsoBytes("M\n");

    /* JADX INFO: renamed from: n */
    private static final byte[] f3151n = ByteUtils.getIsoBytes("n\n");

    /* JADX INFO: renamed from: q */
    private static final byte[] f3152q = ByteUtils.getIsoBytes("q\n");

    /* JADX INFO: renamed from: Q */
    private static final byte[] f3121Q = ByteUtils.getIsoBytes("Q\n");

    /* JADX INFO: renamed from: re */
    private static final byte[] f3153re = ByteUtils.getIsoBytes("re\n");

    /* JADX INFO: renamed from: rg */
    private static final byte[] f3154rg = ByteUtils.getIsoBytes("rg\n");

    /* JADX INFO: renamed from: RG */
    private static final byte[] f3122RG = ByteUtils.getIsoBytes("RG\n");

    /* JADX INFO: renamed from: ri */
    private static final byte[] f3155ri = ByteUtils.getIsoBytes("ri\n");

    /* JADX INFO: renamed from: S */
    private static final byte[] f3123S = ByteUtils.getIsoBytes("S\n");

    /* JADX INFO: renamed from: s */
    private static final byte[] f3156s = ByteUtils.getIsoBytes("s\n");
    private static final byte[] scn = ByteUtils.getIsoBytes("scn\n");
    private static final byte[] SCN = ByteUtils.getIsoBytes("SCN\n");

    /* JADX INFO: renamed from: sh */
    private static final byte[] f3157sh = ByteUtils.getIsoBytes("sh\n");

    /* JADX INFO: renamed from: Tc */
    private static final byte[] f3127Tc = ByteUtils.getIsoBytes("Tc\n");

    /* JADX INFO: renamed from: Td */
    private static final byte[] f3128Td = ByteUtils.getIsoBytes("Td\n");

    /* JADX INFO: renamed from: TD */
    private static final byte[] f3124TD = ByteUtils.getIsoBytes("TD\n");

    /* JADX INFO: renamed from: Tf */
    private static final byte[] f3129Tf = ByteUtils.getIsoBytes("Tf\n");

    /* JADX INFO: renamed from: TJ */
    private static final byte[] f3125TJ = ByteUtils.getIsoBytes("TJ\n");

    /* JADX INFO: renamed from: Tj */
    private static final byte[] f3130Tj = ByteUtils.getIsoBytes("Tj\n");

    /* JADX INFO: renamed from: TL */
    private static final byte[] f3126TL = ByteUtils.getIsoBytes("TL\n");

    /* JADX INFO: renamed from: Tm */
    private static final byte[] f3131Tm = ByteUtils.getIsoBytes("Tm\n");

    /* JADX INFO: renamed from: Tr */
    private static final byte[] f3132Tr = ByteUtils.getIsoBytes("Tr\n");

    /* JADX INFO: renamed from: Ts */
    private static final byte[] f3133Ts = ByteUtils.getIsoBytes("Ts\n");
    private static final byte[] TStar = ByteUtils.getIsoBytes("T*\n");

    /* JADX INFO: renamed from: Tw */
    private static final byte[] f3134Tw = ByteUtils.getIsoBytes("Tw\n");

    /* JADX INFO: renamed from: Tz */
    private static final byte[] f3135Tz = ByteUtils.getIsoBytes("Tz\n");

    /* JADX INFO: renamed from: v */
    private static final byte[] f3158v = ByteUtils.getIsoBytes("v\n");

    /* JADX INFO: renamed from: W */
    private static final byte[] f3136W = ByteUtils.getIsoBytes("W\n");

    /* JADX INFO: renamed from: w */
    private static final byte[] f3159w = ByteUtils.getIsoBytes("w\n");
    private static final byte[] WStar = ByteUtils.getIsoBytes("W*\n");

    /* JADX INFO: renamed from: y */
    private static final byte[] f3160y = ByteUtils.getIsoBytes("y\n");
    private static final PdfDeviceCs.Gray gray = new PdfDeviceCs.Gray();
    private static final PdfDeviceCs.Rgb rgb = new PdfDeviceCs.Rgb();
    private static final PdfDeviceCs.Cmyk cmyk = new PdfDeviceCs.Cmyk();
    private static final PdfSpecialCs.Pattern pattern = new PdfSpecialCs.Pattern();

    private enum CheckColorMode {
        NONE,
        FILL,
        STROKE,
        FILL_AND_STROKE
    }

    public PdfCanvas(PdfStream pdfStream, PdfResources pdfResources, PdfDocument pdfDocument) {
        this.defaultDeviceGrayBlackColorCheckRequired = true;
        this.gsStack = new Stack<>();
        this.currentGs = new CanvasGraphicsState();
        this.contentStream = ensureStreamDataIsReadyToBeProcessed(pdfStream);
        this.resources = pdfResources;
        this.document = pdfDocument;
    }

    public PdfCanvas(PdfPage pdfPage) {
        this(pdfPage, (pdfPage.getDocument().getReader() != null && pdfPage.getDocument().getWriter() != null && pdfPage.getContentStreamCount() > 0 && pdfPage.getLastContentStream().getLength() > 0) || (pdfPage.getRotation() != 0 && pdfPage.isIgnorePageRotationForContent()));
    }

    public PdfCanvas(PdfPage pdfPage, boolean z) {
        this(getPageStream(pdfPage), pdfPage.getResources(), pdfPage.getDocument());
        if (z) {
            pdfPage.newContentStreamBefore().getOutputStream().writeBytes(ByteUtils.getIsoBytes("q\n"));
            this.contentStream.getOutputStream().writeBytes(ByteUtils.getIsoBytes("Q\n"));
        }
        if (pdfPage.getRotation() == 0 || !pdfPage.isIgnorePageRotationForContent()) {
            return;
        }
        if (z || !pdfPage.isPageRotationInverseMatrixWritten()) {
            applyRotation(pdfPage);
            pdfPage.setPageRotationInverseMatrixWritten();
        }
    }

    public PdfCanvas(PdfFormXObject pdfFormXObject, PdfDocument pdfDocument) {
        this(pdfFormXObject.getPdfObject(), pdfFormXObject.getResources(), pdfDocument);
    }

    public PdfCanvas(PdfDocument pdfDocument, int i) {
        this(pdfDocument.getPage(i));
    }

    public PdfResources getResources() {
        return this.resources;
    }

    public PdfDocument getDocument() {
        return this.document;
    }

    public void attachContentStream(PdfStream pdfStream) {
        this.contentStream = pdfStream;
    }

    public CanvasGraphicsState getGraphicsState() {
        return this.currentGs;
    }

    public void release() {
        this.gsStack = null;
        this.currentGs = null;
        this.contentStream = null;
        this.resources = null;
    }

    public PdfCanvas saveState() {
        this.document.checkIsoConformance('q', IsoKey.CANVAS_STACK);
        this.gsStack.push(this.currentGs);
        this.currentGs = new CanvasGraphicsState(this.currentGs);
        this.contentStream.getOutputStream().writeBytes(f3152q);
        return this;
    }

    public PdfCanvas restoreState() {
        this.document.checkIsoConformance('Q', IsoKey.CANVAS_STACK);
        if (this.gsStack.isEmpty()) {
            throw new PdfException(KernelExceptionMessageConstant.UNBALANCED_SAVE_RESTORE_STATE_OPERATORS);
        }
        this.currentGs = this.gsStack.pop();
        this.contentStream.getOutputStream().writeBytes(f3121Q);
        return this;
    }

    public PdfCanvas concatMatrix(double d, double d2, double d3, double d4, double d5, double d6) {
        this.currentGs.updateCtm((float) d, (float) d2, (float) d3, (float) d4, (float) d5, (float) d6);
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeDouble(d3).writeSpace().writeDouble(d4).writeSpace().writeDouble(d5).writeSpace().writeDouble(d6).writeSpace().writeBytes(f3139cm);
        return this;
    }

    public PdfCanvas concatMatrix(PdfArray pdfArray) {
        if (pdfArray.size() != 6) {
            return this;
        }
        for (int i = 0; i < pdfArray.size(); i++) {
            if (!pdfArray.get(i).isNumber()) {
                return this;
            }
        }
        return concatMatrix(pdfArray.getAsNumber(0).doubleValue(), pdfArray.getAsNumber(1).doubleValue(), pdfArray.getAsNumber(2).doubleValue(), pdfArray.getAsNumber(3).doubleValue(), pdfArray.getAsNumber(4).doubleValue(), pdfArray.getAsNumber(5).doubleValue());
    }

    public PdfCanvas concatMatrix(AffineTransform affineTransform) {
        affineTransform.getMatrix(new float[6]);
        return concatMatrix(r0[0], r0[1], r0[2], r0[3], r0[4], r0[5]);
    }

    public PdfCanvas beginText() {
        this.contentStream.getOutputStream().writeBytes(f3111BT);
        return this;
    }

    public PdfCanvas endText() {
        this.contentStream.getOutputStream().writeBytes(f3115ET);
        return this;
    }

    public PdfCanvas beginVariableText() {
        return beginMarkedContent(PdfName.f3082Tx);
    }

    public PdfCanvas endVariableText() {
        return endMarkedContent();
    }

    public PdfCanvas setFontAndSize(PdfFont pdfFont, float f) {
        this.currentGs.setFontSize(f);
        PdfName pdfNameAddFont = this.resources.addFont(this.document, pdfFont);
        this.currentGs.setFont(pdfFont);
        this.contentStream.getOutputStream().write((PdfObject) pdfNameAddFont).writeSpace().writeFloat(f).writeSpace().writeBytes(f3129Tf);
        return this;
    }

    public PdfCanvas moveText(double d, double d2) {
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeBytes(f3128Td);
        return this;
    }

    public PdfCanvas setLeading(float f) {
        this.currentGs.setLeading(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3126TL);
        return this;
    }

    public PdfCanvas moveTextWithLeading(float f, float f2) {
        this.currentGs.setLeading(-f2);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeFloat(f2).writeSpace().writeBytes(f3124TD);
        return this;
    }

    public PdfCanvas newlineText() {
        this.contentStream.getOutputStream().writeBytes(TStar);
        return this;
    }

    public PdfCanvas newlineShowText(String str) {
        checkDefaultDeviceGrayBlackColor(getColorKeyForText());
        showTextInt(str);
        this.contentStream.getOutputStream().writeByte(39).writeNewLine();
        return this;
    }

    public PdfCanvas newlineShowText(float f, float f2, String str) {
        checkDefaultDeviceGrayBlackColor(getColorKeyForText());
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeFloat(f2);
        showTextInt(str);
        this.contentStream.getOutputStream().writeByte(34).writeNewLine();
        this.currentGs.setCharSpacing(f2);
        this.currentGs.setWordSpacing(f);
        return this;
    }

    public PdfCanvas setTextRenderingMode(int i) {
        this.currentGs.setTextRenderingMode(i);
        this.contentStream.getOutputStream().writeInteger(i).writeSpace().writeBytes(f3132Tr);
        return this;
    }

    public PdfCanvas setTextRise(float f) {
        this.currentGs.setTextRise(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3133Ts);
        return this;
    }

    public PdfCanvas setWordSpacing(float f) {
        this.currentGs.setWordSpacing(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3134Tw);
        return this;
    }

    public PdfCanvas setCharacterSpacing(float f) {
        this.currentGs.setCharSpacing(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3127Tc);
        return this;
    }

    public PdfCanvas setHorizontalScaling(float f) {
        this.currentGs.setHorizontalScaling(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3135Tz);
        return this;
    }

    public PdfCanvas setTextMatrix(float f, float f2, float f3, float f4, float f5, float f6) {
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeFloat(f2).writeSpace().writeFloat(f3).writeSpace().writeFloat(f4).writeSpace().writeFloat(f5).writeSpace().writeFloat(f6).writeSpace().writeBytes(f3131Tm);
        return this;
    }

    public PdfCanvas setTextMatrix(AffineTransform affineTransform) {
        float[] fArr = new float[6];
        affineTransform.getMatrix(fArr);
        return setTextMatrix(fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5]);
    }

    public PdfCanvas setTextMatrix(float f, float f2) {
        return setTextMatrix(1.0f, 0.0f, 0.0f, 1.0f, f, f2);
    }

    public PdfCanvas showText(String str) {
        checkDefaultDeviceGrayBlackColor(getColorKeyForText());
        showTextInt(str);
        this.contentStream.getOutputStream().writeBytes(f3130Tj);
        return this;
    }

    public PdfCanvas showText(GlyphLine glyphLine) {
        return showText(glyphLine, new ActualTextIterator(glyphLine));
    }

    public PdfCanvas showText(GlyphLine glyphLine, Iterator<GlyphLine.GlyphLinePart> it) {
        float f;
        float f2;
        checkDefaultDeviceGrayBlackColor(getColorKeyForText());
        this.document.checkIsoConformance(this.currentGs, IsoKey.FONT_GLYPHS, null, this.contentStream);
        PdfFont font = this.currentGs.getFont();
        if (font == null) {
            throw new PdfException(KernelExceptionMessageConstant.FONT_AND_SIZE_MUST_BE_SET_BEFORE_WRITING_ANY_TEXT, this.currentGs);
        }
        float fontSize = this.currentGs.getFontSize() / 1000.0f;
        float charSpacing = this.currentGs.getCharSpacing();
        float horizontalScaling = this.currentGs.getHorizontalScaling() / 100.0f;
        List listIteratorToList = iteratorToList(it);
        for (int i = 0; i < listIteratorToList.size(); i++) {
            GlyphLine.GlyphLinePart glyphLinePart = (GlyphLine.GlyphLinePart) listIteratorToList.get(i);
            boolean z = true;
            if (glyphLinePart.actualText != null) {
                PdfDictionary pdfDictionary = new PdfDictionary();
                pdfDictionary.put(PdfName.ActualText, new PdfString(glyphLinePart.actualText, PdfEncodings.UNICODE_BIG).setHexWriting(true));
                beginMarkedContent(PdfName.Span, pdfDictionary);
            } else if (glyphLinePart.reversed) {
                beginMarkedContent(PdfName.ReversedChars);
            }
            int i2 = glyphLinePart.start;
            int i3 = glyphLinePart.start;
            while (i3 < glyphLinePart.end) {
                Glyph glyph = glyphLine.get(i3);
                if (glyph.hasOffsets()) {
                    int i4 = i3 - 1;
                    if (i4 - i2 >= 0) {
                        font.writeText(glyphLine, i2, i4, this.contentStream.getOutputStream());
                        this.contentStream.getOutputStream().writeBytes(f3130Tj);
                        this.contentStream.getOutputStream().writeFloat(getSubrangeWidth(glyphLine, i2, i4), z).writeSpace().writeFloat(0.0f).writeSpace().writeBytes(f3128Td);
                    }
                    if (glyph.hasPlacement()) {
                        Glyph glyph2 = glyphLine.get(i3);
                        int anchorDelta = i3;
                        float xPlacement = 0.0f;
                        while (glyph2 != null && glyph2.getAnchorDelta() != 0) {
                            xPlacement += glyph2.getXPlacement();
                            if (glyph2.getAnchorDelta() == 0) {
                                break;
                            }
                            anchorDelta += glyph2.getAnchorDelta();
                            glyph2 = glyphLine.get(anchorDelta);
                        }
                        f = (-getSubrangeWidth(glyphLine, anchorDelta, i3)) + (xPlacement * fontSize * horizontalScaling);
                        Glyph glyph3 = glyphLine.get(i3);
                        int anchorDelta2 = i3;
                        float yPlacement = 0.0f;
                        while (glyph3 != null && glyph3.getYPlacement() != 0) {
                            yPlacement += glyph3.getYPlacement();
                            if (glyph3.getAnchorDelta() == 0) {
                                break;
                            }
                            anchorDelta2 += glyph3.getAnchorDelta();
                            glyph3 = glyphLine.get(anchorDelta2);
                        }
                        f2 = (-getSubrangeYDelta(glyphLine, anchorDelta2, i3)) + (yPlacement * fontSize);
                        this.contentStream.getOutputStream().writeFloat(f, true).writeSpace().writeFloat(f2, true).writeSpace().writeBytes(f3128Td);
                    } else {
                        f = Float.NaN;
                        f2 = Float.NaN;
                    }
                    font.writeText(glyphLine, i3, i3, this.contentStream.getOutputStream());
                    this.contentStream.getOutputStream().writeBytes(f3130Tj);
                    if (!Float.isNaN(f)) {
                        this.contentStream.getOutputStream().writeFloat(-f, true).writeSpace().writeFloat(-f2, true).writeSpace().writeBytes(f3128Td);
                    }
                    if (glyph.hasAdvance()) {
                        this.contentStream.getOutputStream().writeFloat(((((glyph.hasPlacement() ? 0 : glyph.getWidth()) + glyph.getXAdvance()) * fontSize) + charSpacing + getWordSpacingAddition(glyph)) * horizontalScaling, true).writeSpace().writeFloat(glyph.getYAdvance() * fontSize, true).writeSpace().writeBytes(f3128Td);
                    }
                    i2 = i3 + 1;
                }
                i3++;
                z = true;
            }
            if (glyphLinePart.end - i2 > 0) {
                font.writeText(glyphLine, i2, glyphLinePart.end - 1, this.contentStream.getOutputStream());
                this.contentStream.getOutputStream().writeBytes(f3130Tj);
            }
            if (glyphLinePart.actualText != null || glyphLinePart.reversed) {
                endMarkedContent();
            }
            if (glyphLinePart.end > i2 && i + 1 < listIteratorToList.size()) {
                this.contentStream.getOutputStream().writeFloat(getSubrangeWidth(glyphLine, i2, glyphLinePart.end - 1), true).writeSpace().writeFloat(0.0f).writeSpace().writeBytes(f3128Td);
            }
        }
        return this;
    }

    private float getSubrangeWidth(GlyphLine glyphLine, int i, int i2) {
        float fontSize = this.currentGs.getFontSize() / 1000.0f;
        float charSpacing = this.currentGs.getCharSpacing();
        float horizontalScaling = this.currentGs.getHorizontalScaling() / 100.0f;
        float xAdvance = 0.0f;
        for (int i3 = i; i3 <= i2; i3++) {
            Glyph glyph = glyphLine.get(i3);
            if (!glyph.hasPlacement()) {
                xAdvance += ((glyph.getWidth() * fontSize) + charSpacing + getWordSpacingAddition(glyph)) * horizontalScaling;
            }
            if (i3 > i) {
                xAdvance += glyphLine.get(i3 - 1).getXAdvance() * fontSize * horizontalScaling;
            }
        }
        return xAdvance;
    }

    private float getSubrangeYDelta(GlyphLine glyphLine, int i, int i2) {
        float fontSize = this.currentGs.getFontSize() / 1000.0f;
        float yAdvance = 0.0f;
        while (i < i2) {
            yAdvance += glyphLine.get(i).getYAdvance() * fontSize;
            i++;
        }
        return yAdvance;
    }

    private float getWordSpacingAddition(Glyph glyph) {
        if (!(this.currentGs.getFont() instanceof PdfType0Font) && glyph.hasValidUnicode() && glyph.getCode() == 32) {
            return this.currentGs.getWordSpacing();
        }
        return 0.0f;
    }

    public PdfCanvas showText(PdfArray pdfArray) {
        checkDefaultDeviceGrayBlackColor(getColorKeyForText());
        this.document.checkIsoConformance(this.currentGs, IsoKey.FONT_GLYPHS, null, this.contentStream);
        if (this.currentGs.getFont() == null) {
            throw new PdfException(KernelExceptionMessageConstant.FONT_AND_SIZE_MUST_BE_SET_BEFORE_WRITING_ANY_TEXT, this.currentGs);
        }
        this.contentStream.getOutputStream().writeBytes(ByteUtils.getIsoBytes("["));
        for (PdfObject pdfObject : pdfArray) {
            if (pdfObject.isString()) {
                StreamUtil.writeEscapedString(this.contentStream.getOutputStream(), ((PdfString) pdfObject).getValueBytes());
            } else if (pdfObject.isNumber()) {
                this.contentStream.getOutputStream().writeFloat(((PdfNumber) pdfObject).floatValue());
            }
        }
        this.contentStream.getOutputStream().writeBytes(ByteUtils.getIsoBytes("]"));
        this.contentStream.getOutputStream().writeBytes(f3125TJ);
        return this;
    }

    public PdfCanvas moveTo(double d, double d2) {
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeBytes(f3150m);
        return this;
    }

    public PdfCanvas lineTo(double d, double d2) {
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeBytes(f3149l);
        return this;
    }

    public PdfCanvas curveTo(double d, double d2, double d3, double d4, double d5, double d6) {
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeDouble(d3).writeSpace().writeDouble(d4).writeSpace().writeDouble(d5).writeSpace().writeDouble(d6).writeSpace().writeBytes(f3138c);
        return this;
    }

    public PdfCanvas curveTo(double d, double d2, double d3, double d4) {
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeDouble(d3).writeSpace().writeDouble(d4).writeSpace().writeBytes(f3158v);
        return this;
    }

    public PdfCanvas curveFromTo(double d, double d2, double d3, double d4) {
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeDouble(d3).writeSpace().writeDouble(d4).writeSpace().writeBytes(f3160y);
        return this;
    }

    public PdfCanvas arc(double d, double d2, double d3, double d4, double d5, double d6) {
        return drawArc(d, d2, d3, d4, d5, d6, false);
    }

    public PdfCanvas arcContinuous(double d, double d2, double d3, double d4, double d5, double d6) {
        return drawArc(d, d2, d3, d4, d5, d6, true);
    }

    public PdfCanvas ellipse(double d, double d2, double d3, double d4) {
        return arc(d, d2, d3, d4, 0.0d, 360.0d);
    }

    public static List<double[]> bezierArc(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7;
        double d8;
        double d9;
        double d10;
        int iCeil;
        double d11;
        ArrayList arrayList;
        if (d > d3) {
            d8 = d;
            d7 = d3;
        } else {
            d7 = d;
            d8 = d3;
        }
        if (d4 > d2) {
            d10 = d2;
            d9 = d4;
        } else {
            d9 = d2;
            d10 = d4;
        }
        if (Math.abs(d6) <= 90.0d) {
            d11 = d6;
            iCeil = 1;
        } else {
            iCeil = (int) Math.ceil(Math.abs(d6) / 90.0d);
            d11 = d6 / ((double) iCeil);
        }
        double d12 = (d7 + d8) / 2.0d;
        double d13 = (d9 + d10) / 2.0d;
        double d14 = (d8 - d7) / 2.0d;
        double d15 = (d10 - d9) / 2.0d;
        double d16 = (d11 * 3.141592653589793d) / 360.0d;
        double dAbs = Math.abs(((1.0d - Math.cos(d16)) * 1.3333333333333333d) / Math.sin(d16));
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (i < iCeil) {
            double d17 = ((d5 + (((double) i) * d11)) * 3.141592653589793d) / 180.0d;
            i++;
            ArrayList arrayList3 = arrayList2;
            double d18 = ((d5 + (((double) i) * d11)) * 3.141592653589793d) / 180.0d;
            double dCos = Math.cos(d17);
            double dCos2 = Math.cos(d18);
            double dSin = Math.sin(d17);
            double dSin2 = Math.sin(d18);
            int i2 = iCeil;
            if (d11 > 0.0d) {
                double[] dArr = {d12 + (d14 * dCos), d13 - (d15 * dSin), d12 + ((dCos - (dAbs * dSin)) * d14), d13 - ((dSin + (dCos * dAbs)) * d15), d12 + ((dCos2 + (dAbs * dSin2)) * d14), d13 - ((dSin2 - (dAbs * dCos2)) * d15), d12 + (dCos2 * d14), d13 - (dSin2 * d15)};
                arrayList = arrayList3;
                arrayList.add(dArr);
            } else {
                double[] dArr2 = {d12 + (d14 * dCos), d13 - (d15 * dSin), d12 + ((dCos + (dAbs * dSin)) * d14), d13 - ((dSin - (dCos * dAbs)) * d15), d12 + ((dCos2 - (dAbs * dSin2)) * d14), d13 - ((dSin2 + (dAbs * dCos2)) * d15), d12 + (dCos2 * d14), d13 - (dSin2 * d15)};
                arrayList = arrayList3;
                arrayList.add(dArr2);
            }
            iCeil = i2;
            arrayList2 = arrayList;
        }
        return arrayList2;
    }

    public PdfCanvas rectangle(double d, double d2, double d3, double d4) {
        this.contentStream.getOutputStream().writeDouble(d).writeSpace().writeDouble(d2).writeSpace().writeDouble(d3).writeSpace().writeDouble(d4).writeSpace().writeBytes(f3153re);
        return this;
    }

    public PdfCanvas rectangle(Rectangle rectangle) {
        return rectangle(rectangle.getX(), rectangle.getY(), rectangle.getWidth(), rectangle.getHeight());
    }

    public PdfCanvas roundRectangle(double d, double d2, double d3, double d4, double d5) {
        double d6;
        double d7;
        double d8;
        double d9 = d3;
        if (d9 < 0.0d) {
            double d10 = d + d9;
            d9 = -d9;
            d6 = d10;
        } else {
            d6 = d;
        }
        if (d4 < 0.0d) {
            d8 = -d4;
            d7 = d2 + d4;
        } else {
            d7 = d2;
            d8 = d4;
        }
        double d11 = d5 < 0.0d ? -d5 : d5;
        double d12 = d6 + d11;
        moveTo(d12, d7);
        double d13 = d6 + d9;
        double d14 = d13 - d11;
        lineTo(d14, d7);
        double d15 = d11 * 0.44769999384880066d;
        double d16 = d13 - d15;
        double d17 = d7 + d15;
        double d18 = d7 + d11;
        double d19 = d6;
        double d20 = d7;
        curveTo(d16, d7, d13, d17, d13, d18);
        double d21 = d20 + d8;
        double d22 = d21 - d11;
        lineTo(d13, d22);
        double d23 = d21 - d15;
        curveTo(d13, d23, d16, d21, d14, d21);
        lineTo(d12, d21);
        double d24 = d19 + d15;
        curveTo(d24, d21, d19, d23, d19, d22);
        lineTo(d19, d18);
        curveTo(d19, d17, d24, d20, d12, d20);
        return this;
    }

    public PdfCanvas circle(double d, double d2, double d3) {
        double d4 = d + d3;
        moveTo(d4, d2);
        double d5 = d3 * 0.552299976348877d;
        double d6 = d2 + d5;
        double d7 = d + d5;
        double d8 = d2 + d3;
        curveTo(d4, d6, d7, d8, d, d8);
        double d9 = d - d5;
        double d10 = d - d3;
        curveTo(d9, d8, d10, d6, d10, d2);
        double d11 = d2 - d5;
        double d12 = d2 - d3;
        curveTo(d10, d11, d9, d12, d, d12);
        curveTo(d7, d12, d4, d11, d4, d2);
        return this;
    }

    public PdfCanvas paintShading(PdfShading pdfShading) {
        this.contentStream.getOutputStream().write((PdfObject) this.resources.addShading(pdfShading)).writeSpace().writeBytes(f3157sh);
        return this;
    }

    public PdfCanvas closePath() {
        this.contentStream.getOutputStream().writeBytes(f3145h);
        return this;
    }

    public PdfCanvas closePathEoFillStroke() {
        checkDefaultDeviceGrayBlackColor(CheckColorMode.FILL_AND_STROKE);
        this.contentStream.getOutputStream().writeBytes(bStar);
        return this;
    }

    public PdfCanvas closePathFillStroke() {
        checkDefaultDeviceGrayBlackColor(CheckColorMode.FILL_AND_STROKE);
        this.contentStream.getOutputStream().writeBytes(f3137b);
        return this;
    }

    public PdfCanvas endPath() {
        this.contentStream.getOutputStream().writeBytes(f3151n);
        return this;
    }

    public PdfCanvas stroke() {
        checkDefaultDeviceGrayBlackColor(CheckColorMode.STROKE);
        this.contentStream.getOutputStream().writeBytes(f3123S);
        return this;
    }

    public PdfCanvas clip() {
        this.contentStream.getOutputStream().writeBytes(f3136W);
        return this;
    }

    public PdfCanvas eoClip() {
        this.contentStream.getOutputStream().writeBytes(WStar);
        return this;
    }

    public PdfCanvas closePathStroke() {
        this.contentStream.getOutputStream().writeBytes(f3156s);
        return this;
    }

    public PdfCanvas fill() {
        checkDefaultDeviceGrayBlackColor(CheckColorMode.FILL);
        this.contentStream.getOutputStream().writeBytes(f3142f);
        return this;
    }

    public PdfCanvas fillStroke() {
        checkDefaultDeviceGrayBlackColor(CheckColorMode.FILL_AND_STROKE);
        this.contentStream.getOutputStream().writeBytes(f3109B);
        return this;
    }

    public PdfCanvas eoFill() {
        checkDefaultDeviceGrayBlackColor(CheckColorMode.FILL);
        this.contentStream.getOutputStream().writeBytes(fStar);
        return this;
    }

    public PdfCanvas eoFillStroke() {
        checkDefaultDeviceGrayBlackColor(CheckColorMode.FILL_AND_STROKE);
        this.contentStream.getOutputStream().writeBytes(BStar);
        return this;
    }

    public PdfCanvas setLineWidth(float f) {
        if (this.currentGs.getLineWidth() == f) {
            return this;
        }
        this.currentGs.setLineWidth(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3159w);
        return this;
    }

    public PdfCanvas setLineCapStyle(int i) {
        if (this.currentGs.getLineCapStyle() == i) {
            return this;
        }
        this.currentGs.setLineCapStyle(i);
        this.contentStream.getOutputStream().writeInteger(i).writeSpace().writeBytes(f3118J);
        return this;
    }

    public PdfCanvas setLineJoinStyle(int i) {
        if (this.currentGs.getLineJoinStyle() == i) {
            return this;
        }
        this.currentGs.setLineJoinStyle(i);
        this.contentStream.getOutputStream().writeInteger(i).writeSpace().writeBytes(f3147j);
        return this;
    }

    public PdfCanvas setMiterLimit(float f) {
        if (this.currentGs.getMiterLimit() == f) {
            return this;
        }
        this.currentGs.setMiterLimit(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3120M);
        return this;
    }

    public PdfCanvas setLineDash(float f) {
        this.currentGs.setDashPattern(getDashPatternArray(f));
        this.contentStream.getOutputStream().writeByte(91).writeByte(93).writeSpace().writeFloat(f).writeSpace().writeBytes(f3141d);
        return this;
    }

    public PdfCanvas setLineDash(float f, float f2) {
        this.currentGs.setDashPattern(getDashPatternArray(new float[]{f}, f2));
        this.contentStream.getOutputStream().writeByte(91).writeFloat(f).writeByte(93).writeSpace().writeFloat(f2).writeSpace().writeBytes(f3141d);
        return this;
    }

    public PdfCanvas setLineDash(float f, float f2, float f3) {
        this.currentGs.setDashPattern(getDashPatternArray(new float[]{f, f2}, f3));
        this.contentStream.getOutputStream().writeByte(91).writeFloat(f).writeSpace().writeFloat(f2).writeByte(93).writeSpace().writeFloat(f3).writeSpace().writeBytes(f3141d);
        return this;
    }

    public PdfCanvas setLineDash(float[] fArr, float f) {
        this.currentGs.setDashPattern(getDashPatternArray(fArr, f));
        PdfOutputStream outputStream = this.contentStream.getOutputStream();
        outputStream.writeByte(91);
        for (int i = 0; i < fArr.length; i++) {
            outputStream.writeFloat(fArr[i]);
            if (i < fArr.length - 1) {
                outputStream.writeSpace();
            }
        }
        outputStream.writeByte(93).writeSpace().writeFloat(f).writeSpace().writeBytes(f3141d);
        return this;
    }

    public PdfCanvas setRenderingIntent(PdfName pdfName) {
        this.document.checkIsoConformance(pdfName, IsoKey.RENDERING_INTENT);
        if (pdfName.equals(this.currentGs.getRenderingIntent())) {
            return this;
        }
        this.currentGs.setRenderingIntent(pdfName);
        this.contentStream.getOutputStream().write((PdfObject) pdfName).writeSpace().writeBytes(f3155ri);
        return this;
    }

    public PdfCanvas setFlatnessTolerance(float f) {
        if (this.currentGs.getFlatnessTolerance() == f) {
            return this;
        }
        this.currentGs.setFlatnessTolerance(f);
        this.contentStream.getOutputStream().writeFloat(f).writeSpace().writeBytes(f3146i);
        return this;
    }

    public PdfCanvas setFillColor(Color color) {
        return setColor(color, true);
    }

    public PdfCanvas setStrokeColor(Color color) {
        return setColor(color, false);
    }

    public PdfCanvas setColor(Color color, boolean z) {
        if (color instanceof PatternColor) {
            return setColor(color.getColorSpace(), color.getColorValue(), ((PatternColor) color).getPattern(), z);
        }
        return setColor(color.getColorSpace(), color.getColorValue(), z);
    }

    public PdfCanvas setColor(PdfColorSpace pdfColorSpace, float[] fArr, boolean z) {
        return setColor(pdfColorSpace, fArr, null, z);
    }

    public PdfCanvas setColor(PdfColorSpace pdfColorSpace, float[] fArr, PdfPattern pdfPattern, boolean z) {
        CanvasGraphicsState canvasGraphicsState = this.currentGs;
        Color fillColor = z ? canvasGraphicsState.getFillColor() : canvasGraphicsState.getStrokeColor();
        Color colorCreateColor = createColor(pdfColorSpace, fArr, pdfPattern);
        if (fillColor.equals(colorCreateColor)) {
            return this;
        }
        if (z) {
            this.currentGs.setFillColor(colorCreateColor);
        } else {
            this.currentGs.setStrokeColor(colorCreateColor);
        }
        boolean zEquals = fillColor.getColorSpace().getPdfObject().equals(pdfColorSpace.getPdfObject());
        if (pdfColorSpace instanceof PdfDeviceCs.Gray) {
            this.contentStream.getOutputStream().writeFloats(fArr).writeSpace().writeBytes(z ? f3143g : f3116G);
        } else if (pdfColorSpace instanceof PdfDeviceCs.Rgb) {
            this.contentStream.getOutputStream().writeFloats(fArr).writeSpace().writeBytes(z ? f3154rg : f3122RG);
        } else if (pdfColorSpace instanceof PdfDeviceCs.Cmyk) {
            this.contentStream.getOutputStream().writeFloats(fArr).writeSpace().writeBytes(z ? f3148k : f3119K);
        } else if (pdfColorSpace instanceof PdfSpecialCs.UncoloredTilingPattern) {
            this.contentStream.getOutputStream().write((PdfObject) this.resources.addColorSpace(pdfColorSpace)).writeSpace().writeBytes(z ? f3140cs : f3112CS).writeNewLine().writeFloats(fArr).writeSpace().write((PdfObject) this.resources.addPattern(pdfPattern)).writeSpace().writeBytes(z ? scn : SCN);
        } else if (pdfColorSpace instanceof PdfSpecialCs.Pattern) {
            this.contentStream.getOutputStream().write((PdfObject) PdfName.Pattern).writeSpace().writeBytes(z ? f3140cs : f3112CS).writeNewLine().write((PdfObject) this.resources.addPattern(pdfPattern)).writeSpace().writeBytes(z ? scn : SCN);
        } else if (pdfColorSpace.getPdfObject().isIndirect()) {
            if (!zEquals) {
                this.contentStream.getOutputStream().write((PdfObject) this.resources.addColorSpace(pdfColorSpace)).writeSpace().writeBytes(z ? f3140cs : f3112CS);
            }
            this.contentStream.getOutputStream().writeFloats(fArr).writeSpace().writeBytes(z ? scn : SCN);
        }
        this.document.checkIsoConformance(this.currentGs, z ? IsoKey.FILL_COLOR : IsoKey.STROKE_COLOR, this.resources, this.contentStream);
        return this;
    }

    public PdfCanvas setFillColorGray(float f) {
        return setColor(gray, new float[]{f}, true);
    }

    public PdfCanvas setStrokeColorGray(float f) {
        return setColor(gray, new float[]{f}, false);
    }

    public PdfCanvas resetFillColorGray() {
        return setFillColorGray(0.0f);
    }

    public PdfCanvas resetStrokeColorGray() {
        return setStrokeColorGray(0.0f);
    }

    public PdfCanvas setFillColorRgb(float f, float f2, float f3) {
        return setColor(rgb, new float[]{f, f2, f3}, true);
    }

    public PdfCanvas setStrokeColorRgb(float f, float f2, float f3) {
        return setColor(rgb, new float[]{f, f2, f3}, false);
    }

    public PdfCanvas setFillColorShading(PdfPattern.Shading shading) {
        return setColor(pattern, null, shading, true);
    }

    public PdfCanvas setStrokeColorShading(PdfPattern.Shading shading) {
        return setColor(pattern, null, shading, false);
    }

    public PdfCanvas resetFillColorRgb() {
        return resetFillColorGray();
    }

    public PdfCanvas resetStrokeColorRgb() {
        return resetStrokeColorGray();
    }

    public PdfCanvas setFillColorCmyk(float f, float f2, float f3, float f4) {
        return setColor(cmyk, new float[]{f, f2, f3, f4}, true);
    }

    public PdfCanvas setStrokeColorCmyk(float f, float f2, float f3, float f4) {
        return setColor(cmyk, new float[]{f, f2, f3, f4}, false);
    }

    public PdfCanvas resetFillColorCmyk() {
        return setFillColorCmyk(0.0f, 0.0f, 0.0f, 1.0f);
    }

    public PdfCanvas resetStrokeColorCmyk() {
        return setStrokeColorCmyk(0.0f, 0.0f, 0.0f, 1.0f);
    }

    public PdfCanvas beginLayer(IPdfOCG iPdfOCG) {
        boolean z = iPdfOCG instanceof PdfLayer;
        if (z && ((PdfLayer) iPdfOCG).getTitle() != null) {
            throw new IllegalArgumentException("Illegal layer argument.");
        }
        if (this.layerDepth == null) {
            this.layerDepth = new ArrayList();
        }
        if (iPdfOCG instanceof PdfLayerMembership) {
            this.layerDepth.add(1);
            addToPropertiesAndBeginLayer(iPdfOCG);
        } else if (z) {
            int i = 0;
            for (PdfLayer parent = (PdfLayer) iPdfOCG; parent != null; parent = parent.getParent()) {
                if (parent.getTitle() == null) {
                    addToPropertiesAndBeginLayer(parent);
                    i++;
                }
            }
            this.layerDepth.add(Integer.valueOf(i));
        } else {
            throw new UnsupportedOperationException("Unsupported type for operand: layer");
        }
        return this;
    }

    public PdfCanvas endLayer() {
        List<Integer> list = this.layerDepth;
        if (list != null && !list.isEmpty()) {
            int iIntValue = this.layerDepth.get(r0.size() - 1).intValue();
            this.layerDepth.remove(r1.size() - 1);
            while (true) {
                int i = iIntValue - 1;
                if (iIntValue <= 0) {
                    return this;
                }
                this.contentStream.getOutputStream().writeBytes(EMC).writeNewLine();
                iIntValue = i;
            }
        } else {
            throw new PdfException(KernelExceptionMessageConstant.UNBALANCED_LAYER_OPERATORS);
        }
    }

    public PdfXObject addImageWithTransformationMatrix(ImageData imageData, float f, float f2, float f3, float f4, float f5, float f6) {
        return addImageWithTransformationMatrix(imageData, f, f2, f3, f4, f5, f6, false);
    }

    public PdfXObject addImageWithTransformationMatrix(ImageData imageData, float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
        if (imageData.getOriginalType() == ImageType.WMF) {
            PdfXObject pdfXObjectCreateFormXObject = new WmfImageHelper(imageData).createFormXObject(this.document);
            addXObjectWithTransformationMatrix(pdfXObjectCreateFormXObject, f, f2, f3, f4, f5, f6);
            return pdfXObjectCreateFormXObject;
        }
        PdfImageXObject pdfImageXObject = new PdfImageXObject(imageData);
        if (z && imageData.canImageBeInline()) {
            addInlineImage(pdfImageXObject, f, f2, f3, f4, f5, f6);
            return null;
        }
        addImageWithTransformationMatrix(pdfImageXObject, f, f2, f3, f4, f5, f6);
        return pdfImageXObject;
    }

    public PdfXObject addImageFittedIntoRectangle(ImageData imageData, Rectangle rectangle, boolean z) {
        return addImageWithTransformationMatrix(imageData, rectangle.getWidth(), 0.0f, 0.0f, rectangle.getHeight(), rectangle.getX(), rectangle.getY(), z);
    }

    public PdfXObject addImageAt(ImageData imageData, float f, float f2, boolean z) {
        if (imageData.getOriginalType() == ImageType.WMF) {
            PdfXObject pdfXObjectCreateFormXObject = new WmfImageHelper(imageData).createFormXObject(this.document);
            addXObjectWithTransformationMatrix(pdfXObjectCreateFormXObject, 1.0f, 0.0f, 0.0f, 1.0f, f, f2);
            return pdfXObjectCreateFormXObject;
        }
        PdfImageXObject pdfImageXObject = new PdfImageXObject(imageData);
        if (z && imageData.canImageBeInline()) {
            addInlineImage(pdfImageXObject, imageData.getWidth(), 0.0f, 0.0f, imageData.getHeight(), f, f2);
            return null;
        }
        addImageWithTransformationMatrix(pdfImageXObject, imageData.getWidth(), 0.0f, 0.0f, imageData.getHeight(), f, f2);
        return pdfImageXObject;
    }

    public PdfCanvas addXObjectWithTransformationMatrix(PdfXObject pdfXObject, float f, float f2, float f3, float f4, float f5, float f6) {
        if (pdfXObject instanceof PdfFormXObject) {
            return addFormWithTransformationMatrix((PdfFormXObject) pdfXObject, f, f2, f3, f4, f5, f6, true);
        }
        if (pdfXObject instanceof PdfImageXObject) {
            return addImageWithTransformationMatrix(pdfXObject, f, f2, f3, f4, f5, f6);
        }
        throw new IllegalArgumentException("PdfFormXObject or PdfImageXObject expected.");
    }

    public PdfCanvas addXObjectAt(PdfXObject pdfXObject, float f, float f2) {
        if (pdfXObject instanceof PdfFormXObject) {
            return addFormAt((PdfFormXObject) pdfXObject, f, f2);
        }
        if (pdfXObject instanceof PdfImageXObject) {
            return addImageAt((PdfImageXObject) pdfXObject, f, f2);
        }
        throw new IllegalArgumentException("PdfFormXObject or PdfImageXObject expected.");
    }

    @Deprecated
    public PdfCanvas addXObject(PdfXObject pdfXObject, float f, float f2) {
        if (pdfXObject instanceof PdfFormXObject) {
            return addForm((PdfFormXObject) pdfXObject, f, f2);
        }
        if (pdfXObject instanceof PdfImageXObject) {
            return addImageAt((PdfImageXObject) pdfXObject, f, f2);
        }
        throw new IllegalArgumentException("PdfFormXObject or PdfImageXObject expected.");
    }

    public PdfCanvas addXObjectFittedIntoRectangle(PdfXObject pdfXObject, Rectangle rectangle) {
        if (pdfXObject instanceof PdfFormXObject) {
            return addFormFittedIntoRectangle((PdfFormXObject) pdfXObject, rectangle);
        }
        if (pdfXObject instanceof PdfImageXObject) {
            return addImageFittedIntoRectangle((PdfImageXObject) pdfXObject, rectangle);
        }
        throw new IllegalArgumentException("PdfFormXObject or PdfImageXObject expected.");
    }

    public PdfCanvas addXObject(PdfXObject pdfXObject) {
        if (pdfXObject instanceof PdfFormXObject) {
            return addFormWithTransformationMatrix((PdfFormXObject) pdfXObject, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, false);
        }
        if (pdfXObject instanceof PdfImageXObject) {
            return addImageAt((PdfImageXObject) pdfXObject, 0.0f, 0.0f);
        }
        throw new IllegalArgumentException("PdfFormXObject or PdfImageXObject expected.");
    }

    public PdfCanvas setExtGState(PdfExtGState pdfExtGState) {
        if (!pdfExtGState.isFlushed()) {
            this.currentGs.updateFromExtGState(pdfExtGState, this.document);
        }
        this.contentStream.getOutputStream().write((PdfObject) this.resources.addExtGState(pdfExtGState)).writeSpace().writeBytes(f3144gs);
        this.document.checkIsoConformance(this.currentGs, IsoKey.EXTENDED_GRAPHICS_STATE, null, this.contentStream);
        return this;
    }

    public PdfExtGState setExtGState(PdfDictionary pdfDictionary) {
        PdfExtGState pdfExtGState = new PdfExtGState(pdfDictionary);
        setExtGState(pdfExtGState);
        return pdfExtGState;
    }

    public PdfCanvas beginMarkedContent(PdfName pdfName) {
        return beginMarkedContent(pdfName, null);
    }

    public PdfCanvas beginMarkedContent(PdfName pdfName, PdfDictionary pdfDictionary) {
        this.mcDepth++;
        PdfOutputStream pdfOutputStreamWriteSpace = this.contentStream.getOutputStream().write((PdfObject) pdfName).writeSpace();
        if (pdfDictionary == null) {
            pdfOutputStreamWriteSpace.writeBytes(BMC);
        } else if (pdfDictionary.getIndirectReference() == null) {
            pdfOutputStreamWriteSpace.write((PdfObject) pdfDictionary).writeSpace().writeBytes(BDC);
        } else {
            pdfOutputStreamWriteSpace.write((PdfObject) this.resources.addProperties(pdfDictionary)).writeSpace().writeBytes(BDC);
        }
        return this;
    }

    public PdfCanvas endMarkedContent() {
        int i = this.mcDepth - 1;
        this.mcDepth = i;
        if (i < 0) {
            throw new PdfException(KernelExceptionMessageConstant.UNBALANCED_BEGIN_END_MARKED_CONTENT_OPERATORS);
        }
        this.contentStream.getOutputStream().writeBytes(EMC);
        return this;
    }

    public PdfCanvas openTag(CanvasTag canvasTag) {
        return canvasTag.getRole() == null ? this : beginMarkedContent(canvasTag.getRole(), canvasTag.getProperties());
    }

    public PdfCanvas openTag(TagReference tagReference) {
        if (tagReference.getRole() == null) {
            return this;
        }
        CanvasTag canvasTag = new CanvasTag(tagReference.getRole());
        canvasTag.setProperties(tagReference.getProperties()).addProperty(PdfName.MCID, new PdfNumber(tagReference.createNextMcid()));
        return openTag(canvasTag);
    }

    public PdfCanvas closeTag() {
        return endMarkedContent();
    }

    public PdfCanvas writeLiteral(String str) {
        this.contentStream.getOutputStream().writeString(str);
        return this;
    }

    public PdfCanvas writeLiteral(char c) {
        this.contentStream.getOutputStream().writeInteger(c);
        return this;
    }

    public PdfCanvas writeLiteral(float f) {
        this.contentStream.getOutputStream().writeFloat(f);
        return this;
    }

    public PdfStream getContentStream() {
        return this.contentStream;
    }

    protected void addInlineImage(PdfImageXObject pdfImageXObject, float f, float f2, float f3, float f4, float f5, float f6) {
        this.document.checkIsoConformance(pdfImageXObject.getPdfObject(), IsoKey.INLINE_IMAGE, this.resources, this.contentStream);
        saveState();
        concatMatrix(f, f2, f3, f4, f5, f6);
        PdfOutputStream outputStream = this.contentStream.getOutputStream();
        outputStream.writeBytes(f3110BI);
        byte[] bytes = pdfImageXObject.getPdfObject().getBytes(false);
        for (Map.Entry<PdfName, PdfObject> entry : pdfImageXObject.getPdfObject().entrySet()) {
            PdfName key = entry.getKey();
            if (!PdfName.Type.equals(key) && !PdfName.Subtype.equals(key) && !PdfName.Length.equals(key)) {
                outputStream.write((PdfObject) entry.getKey()).writeSpace();
                outputStream.write(entry.getValue()).writeNewLine();
            }
        }
        if (this.document.getPdfVersion().compareTo(PdfVersion.PDF_2_0) >= 0) {
            outputStream.write((PdfObject) PdfName.Length).writeSpace();
            outputStream.write((PdfObject) new PdfNumber(bytes.length)).writeNewLine();
        }
        outputStream.writeBytes(f3117ID);
        outputStream.writeBytes(bytes).writeNewLine().writeBytes(f3114EI).writeNewLine();
        restoreState();
    }

    private PdfCanvas addFormWithTransformationMatrix(PdfFormXObject pdfFormXObject, float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
        saveState();
        if (z || !isIdentityMatrix(f, f2, f3, f4, f5, f6)) {
            concatMatrix(f, f2, f3, f4, f5, f6);
        }
        this.contentStream.getOutputStream().write((PdfObject) this.resources.addForm(pdfFormXObject)).writeSpace().writeBytes(f3113Do);
        restoreState();
        return this;
    }

    private PdfCanvas addFormAt(PdfFormXObject pdfFormXObject, float f, float f2) {
        Rectangle rectangleCalculateBBoxMultipliedByMatrix = PdfFormXObject.calculateBBoxMultipliedByMatrix(pdfFormXObject);
        Vector vector = new Vector(rectangleCalculateBBoxMultipliedByMatrix.getLeft(), rectangleCalculateBBoxMultipliedByMatrix.getBottom(), 1.0f);
        Vector vector2 = new Vector(rectangleCalculateBBoxMultipliedByMatrix.getRight(), rectangleCalculateBBoxMultipliedByMatrix.getTop(), 1.0f);
        float[] fArrCalculateTransformationMatrix = calculateTransformationMatrix(new Vector(f, f2, 1.0f), new Vector((f + vector2.get(0)) - vector.get(0), (f2 + vector2.get(1)) - vector.get(1), 1.0f), vector, vector2);
        return addFormWithTransformationMatrix(pdfFormXObject, fArrCalculateTransformationMatrix[0], fArrCalculateTransformationMatrix[1], fArrCalculateTransformationMatrix[2], fArrCalculateTransformationMatrix[3], fArrCalculateTransformationMatrix[4], fArrCalculateTransformationMatrix[5], false);
    }

    @Deprecated
    private PdfCanvas addForm(PdfFormXObject pdfFormXObject, float f, float f2) {
        return addFormWithTransformationMatrix(pdfFormXObject, 1.0f, 0.0f, 0.0f, 1.0f, f, f2, true);
    }

    private PdfCanvas addFormFittedIntoRectangle(PdfFormXObject pdfFormXObject, Rectangle rectangle) {
        Rectangle rectangleCalculateBBoxMultipliedByMatrix = PdfFormXObject.calculateBBoxMultipliedByMatrix(pdfFormXObject);
        float[] fArrCalculateTransformationMatrix = calculateTransformationMatrix(new Vector(rectangle.getLeft(), rectangle.getBottom(), 1.0f), new Vector(rectangle.getRight(), rectangle.getTop(), 1.0f), new Vector(rectangleCalculateBBoxMultipliedByMatrix.getLeft(), rectangleCalculateBBoxMultipliedByMatrix.getBottom(), 1.0f), new Vector(rectangleCalculateBBoxMultipliedByMatrix.getRight(), rectangleCalculateBBoxMultipliedByMatrix.getTop(), 1.0f));
        return addFormWithTransformationMatrix(pdfFormXObject, fArrCalculateTransformationMatrix[0], fArrCalculateTransformationMatrix[1], fArrCalculateTransformationMatrix[2], fArrCalculateTransformationMatrix[3], fArrCalculateTransformationMatrix[4], fArrCalculateTransformationMatrix[5], false);
    }

    private PdfCanvas addImageWithTransformationMatrix(PdfXObject pdfXObject, float f, float f2, float f3, float f4, float f5, float f6) {
        PdfName pdfNameAddImage;
        saveState();
        concatMatrix(f, f2, f3, f4, f5, f6);
        if (pdfXObject instanceof PdfImageXObject) {
            pdfNameAddImage = this.resources.addImage((PdfImageXObject) pdfXObject);
        } else {
            pdfNameAddImage = this.resources.addImage(pdfXObject.getPdfObject());
        }
        this.contentStream.getOutputStream().write((PdfObject) pdfNameAddImage).writeSpace().writeBytes(f3113Do);
        restoreState();
        return this;
    }

    private PdfCanvas addImageAt(PdfImageXObject pdfImageXObject, float f, float f2) {
        return addImageWithTransformationMatrix(pdfImageXObject, pdfImageXObject.getWidth(), 0.0f, 0.0f, pdfImageXObject.getHeight(), f, f2);
    }

    private PdfCanvas addImageFittedIntoRectangle(PdfImageXObject pdfImageXObject, Rectangle rectangle) {
        return addImageWithTransformationMatrix(pdfImageXObject, rectangle.getWidth(), 0.0f, 0.0f, rectangle.getHeight(), rectangle.getX(), rectangle.getY());
    }

    private PdfStream ensureStreamDataIsReadyToBeProcessed(PdfStream pdfStream) {
        if (!pdfStream.isFlushed() && (pdfStream.getOutputStream() == null || pdfStream.containsKey(PdfName.Filter))) {
            try {
                pdfStream.setData(pdfStream.getBytes());
            } catch (Exception unused) {
            }
        }
        return pdfStream;
    }

    private void showTextInt(String str) {
        this.document.checkIsoConformance(this.currentGs, IsoKey.FONT_GLYPHS, null, this.contentStream);
        if (this.currentGs.getFont() == null) {
            throw new PdfException(KernelExceptionMessageConstant.FONT_AND_SIZE_MUST_BE_SET_BEFORE_WRITING_ANY_TEXT, this.currentGs);
        }
        this.currentGs.getFont().writeText(str, this.contentStream.getOutputStream());
    }

    private void addToPropertiesAndBeginLayer(IPdfOCG iPdfOCG) {
        this.contentStream.getOutputStream().write((PdfObject) PdfName.f3042OC).writeSpace().write((PdfObject) this.resources.addProperties(iPdfOCG.getPdfObject())).writeSpace().writeBytes(BDC).writeNewLine();
    }

    private Color createColor(PdfColorSpace pdfColorSpace, float[] fArr, PdfPattern pdfPattern) {
        if (pdfColorSpace instanceof PdfSpecialCs.UncoloredTilingPattern) {
            return new PatternColor((PdfPattern.Tiling) pdfPattern, ((PdfSpecialCs.UncoloredTilingPattern) pdfColorSpace).getUnderlyingColorSpace(), fArr);
        }
        if (pdfColorSpace instanceof PdfSpecialCs.Pattern) {
            return new PatternColor(pdfPattern);
        }
        return Color.makeColor(pdfColorSpace, fArr);
    }

    private PdfArray getDashPatternArray(float f) {
        return getDashPatternArray(null, f);
    }

    private PdfArray getDashPatternArray(float[] fArr, float f) {
        PdfArray pdfArray = new PdfArray();
        PdfArray pdfArray2 = new PdfArray();
        if (fArr != null) {
            for (float f2 : fArr) {
                pdfArray2.add(new PdfNumber(f2));
            }
        }
        pdfArray.add(pdfArray2);
        pdfArray.add(new PdfNumber(f));
        return pdfArray;
    }

    private void applyRotation(PdfPage pdfPage) {
        Rectangle pageSizeWithRotation = pdfPage.getPageSizeWithRotation();
        int rotation = pdfPage.getRotation();
        if (rotation == 90) {
            concatMatrix(0.0d, 1.0d, -1.0d, 0.0d, pageSizeWithRotation.getTop(), 0.0d);
        } else if (rotation == 180) {
            concatMatrix(-1.0d, 0.0d, 0.0d, -1.0d, pageSizeWithRotation.getRight(), pageSizeWithRotation.getTop());
        } else {
            if (rotation != 270) {
                return;
            }
            concatMatrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, pageSizeWithRotation.getRight());
        }
    }

    private PdfCanvas drawArc(double d, double d2, double d3, double d4, double d5, double d6, boolean z) {
        List<double[]> listBezierArc = bezierArc(d, d2, d3, d4, d5, d6);
        if (listBezierArc.isEmpty()) {
            return this;
        }
        double[] dArr = listBezierArc.get(0);
        if (z) {
            lineTo(dArr[0], dArr[1]);
        } else {
            moveTo(dArr[0], dArr[1]);
        }
        for (int i = 0; i < listBezierArc.size(); i++) {
            double[] dArr2 = listBezierArc.get(i);
            curveTo(dArr2[2], dArr2[3], dArr2[4], dArr2[5], dArr2[6], dArr2[7]);
        }
        return this;
    }

    private void checkDefaultDeviceGrayBlackColor(CheckColorMode checkColorMode) {
        if (this.defaultDeviceGrayBlackColorCheckRequired) {
            if (this.currentGs.getFillColor() == DeviceGray.BLACK && (checkColorMode == CheckColorMode.FILL || checkColorMode == CheckColorMode.FILL_AND_STROKE)) {
                this.document.checkIsoConformance(this.currentGs, IsoKey.FILL_COLOR, this.resources, this.contentStream);
                this.defaultDeviceGrayBlackColorCheckRequired = false;
            } else if (this.currentGs.getStrokeColor() == DeviceGray.BLACK) {
                if (checkColorMode == CheckColorMode.STROKE || checkColorMode == CheckColorMode.FILL_AND_STROKE) {
                    this.document.checkIsoConformance(this.currentGs, IsoKey.STROKE_COLOR, this.resources, this.contentStream);
                    this.defaultDeviceGrayBlackColorCheckRequired = false;
                }
            }
        }
    }

    private CheckColorMode getColorKeyForText() {
        int textRenderingMode = this.currentGs.getTextRenderingMode();
        if (textRenderingMode != 0) {
            if (textRenderingMode != 1) {
                if (textRenderingMode != 2) {
                    if (textRenderingMode != 4) {
                        if (textRenderingMode != 5) {
                            if (textRenderingMode != 6) {
                                return CheckColorMode.NONE;
                            }
                        }
                    }
                }
                return CheckColorMode.FILL_AND_STROKE;
            }
            return CheckColorMode.STROKE;
        }
        return CheckColorMode.FILL;
    }

    private static PdfStream getPageStream(PdfPage pdfPage) {
        PdfStream lastContentStream = pdfPage.getLastContentStream();
        return (lastContentStream == null || lastContentStream.getOutputStream() == null || lastContentStream.containsKey(PdfName.Filter)) ? pdfPage.newContentStreamAfter() : lastContentStream;
    }

    private static <T> List<T> iteratorToList(Iterator<T> it) {
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    private static float[] calculateTransformationMatrix(Vector vector, Vector vector2, Vector vector3, Vector vector4) {
        float[] fArr = new float[6];
        fArr[0] = (vector.get(0) - vector2.get(0)) / (vector3.get(0) - vector4.get(0));
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = (vector.get(1) - vector2.get(1)) / (vector3.get(1) - vector4.get(1));
        fArr[4] = vector.get(0) - (vector3.get(0) * fArr[0]);
        fArr[5] = vector.get(1) - (vector3.get(1) * fArr[3]);
        return fArr;
    }

    private static boolean isIdentityMatrix(float f, float f2, float f3, float f4, float f5, float f6) {
        return Math.abs(1.0f - f) < 1.0E-4f && Math.abs(f2) < 1.0E-4f && Math.abs(f3) < 1.0E-4f && Math.abs(1.0f - f4) < 1.0E-4f && Math.abs(f5) < 1.0E-4f && Math.abs(f6) < 1.0E-4f;
    }
}
