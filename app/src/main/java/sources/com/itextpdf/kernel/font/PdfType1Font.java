package com.itextpdf.kernel.font;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.Type1Font;
import com.itextpdf.p017io.font.otf.Glyph;

/* JADX INFO: loaded from: classes6.dex */
public class PdfType1Font extends PdfSimpleFont<Type1Font> {
    PdfType1Font(Type1Font type1Font, String str, boolean z) {
        setFontProgram(type1Font);
        this.embedded = z && !type1Font.isBuiltInFont();
        if ((str == null || str.length() == 0) && type1Font.isFontSpecific()) {
            str = FontEncoding.FONT_SPECIFIC;
        }
        if (str != null && FontEncoding.FONT_SPECIFIC.toLowerCase().equals(str.toLowerCase())) {
            this.fontEncoding = FontEncoding.createFontSpecificEncoding();
        } else {
            this.fontEncoding = FontEncoding.createFontEncoding(str);
        }
    }

    PdfType1Font(Type1Font type1Font, String str) {
        this(type1Font, str, false);
    }

    PdfType1Font(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.newFont = false;
        this.fontEncoding = DocFontEncoding.createDocFontEncoding(pdfDictionary.get(PdfName.Encoding), this.toUnicode);
        this.fontProgram = DocType1Font.createFontProgram(pdfDictionary, this.fontEncoding, this.toUnicode);
        if (this.fontProgram instanceof IDocFontProgram) {
            this.embedded = ((IDocFontProgram) this.fontProgram).getFontFile() != null;
        }
        this.subset = false;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean isSubset() {
        return this.subset;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public void setSubset(boolean z) {
        this.subset = z;
    }

    @Override // com.itextpdf.kernel.font.PdfFont, com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        if (isFlushed()) {
            return;
        }
        ensureUnderlyingObjectHasIndirectReference();
        if (this.newFont) {
            flushFontData(this.fontProgram.getFontNames().getFontName(), PdfName.Type1);
        }
        super.flush();
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public Glyph getGlyph(int i) {
        if (!this.fontEncoding.canEncode(i)) {
            return null;
        }
        if (this.fontEncoding.isFontSpecific()) {
            return getFontProgram().getGlyphByCode(i);
        }
        Glyph glyph = getFontProgram().getGlyph(this.fontEncoding.getUnicodeDifference(i));
        if (glyph == null && (glyph = this.notdefGlyphs.get(Integer.valueOf(i))) == null) {
            glyph = new Glyph(-1, 0, i);
            this.notdefGlyphs.put(Integer.valueOf(i), glyph);
        }
        return glyph;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean containsGlyph(int i) {
        if (this.fontEncoding.canEncode(i)) {
            return this.fontEncoding.isFontSpecific() ? getFontProgram().getGlyphByCode(i) != null : getFontProgram().getGlyph(this.fontEncoding.getUnicodeDifference(i)) != null;
        }
        return false;
    }

    @Override // com.itextpdf.kernel.font.PdfSimpleFont
    protected boolean isBuiltInFont() {
        return ((Type1Font) getFontProgram()).isBuiltInFont();
    }

    @Override // com.itextpdf.kernel.font.PdfSimpleFont
    protected void addFontStream(PdfDictionary pdfDictionary) throws Throwable {
        if (this.embedded) {
            if (this.fontProgram instanceof IDocFontProgram) {
                IDocFontProgram iDocFontProgram = (IDocFontProgram) this.fontProgram;
                pdfDictionary.put(iDocFontProgram.getFontFileName(), iDocFontProgram.getFontFile());
                iDocFontProgram.getFontFile().flush();
                if (iDocFontProgram.getSubtype() != null) {
                    pdfDictionary.put(PdfName.Subtype, iDocFontProgram.getSubtype());
                    return;
                }
                return;
            }
            byte[] fontStreamBytes = ((Type1Font) getFontProgram()).getFontStreamBytes();
            if (fontStreamBytes != null) {
                PdfStream pdfStream = new PdfStream(fontStreamBytes);
                int[] fontStreamLengths = ((Type1Font) getFontProgram()).getFontStreamLengths();
                int i = 0;
                while (i < fontStreamLengths.length) {
                    int i2 = i + 1;
                    pdfStream.put(new PdfName("Length" + i2), new PdfNumber(fontStreamLengths[i]));
                    i = i2;
                }
                pdfDictionary.put(PdfName.FontFile, pdfStream);
                if (makeObjectIndirect(pdfStream)) {
                    pdfStream.flush();
                }
            }
        }
    }
}
