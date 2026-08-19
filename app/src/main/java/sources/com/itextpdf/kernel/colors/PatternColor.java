package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;

/* JADX INFO: loaded from: classes6.dex */
public class PatternColor extends Color {
    private PdfPattern pattern;
    private Color underlyingColor;

    public PatternColor(PdfPattern pdfPattern) {
        super(new PdfSpecialCs.Pattern(), null);
        this.pattern = pdfPattern;
    }

    public PatternColor(PdfPattern.Tiling tiling, Color color) {
        this(tiling, color.getColorSpace(), color.getColorValue());
    }

    public PatternColor(PdfPattern.Tiling tiling, PdfColorSpace pdfColorSpace, float[] fArr) {
        this(tiling, new PdfSpecialCs.UncoloredTilingPattern(ensureNotPatternCs(pdfColorSpace)), fArr);
    }

    public PatternColor(PdfPattern.Tiling tiling, PdfSpecialCs.UncoloredTilingPattern uncoloredTilingPattern, float[] fArr) {
        super(uncoloredTilingPattern, fArr);
        this.pattern = tiling;
        this.underlyingColor = makeColor(uncoloredTilingPattern.getUnderlyingColorSpace(), fArr);
    }

    public PdfPattern getPattern() {
        return this.pattern;
    }

    @Override // com.itextpdf.kernel.colors.Color
    public void setColorValue(float[] fArr) {
        super.setColorValue(fArr);
        this.underlyingColor.setColorValue(fArr);
    }

    @Override // com.itextpdf.kernel.colors.Color
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        PatternColor patternColor = (PatternColor) obj;
        if (!this.pattern.equals(patternColor.pattern)) {
            return false;
        }
        Color color = this.underlyingColor;
        if (color != null) {
            if (!color.equals(patternColor.underlyingColor)) {
                return false;
            }
        } else if (patternColor.underlyingColor != null) {
            return false;
        }
        return true;
    }

    private static PdfColorSpace ensureNotPatternCs(PdfColorSpace pdfColorSpace) {
        if (pdfColorSpace instanceof PdfSpecialCs.Pattern) {
            throw new IllegalArgumentException("underlyingCS");
        }
        return pdfColorSpace;
    }
}
