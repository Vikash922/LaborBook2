package com.itextpdf.kernel.pdf.canvas.parser.data;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfType0Font;
import com.itextpdf.kernel.geom.LineSegment;
import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.canvas.CanvasTag;
import com.itextpdf.p017io.font.otf.GlyphLine;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.shadow.apache.commons.lang3.CharEncoding;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class TextRenderInfo extends AbstractRenderInfo {
    private final List<CanvasTag> canvasTagHierarchy;
    private final PdfString string;
    private String text;
    private final Matrix textMatrix;
    private final Matrix textToUserSpaceTransformMatrix;
    private float unscaledWidth;

    public TextRenderInfo(PdfString pdfString, CanvasGraphicsState canvasGraphicsState, Matrix matrix, Stack<CanvasTag> stack) {
        super(canvasGraphicsState);
        this.text = null;
        this.unscaledWidth = Float.NaN;
        this.string = pdfString;
        this.textToUserSpaceTransformMatrix = matrix.multiply(canvasGraphicsState.getCtm());
        this.textMatrix = matrix;
        this.canvasTagHierarchy = Collections.unmodifiableList(new ArrayList(stack));
    }

    private TextRenderInfo(TextRenderInfo textRenderInfo, PdfString pdfString, float f) {
        super(textRenderInfo.f3175gs);
        this.text = null;
        this.unscaledWidth = Float.NaN;
        this.string = pdfString;
        Matrix matrix = new Matrix(f, 0.0f);
        this.textToUserSpaceTransformMatrix = matrix.multiply(textRenderInfo.textToUserSpaceTransformMatrix);
        this.textMatrix = matrix.multiply(textRenderInfo.textMatrix);
        this.canvasTagHierarchy = textRenderInfo.canvasTagHierarchy;
    }

    public String getText() {
        checkGraphicsState();
        if (this.text == null) {
            GlyphLine glyphLineDecodeIntoGlyphLine = this.f3175gs.getFont().decodeIntoGlyphLine(this.string);
            if (!isReversedChars()) {
                this.text = glyphLineDecodeIntoGlyphLine.toUnicodeString(glyphLineDecodeIntoGlyphLine.start, glyphLineDecodeIntoGlyphLine.end);
            } else {
                StringBuilder sb = new StringBuilder(glyphLineDecodeIntoGlyphLine.end - glyphLineDecodeIntoGlyphLine.start);
                int i = glyphLineDecodeIntoGlyphLine.end;
                while (true) {
                    i--;
                    if (i < glyphLineDecodeIntoGlyphLine.start) {
                        break;
                    }
                    sb.append(glyphLineDecodeIntoGlyphLine.get(i).getUnicodeChars());
                }
                this.text = sb.toString();
            }
        }
        return this.text;
    }

    public PdfString getPdfString() {
        return this.string;
    }

    public Matrix getTextMatrix() {
        return this.textMatrix;
    }

    public boolean hasMcid(int i) {
        return hasMcid(i, false);
    }

    public boolean hasMcid(int i, boolean z) {
        if (z) {
            if (this.canvasTagHierarchy != null) {
                int mcid = getMcid();
                return mcid != -1 && mcid == i;
            }
        } else {
            for (CanvasTag canvasTag : this.canvasTagHierarchy) {
                if (canvasTag.hasMcid() && canvasTag.getMcid() == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public int getMcid() {
        for (CanvasTag canvasTag : this.canvasTagHierarchy) {
            if (canvasTag.hasMcid()) {
                return canvasTag.getMcid();
            }
        }
        return -1;
    }

    public LineSegment getBaseline() {
        checkGraphicsState();
        return getUnscaledBaselineWithOffset(this.f3175gs.getTextRise() + 0.0f).transformBy(this.textToUserSpaceTransformMatrix);
    }

    public LineSegment getUnscaledBaseline() {
        checkGraphicsState();
        return getUnscaledBaselineWithOffset(this.f3175gs.getTextRise() + 0.0f);
    }

    public LineSegment getAscentLine() {
        checkGraphicsState();
        return getUnscaledBaselineWithOffset(getAscentDescent()[0] + this.f3175gs.getTextRise()).transformBy(this.textToUserSpaceTransformMatrix);
    }

    public LineSegment getDescentLine() {
        checkGraphicsState();
        return getUnscaledBaselineWithOffset(getAscentDescent()[1] + this.f3175gs.getTextRise()).transformBy(this.textToUserSpaceTransformMatrix);
    }

    public PdfFont getFont() {
        checkGraphicsState();
        return this.f3175gs.getFont();
    }

    public float getRise() {
        checkGraphicsState();
        if (this.f3175gs.getTextRise() == 0.0f) {
            return 0.0f;
        }
        return convertHeightFromTextSpaceToUserSpace(this.f3175gs.getTextRise());
    }

    public List<TextRenderInfo> getCharacterRenderInfos() {
        checkGraphicsState();
        ArrayList arrayList = new ArrayList(this.string.getValue().length());
        float fontSize = 0.0f;
        for (PdfString pdfString : splitString(this.string)) {
            float[] widthAndWordSpacing = getWidthAndWordSpacing(pdfString);
            arrayList.add(new TextRenderInfo(this, pdfString, fontSize));
            fontSize += ((widthAndWordSpacing[0] * this.f3175gs.getFontSize()) + this.f3175gs.getCharSpacing() + widthAndWordSpacing[1]) * (this.f3175gs.getHorizontalScaling() / 100.0f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((TextRenderInfo) it.next()).getUnscaledWidth();
        }
        return arrayList;
    }

    public float getSingleSpaceWidth() {
        return convertWidthFromTextSpaceToUserSpace(getUnscaledFontSpaceWidth());
    }

    public int getTextRenderMode() {
        checkGraphicsState();
        return this.f3175gs.getTextRenderingMode();
    }

    public Color getFillColor() {
        checkGraphicsState();
        return this.f3175gs.getFillColor();
    }

    public Color getStrokeColor() {
        checkGraphicsState();
        return this.f3175gs.getStrokeColor();
    }

    public float getFontSize() {
        checkGraphicsState();
        return this.f3175gs.getFontSize();
    }

    public float getHorizontalScaling() {
        checkGraphicsState();
        return this.f3175gs.getHorizontalScaling();
    }

    public float getCharSpacing() {
        checkGraphicsState();
        return this.f3175gs.getCharSpacing();
    }

    public float getWordSpacing() {
        checkGraphicsState();
        return this.f3175gs.getWordSpacing();
    }

    public float getLeading() {
        checkGraphicsState();
        return this.f3175gs.getLeading();
    }

    public String getActualText() {
        Iterator<CanvasTag> it = this.canvasTagHierarchy.iterator();
        String actualText = null;
        while (it.hasNext() && (actualText = it.next().getActualText()) == null) {
        }
        return actualText;
    }

    public String getExpansionText() {
        Iterator<CanvasTag> it = this.canvasTagHierarchy.iterator();
        String expansionText = null;
        while (it.hasNext() && (expansionText = it.next().getExpansionText()) == null) {
        }
        return expansionText;
    }

    public boolean isReversedChars() {
        for (CanvasTag canvasTag : this.canvasTagHierarchy) {
            if (canvasTag != null && PdfName.ReversedChars.equals(canvasTag.getRole())) {
                return true;
            }
        }
        return false;
    }

    public List<CanvasTag> getCanvasTagHierarchy() {
        return this.canvasTagHierarchy;
    }

    public float getUnscaledWidth() {
        if (Float.isNaN(this.unscaledWidth)) {
            this.unscaledWidth = getPdfStringWidth(this.string, false);
        }
        return this.unscaledWidth;
    }

    private LineSegment getUnscaledBaselineWithOffset(float f) {
        checkGraphicsState();
        String unicodeString = this.string.toUnicodeString();
        return new LineSegment(new Vector(0.0f, f, 1.0f), new Vector(getUnscaledWidth() - ((this.f3175gs.getCharSpacing() + ((unicodeString.length() <= 0 || unicodeString.charAt(unicodeString.length() + (-1)) != ' ') ? 0.0f : this.f3175gs.getWordSpacing())) * (this.f3175gs.getHorizontalScaling() / 100.0f)), f, 1.0f));
    }

    private float convertWidthFromTextSpaceToUserSpace(float f) {
        return new LineSegment(new Vector(0.0f, 0.0f, 1.0f), new Vector(f, 0.0f, 1.0f)).transformBy(this.textToUserSpaceTransformMatrix).getLength();
    }

    private float convertHeightFromTextSpaceToUserSpace(float f) {
        return new LineSegment(new Vector(0.0f, 0.0f, 1.0f), new Vector(0.0f, f, 1.0f)).transformBy(this.textToUserSpaceTransformMatrix).getLength();
    }

    private float getUnscaledFontSpaceWidth() {
        checkGraphicsState();
        int width = this.f3175gs.getFont().getWidth(32);
        if (width == 0) {
            width = this.f3175gs.getFont().getFontProgram().getAvgWidth();
        }
        return ((((((float) (((double) width) / 1000.0d)) * this.f3175gs.getFontSize()) + this.f3175gs.getCharSpacing()) + this.f3175gs.getWordSpacing()) * this.f3175gs.getHorizontalScaling()) / 100.0f;
    }

    private float getPdfStringWidth(PdfString pdfString, boolean z) {
        checkGraphicsState();
        if (z) {
            float[] widthAndWordSpacing = getWidthAndWordSpacing(pdfString);
            return (float) (((((((double) widthAndWordSpacing[0]) * ((double) this.f3175gs.getFontSize())) + ((double) this.f3175gs.getCharSpacing())) + ((double) widthAndWordSpacing[1])) * ((double) this.f3175gs.getHorizontalScaling())) / 100.0d);
        }
        float pdfStringWidth = 0.0f;
        for (PdfString pdfString2 : splitString(pdfString)) {
            pdfStringWidth += getPdfStringWidth(pdfString2, true);
        }
        return pdfStringWidth;
    }

    private float[] getWidthAndWordSpacing(PdfString pdfString) {
        checkGraphicsState();
        return new float[]{(float) (((double) this.f3175gs.getFont().getContentWidth(pdfString)) / 1000.0d), StringUtils.SPACE.equals(pdfString.getValue()) ? this.f3175gs.getWordSpacing() : 0.0f};
    }

    private int getCharCode(String str) {
        try {
            byte[] bytes = str.getBytes(CharEncoding.UTF_16BE);
            int i = 0;
            for (int i2 = 0; i2 < bytes.length - 1; i2++) {
                i = (i + (bytes[i2] & 255)) << 8;
            }
            return bytes.length > 0 ? i + (bytes[bytes.length - 1] & 255) : i;
        } catch (UnsupportedEncodingException unused) {
            return 0;
        }
    }

    private PdfString[] splitString(PdfString pdfString) {
        checkGraphicsState();
        if (this.f3175gs.getFont() instanceof PdfType0Font) {
            ArrayList arrayList = new ArrayList();
            GlyphLine glyphLineDecodeIntoGlyphLine = this.f3175gs.getFont().decodeIntoGlyphLine(pdfString);
            for (int i = glyphLineDecodeIntoGlyphLine.start; i < glyphLineDecodeIntoGlyphLine.end; i++) {
                arrayList.add(new PdfString(this.f3175gs.getFont().convertToBytes(glyphLineDecodeIntoGlyphLine.get(i))));
            }
            return (PdfString[]) arrayList.toArray(new PdfString[arrayList.size()]);
        }
        PdfString[] pdfStringArr = new PdfString[pdfString.getValue().length()];
        int i2 = 0;
        while (i2 < pdfString.getValue().length()) {
            int i3 = i2 + 1;
            pdfStringArr[i2] = new PdfString(pdfString.getValue().substring(i2, i3), pdfString.getEncoding());
            i2 = i3;
        }
        return pdfStringArr;
    }

    private float[] getAscentDescent() {
        checkGraphicsState();
        float typoAscender = this.f3175gs.getFont().getFontProgram().getFontMetrics().getTypoAscender();
        float typoDescender = this.f3175gs.getFont().getFontProgram().getFontMetrics().getTypoDescender();
        if (typoDescender > 0.0f) {
            typoDescender = -typoDescender;
        }
        float f = typoAscender - typoDescender;
        if (f >= 700.0f) {
            f = 1000.0f;
        }
        return new float[]{(typoAscender / f) * this.f3175gs.getFontSize(), (typoDescender / f) * this.f3175gs.getFontSize()};
    }
}
