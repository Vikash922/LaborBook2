package com.itextpdf.layout.splitting;

import com.itextpdf.p017io.font.otf.GlyphLine;

/* JADX INFO: loaded from: classes6.dex */
public class KeepAllSplitCharacters implements ISplitCharacters {
    @Override // com.itextpdf.layout.splitting.ISplitCharacters
    public boolean isSplitCharacter(GlyphLine glyphLine, int i) {
        if (!glyphLine.get(i).hasValidUnicode()) {
            return false;
        }
        int unicode = glyphLine.get(i).getUnicode();
        if (i == 0 && unicode == 45 && glyphLine.size() - 1 > i && isADigitChar(glyphLine, i + 1)) {
            return false;
        }
        return unicode <= 32 || unicode == 45 || unicode == 8208 || (unicode >= 8194 && unicode <= 8203);
    }

    private static boolean isADigitChar(GlyphLine glyphLine, int i) {
        return Character.isDigit(glyphLine.get(i).getChars()[0]);
    }
}
