package com.itextpdf.kernel.font;

import com.itextpdf.p017io.font.FontNames;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.otf.Glyph;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class Type3Font extends FontProgram {
    private boolean colorized;
    private final Map<Integer, Type3Glyph> type3Glyphs = new HashMap();
    private final Map<Integer, Type3Glyph> type3GlyphsWithoutUnicode = new HashMap();
    private int flags = 0;

    @Override // com.itextpdf.p017io.font.FontProgram
    public int getKerning(Glyph glyph, Glyph glyph2) {
        return 0;
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    public boolean isFontSpecific() {
        return false;
    }

    Type3Font(boolean z) {
        this.colorized = z;
        this.fontNames = new FontNames();
        getFontMetrics().setBbox(0, 0, 0, 0);
    }

    public Type3Glyph getType3Glyph(int i) {
        return this.type3Glyphs.get(Integer.valueOf(i));
    }

    public Type3Glyph getType3GlyphByCode(int i) {
        Type3Glyph type3Glyph = this.type3GlyphsWithoutUnicode.get(Integer.valueOf(i));
        return (type3Glyph != null || this.codeToGlyph.get(Integer.valueOf(i)) == null) ? type3Glyph : this.type3Glyphs.get(Integer.valueOf(this.codeToGlyph.get(Integer.valueOf(i)).getUnicode()));
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    public int getPdfFontFlags() {
        return this.flags;
    }

    public boolean isColorized() {
        return this.colorized;
    }

    public int getNumberOfGlyphs() {
        return this.type3Glyphs.size() + this.type3GlyphsWithoutUnicode.size();
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setFontName(String str) {
        super.setFontName(str);
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setFontFamily(String str) {
        super.setFontFamily(str);
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setFontWeight(int i) {
        super.setFontWeight(i);
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setFontStretch(String str) {
        super.setFontStretch(str);
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setCapHeight(int i) {
        super.setCapHeight(i);
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setItalicAngle(int i) {
        super.setItalicAngle(i);
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setTypoAscender(int i) {
        super.setTypoAscender(i);
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    protected void setTypoDescender(int i) {
        super.setTypoDescender(i);
    }

    void setPdfFontFlags(int i) {
        this.flags = i;
    }

    void addGlyph(int i, int i2, int i3, int[] iArr, Type3Glyph type3Glyph) {
        if (this.codeToGlyph.containsKey(Integer.valueOf(i))) {
            removeGlyphFromMappings(i);
        }
        Glyph glyph = new Glyph(i, i3, i2, iArr);
        this.codeToGlyph.put(Integer.valueOf(i), glyph);
        if (i2 < 0) {
            this.type3GlyphsWithoutUnicode.put(Integer.valueOf(i), type3Glyph);
        } else {
            this.unicodeToGlyph.put(Integer.valueOf(i2), glyph);
            this.type3Glyphs.put(Integer.valueOf(i2), type3Glyph);
        }
        recalculateAverageWidth();
    }

    private void removeGlyphFromMappings(int i) {
        Glyph glyphRemove = this.codeToGlyph.remove(Integer.valueOf(i));
        if (glyphRemove == null) {
            return;
        }
        int unicode = glyphRemove.getUnicode();
        if (unicode < 0) {
            this.type3GlyphsWithoutUnicode.remove(Integer.valueOf(i));
        } else {
            this.unicodeToGlyph.remove(Integer.valueOf(unicode));
            this.type3Glyphs.remove(Integer.valueOf(unicode));
        }
    }

    private void recalculateAverageWidth() {
        int size = this.codeToGlyph.size();
        int width = 0;
        for (Glyph glyph : this.codeToGlyph.values()) {
            if (glyph.getWidth() == 0) {
                size--;
            } else {
                width += glyph.getWidth();
            }
        }
        this.avgWidth = size != 0 ? width / size : 0;
    }
}
