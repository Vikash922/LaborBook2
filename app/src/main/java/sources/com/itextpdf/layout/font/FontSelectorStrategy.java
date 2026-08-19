package com.itextpdf.layout.font;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.p017io.font.otf.Glyph;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class FontSelectorStrategy {
    protected final FontSet additionalFonts;
    protected int index = 0;
    protected final FontProvider provider;
    protected String text;

    public abstract PdfFont getCurrentFont();

    public abstract List<Glyph> nextGlyphs();

    protected FontSelectorStrategy(String str, FontProvider fontProvider, FontSet fontSet) {
        this.text = str;
        this.provider = fontProvider;
        this.additionalFonts = fontSet;
    }

    public boolean endOfText() {
        String str = this.text;
        return str == null || this.index >= str.length();
    }

    protected PdfFont getPdfFont(FontInfo fontInfo) {
        return this.provider.getPdfFont(fontInfo, this.additionalFonts);
    }
}
