package com.itextpdf.layout.splitting;

import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.util.TextUtil;

/* JADX INFO: loaded from: classes6.dex */
public class BreakAllSplitCharacters implements ISplitCharacters {
    @Override // com.itextpdf.layout.splitting.ISplitCharacters
    public boolean isSplitCharacter(GlyphLine glyphLine, int i) {
        if (glyphLine.size() - 1 == i) {
            return true;
        }
        Glyph glyph = glyphLine.get(i);
        if (!glyph.hasValidUnicode()) {
            return true;
        }
        int unicode = glyph.getUnicode();
        Glyph glyph2 = glyphLine.get(i + 1);
        if (glyph2.hasValidUnicode()) {
            return (unicode <= 32 || unicode == 45 || unicode == 8208 || ((unicode >= 8194 && unicode <= 8203) || TextUtil.isLetterOrDigit(glyph2) || TextUtil.isMark(glyph2))) && !TextUtil.isNonBreakingHyphen(glyph);
        }
        return true;
    }
}
