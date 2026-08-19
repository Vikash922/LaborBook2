package com.itextpdf.layout.font;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.util.TextUtil;
import java.lang.Character;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ComplexFontSelectorStrategy extends FontSelectorStrategy {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private PdfFont font;
    private FontSelector selector;

    public ComplexFontSelectorStrategy(String str, FontSelector fontSelector, FontProvider fontProvider, FontSet fontSet) {
        super(str, fontProvider, fontSet);
        this.font = null;
        this.selector = fontSelector;
    }

    public ComplexFontSelectorStrategy(String str, FontSelector fontSelector, FontProvider fontProvider) {
        super(str, fontProvider, null);
        this.font = null;
        this.selector = fontSelector;
    }

    @Override // com.itextpdf.layout.font.FontSelectorStrategy
    public PdfFont getCurrentFont() {
        return this.font;
    }

    @Override // com.itextpdf.layout.font.FontSelectorStrategy
    public List<Glyph> nextGlyphs() {
        int iCharAt;
        PdfFont pdfFont;
        Glyph glyph;
        this.font = null;
        int iNextSignificantIndex = nextSignificantIndex();
        if (iNextSignificantIndex < this.text.length()) {
            Iterator<FontInfo> it = this.selector.getFonts().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                FontInfo next = it.next();
                if (isSurrogatePair(this.text, iNextSignificantIndex)) {
                    iCharAt = TextUtil.convertToUtf32(this.text, iNextSignificantIndex);
                } else {
                    iCharAt = this.text.charAt(iNextSignificantIndex);
                }
                if (next.getFontUnicodeRange().contains(iCharAt) && (glyph = (pdfFont = getPdfFont(next)).getGlyph(iCharAt)) != null && glyph.getCode() != 0) {
                    this.font = pdfFont;
                    break;
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        if (this.font != null) {
            Character.UnicodeScript unicodeScriptNextSignificantUnicodeScript = nextSignificantUnicodeScript(iNextSignificantIndex);
            int i = iNextSignificantIndex;
            int i2 = i;
            while (i < this.text.length()) {
                int iConvertToUtf32 = isSurrogatePair(this.text, i) ? TextUtil.convertToUtf32(this.text, i) : this.text.charAt(i);
                Character.UnicodeScript unicodeScriptOf = Character.UnicodeScript.of(iConvertToUtf32);
                if (isSignificantUnicodeScript(unicodeScriptOf) && unicodeScriptOf != unicodeScriptNextSignificantUnicodeScript) {
                    break;
                }
                if (iConvertToUtf32 > 65535) {
                    i++;
                }
                i2 = i;
                i = i2 + 1;
            }
            int iAppendGlyphs = this.font.appendGlyphs(this.text, this.index, i2, arrayList);
            z = iAppendGlyphs > 0;
            this.index += iAppendGlyphs;
        }
        if (!z) {
            this.font = getPdfFont(this.selector.bestMatch());
            if (this.index != iNextSignificantIndex) {
                this.index += this.font.appendGlyphs(this.text, this.index, iNextSignificantIndex - 1, arrayList);
            }
            while (this.index <= iNextSignificantIndex && this.index < this.text.length()) {
                this.index += this.font.appendAnyGlyph(this.text, this.index, arrayList);
            }
        }
        return arrayList;
    }

    private int nextSignificantIndex() {
        int i = this.index;
        while (i < this.text.length() && TextUtil.isWhitespaceOrNonPrintable(this.text.charAt(i))) {
            i++;
        }
        return i;
    }

    private Character.UnicodeScript nextSignificantUnicodeScript(int i) {
        int iCharAt;
        while (i < this.text.length()) {
            if (isSurrogatePair(this.text, i)) {
                iCharAt = TextUtil.convertToUtf32(this.text, i);
                i++;
            } else {
                iCharAt = this.text.charAt(i);
            }
            Character.UnicodeScript unicodeScriptOf = Character.UnicodeScript.of(iCharAt);
            if (isSignificantUnicodeScript(unicodeScriptOf)) {
                return unicodeScriptOf;
            }
            i++;
        }
        return Character.UnicodeScript.COMMON;
    }

    private static boolean isSignificantUnicodeScript(Character.UnicodeScript unicodeScript) {
        return (unicodeScript == Character.UnicodeScript.COMMON || unicodeScript == Character.UnicodeScript.INHERITED) ? false : true;
    }

    private static boolean isSurrogatePair(String str, int i) {
        return TextUtil.isSurrogateHigh(str.charAt(i)) && i < str.length() - 1 && TextUtil.isSurrogateLow(str.charAt(i + 1));
    }
}
