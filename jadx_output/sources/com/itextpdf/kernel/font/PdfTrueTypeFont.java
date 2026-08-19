package com.itextpdf.kernel.font;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.FontNames;
import com.itextpdf.p017io.font.FontProgramFactory;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.Type1Font;
import com.itextpdf.p017io.font.constants.StandardFonts;
import com.itextpdf.p017io.font.otf.Glyph;
import java.io.IOException;
import java.util.TreeSet;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTrueTypeFont extends PdfSimpleFont<TrueTypeFont> {
    PdfTrueTypeFont(TrueTypeFont trueTypeFont, String str, boolean z) {
        setFontProgram(trueTypeFont);
        this.embedded = z;
        FontNames fontNames = trueTypeFont.getFontNames();
        if (z && !fontNames.allowEmbedding()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_BE_EMBEDDED_DUE_TO_LICENSING_RESTRICTIONS).setMessageParams(fontNames.getFontName());
        }
        if ((str == null || str.length() == 0) && trueTypeFont.isFontSpecific()) {
            str = FontEncoding.FONT_SPECIFIC;
        }
        if (str != null && FontEncoding.FONT_SPECIFIC.toLowerCase().equals(str.toLowerCase())) {
            this.fontEncoding = FontEncoding.createFontSpecificEncoding();
        } else {
            this.fontEncoding = FontEncoding.createFontEncoding(str);
        }
    }

    PdfTrueTypeFont(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        boolean z = false;
        this.newFont = false;
        this.subset = false;
        this.fontEncoding = DocFontEncoding.createDocFontEncoding(pdfDictionary.get(PdfName.Encoding), this.toUnicode);
        PdfName asName = pdfDictionary.getAsName(PdfName.BaseFont);
        if (asName != null && StandardFonts.isStandardFont(asName.getValue()) && !pdfDictionary.containsKey(PdfName.FontDescriptor) && !pdfDictionary.containsKey(PdfName.Widths)) {
            try {
                this.fontProgram = FontProgramFactory.createFont(asName.getValue(), true);
            } catch (IOException e) {
                throw new PdfException("I/O exception while creating Font", (Throwable) e);
            }
        } else {
            this.fontProgram = DocTrueTypeFont.createFontProgram(pdfDictionary, this.fontEncoding, this.toUnicode);
        }
        if ((this.fontProgram instanceof IDocFontProgram) && ((IDocFontProgram) this.fontProgram).getFontFile() != null) {
            z = true;
        }
        this.embedded = z;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public Glyph getGlyph(int i) {
        Glyph glyphByCode;
        if (!this.fontEncoding.canEncode(i)) {
            return null;
        }
        Glyph glyph = getFontProgram().getGlyph(this.fontEncoding.getUnicodeDifference(i));
        if (glyph != null) {
            return glyph;
        }
        Glyph glyph2 = this.notdefGlyphs.get(Integer.valueOf(i));
        if (glyph2 != null || (glyphByCode = getFontProgram().getGlyphByCode(0)) == null) {
            return glyph2;
        }
        Glyph glyph3 = new Glyph(glyphByCode, i);
        this.notdefGlyphs.put(Integer.valueOf(i), glyph3);
        return glyph3;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean containsGlyph(int i) {
        return this.fontEncoding.isFontSpecific() ? this.fontProgram.getGlyphByCode(i) != null : this.fontEncoding.canEncode(i) && getFontProgram().getGlyph(this.fontEncoding.getUnicodeDifference(i)) != null;
    }

    @Override // com.itextpdf.kernel.font.PdfFont, com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        PdfName pdfName;
        String strUpdateSubsetPrefix;
        if (isFlushed()) {
            return;
        }
        ensureUnderlyingObjectHasIndirectReference();
        if (this.newFont) {
            if (((TrueTypeFont) getFontProgram()).isCff()) {
                pdfName = PdfName.Type1;
                strUpdateSubsetPrefix = this.fontProgram.getFontNames().getFontName();
            } else {
                pdfName = PdfName.TrueType;
                strUpdateSubsetPrefix = updateSubsetPrefix(this.fontProgram.getFontNames().getFontName(), this.subset, this.embedded);
            }
            flushFontData(strUpdateSubsetPrefix, pdfName);
        }
        super.flush();
    }

    @Override // com.itextpdf.kernel.font.PdfSimpleFont, com.itextpdf.kernel.font.PdfFont
    public boolean isBuiltWith(String str, String str2) {
        return (str2 == null || "".equals(str2) || !super.isBuiltWith(str, str2)) ? false : true;
    }

    @Override // com.itextpdf.kernel.font.PdfSimpleFont
    protected void addFontStream(PdfDictionary pdfDictionary) {
        PdfStream pdfFontStream;
        PdfName fontFileName;
        byte[] subset;
        if (this.embedded) {
            if (this.fontProgram instanceof IDocFontProgram) {
                fontFileName = ((IDocFontProgram) this.fontProgram).getFontFileName();
                pdfFontStream = ((IDocFontProgram) this.fontProgram).getFontFile();
            } else {
                pdfFontStream = null;
                if (((TrueTypeFont) getFontProgram()).isCff()) {
                    fontFileName = PdfName.FontFile3;
                    try {
                        byte[] fontStreamBytes = ((TrueTypeFont) getFontProgram()).getFontStreamBytes();
                        PdfStream pdfFontStream2 = getPdfFontStream(fontStreamBytes, new int[]{fontStreamBytes.length});
                        pdfFontStream2.put(PdfName.Subtype, new PdfName("Type1C"));
                        pdfFontStream = pdfFontStream2;
                    } catch (PdfException e) {
                        LoggerFactory.getLogger((Class<?>) PdfTrueTypeFont.class).error(e.getMessage());
                    }
                } else {
                    fontFileName = PdfName.FontFile2;
                    TreeSet treeSet = new TreeSet();
                    for (int i = 0; i < this.usedGlyphs.length; i++) {
                        if (this.usedGlyphs[i] != 0) {
                            int unicode = this.fontEncoding.getUnicode(i);
                            Glyph glyph = unicode > -1 ? this.fontProgram.getGlyph(unicode) : this.fontProgram.getGlyphByCode(i);
                            if (glyph != null) {
                                treeSet.add(Integer.valueOf(glyph.getCode()));
                            }
                        }
                    }
                    ((TrueTypeFont) getFontProgram()).updateUsedGlyphs(treeSet, this.subset, this.subsetRanges);
                    try {
                        if (this.subset || ((TrueTypeFont) getFontProgram()).getDirectoryOffset() > 0) {
                            subset = ((TrueTypeFont) getFontProgram()).getSubset(treeSet, this.subset);
                        } else {
                            subset = ((TrueTypeFont) getFontProgram()).getFontStreamBytes();
                        }
                        pdfFontStream = getPdfFontStream(subset, new int[]{subset.length});
                    } catch (PdfException e2) {
                        LoggerFactory.getLogger((Class<?>) PdfTrueTypeFont.class).error(e2.getMessage());
                    }
                }
            }
            if (pdfFontStream != null) {
                pdfDictionary.put(fontFileName, pdfFontStream);
                if (pdfFontStream.getIndirectReference() != null) {
                    pdfFontStream.flush();
                }
            }
        }
    }

    @Override // com.itextpdf.kernel.font.PdfSimpleFont
    protected boolean isBuiltInFont() {
        return (this.fontProgram instanceof Type1Font) && ((Type1Font) this.fontProgram).isBuiltInFont();
    }
}
