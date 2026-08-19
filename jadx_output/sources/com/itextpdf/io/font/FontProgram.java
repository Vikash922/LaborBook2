package com.itextpdf.io.font;

import com.itextpdf.io.font.otf.Glyph;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class FontProgram {
    public static final int DEFAULT_WIDTH = 1000;
    public static final int UNITS_NORMALIZATION = 1000;
    protected int avgWidth;
    protected FontNames fontNames;
    protected boolean isFontSpecific;
    protected String registry;
    protected Map<Integer, Glyph> codeToGlyph = new HashMap();
    protected Map<Integer, Glyph> unicodeToGlyph = new HashMap();
    protected FontMetrics fontMetrics = new FontMetrics();
    protected FontIdentification fontIdentification = new FontIdentification();
    protected String encodingScheme = FontEncoding.FONT_SPECIFIC;

    public abstract int getKerning(Glyph glyph, Glyph glyph2);

    public abstract int getPdfFontFlags();

    public boolean hasKernPairs() {
        return false;
    }

    public boolean isBuiltWith(String str) {
        return false;
    }

    public int countOfGlyphs() {
        return Math.max(this.codeToGlyph.size(), this.unicodeToGlyph.size());
    }

    public FontNames getFontNames() {
        return this.fontNames;
    }

    public FontMetrics getFontMetrics() {
        return this.fontMetrics;
    }

    public FontIdentification getFontIdentification() {
        return this.fontIdentification;
    }

    public String getRegistry() {
        return this.registry;
    }

    public boolean isFontSpecific() {
        return this.isFontSpecific;
    }

    public int getWidth(int i) {
        Glyph glyph = getGlyph(i);
        if (glyph != null) {
            return glyph.getWidth();
        }
        return 0;
    }

    public int getAvgWidth() {
        return this.avgWidth;
    }

    public int[] getCharBBox(int i) {
        Glyph glyph = getGlyph(i);
        if (glyph != null) {
            return glyph.getBbox();
        }
        return null;
    }

    public Glyph getGlyph(int i) {
        return this.unicodeToGlyph.get(Integer.valueOf(i));
    }

    public Glyph getGlyphByCode(int i) {
        return this.codeToGlyph.get(Integer.valueOf(i));
    }

    public int getKerning(int i, int i2) {
        return getKerning(this.unicodeToGlyph.get(Integer.valueOf(i)), this.unicodeToGlyph.get(Integer.valueOf(i2)));
    }

    protected void setRegistry(String str) {
        this.registry = str;
    }

    static String trimFontStyle(String str) {
        if (str == null) {
            return null;
        }
        if (str.endsWith(",Bold")) {
            return str.substring(0, str.length() - 5);
        }
        if (str.endsWith(",Italic")) {
            return str.substring(0, str.length() - 7);
        }
        return str.endsWith(",BoldItalic") ? str.substring(0, str.length() - 11) : str;
    }

    protected void setTypoAscender(int i) {
        this.fontMetrics.setTypoAscender(i);
    }

    protected void setTypoDescender(int i) {
        this.fontMetrics.setTypoDescender(i);
    }

    protected void setCapHeight(int i) {
        this.fontMetrics.setCapHeight(i);
    }

    protected void setXHeight(int i) {
        this.fontMetrics.setXHeight(i);
    }

    protected void setItalicAngle(int i) {
        this.fontMetrics.setItalicAngle(i);
    }

    protected void setStemV(int i) {
        this.fontMetrics.setStemV(i);
    }

    protected void setStemH(int i) {
        this.fontMetrics.setStemH(i);
    }

    protected void setFontWeight(int i) {
        this.fontNames.setFontWeight(i);
    }

    protected void setFontStretch(String str) {
        this.fontNames.setFontStretch(str);
    }

    protected void setFixedPitch(boolean z) {
        this.fontMetrics.setIsFixedPitch(z);
    }

    protected void setBold(boolean z) {
        if (z) {
            FontNames fontNames = this.fontNames;
            fontNames.setMacStyle(fontNames.getMacStyle() | 1);
        } else {
            FontNames fontNames2 = this.fontNames;
            fontNames2.setMacStyle(fontNames2.getMacStyle() & (-2));
        }
    }

    protected void setBbox(int[] iArr) {
        this.fontMetrics.setBbox(iArr[0], iArr[1], iArr[2], iArr[3]);
    }

    protected void setFontFamily(String str) {
        this.fontNames.setFamilyName(str);
    }

    protected void setFontName(String str) {
        this.fontNames.setFontName(str);
        if (this.fontNames.getFullName() == null) {
            this.fontNames.setFullName(str);
        }
    }

    protected void fixSpaceIssue() {
        Glyph glyph = this.unicodeToGlyph.get(32);
        if (glyph != null) {
            this.codeToGlyph.put(Integer.valueOf(glyph.getCode()), glyph);
        }
    }

    public String toString() {
        String fontName = getFontNames().getFontName();
        return (fontName == null || fontName.length() <= 0) ? super.toString() : fontName;
    }
}
