package com.itextpdf.layout.renderer;

/* JADX INFO: loaded from: classes6.dex */
public final class TextPreprocessingUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private TextPreprocessingUtil() {
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.itextpdf.p017io.font.otf.GlyphLine replaceSpecialWhitespaceGlyphs(com.itextpdf.p017io.font.otf.GlyphLine r9, com.itextpdf.kernel.font.PdfFont r10) {
        /*
            if (r9 == 0) goto L6d
            com.itextpdf.io.font.FontProgram r0 = r10.getFontProgram()
            com.itextpdf.io.font.FontMetrics r0 = r0.getFontMetrics()
            boolean r0 = r0.isFixedPitch()
            r1 = 32
            com.itextpdf.io.font.otf.Glyph r10 = r10.getGlyph(r1)
            int r1 = r10.getWidth()
            int r2 = r9.size()
            r3 = 0
            r4 = r3
        L1e:
            if (r4 >= r2) goto L6d
            com.itextpdf.io.font.otf.Glyph r5 = r9.get(r4)
            int r6 = r5.getCode()
            if (r6 > 0) goto L56
            int r6 = r5.getUnicode()
            r7 = 9
            r8 = 1
            if (r6 == r7) goto L53
            r7 = 8201(0x2009, float:1.1492E-41)
            if (r6 == r7) goto L4d
            r7 = 8194(0x2002, float:1.1482E-41)
            if (r6 == r7) goto L47
            r7 = 8195(0x2003, float:1.1484E-41)
            if (r6 == r7) goto L40
            goto L56
        L40:
            if (r0 == 0) goto L44
        L42:
            r6 = r3
            goto L58
        L44:
            int r6 = 1000 - r1
            goto L58
        L47:
            if (r0 == 0) goto L4a
            goto L42
        L4a:
            int r6 = 500 - r1
            goto L58
        L4d:
            if (r0 == 0) goto L50
            goto L42
        L50:
            int r6 = 200 - r1
            goto L58
        L53:
            int r6 = r1 * 3
            goto L58
        L56:
            r6 = r3
            r8 = r6
        L58:
            if (r8 == 0) goto L6a
            com.itextpdf.io.font.otf.Glyph r7 = new com.itextpdf.io.font.otf.Glyph
            int r5 = r5.getUnicode()
            r7.<init>(r10, r5)
            short r5 = (short) r6
            r7.setXAdvance(r5)
            r9.set(r4, r7)
        L6a:
            int r4 = r4 + 1
            goto L1e
        L6d:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TextPreprocessingUtil.replaceSpecialWhitespaceGlyphs(com.itextpdf.io.font.otf.GlyphLine, com.itextpdf.kernel.font.PdfFont):com.itextpdf.io.font.otf.GlyphLine");
    }
}
