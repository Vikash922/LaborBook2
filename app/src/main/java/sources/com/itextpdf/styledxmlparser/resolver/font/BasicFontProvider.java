package com.itextpdf.styledxmlparser.resolver.font;

import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSet;

/* JADX INFO: loaded from: classes6.dex */
public class BasicFontProvider extends FontProvider {
    private static final String DEFAULT_FONT_FAMILY = "Times";

    public BasicFontProvider() {
        this(true, false);
    }

    public BasicFontProvider(boolean z, boolean z2) {
        this(z, z2, "Times");
    }

    public BasicFontProvider(boolean z, boolean z2, String str) {
        super(str);
        if (z) {
            addStandardPdfFonts();
        }
        if (z2) {
            addSystemFonts();
        }
    }

    public BasicFontProvider(FontSet fontSet, String str) {
        super(fontSet, str);
    }
}
