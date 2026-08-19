package com.itextpdf.kernel.font;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfOutputStream;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.util.TextUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfFont extends PdfObjectWrapper<PdfDictionary> {
    protected static final byte[] EMPTY_BYTES = new byte[0];
    public static final int SIMPLE_FONT_MAX_CHAR_CODE_VALUE = 255;
    protected boolean embedded;
    protected FontProgram fontProgram;
    protected boolean newFont;
    protected Map<Integer, Glyph> notdefGlyphs;
    protected boolean subset;
    protected List<int[]> subsetRanges;

    public abstract int appendAnyGlyph(String str, int i, List<Glyph> list);

    public boolean appendDecodedCodesToGlyphsList(List<Glyph> list, PdfString pdfString) {
        return false;
    }

    public abstract int appendGlyphs(String str, int i, int i2, List<Glyph> list);

    public abstract byte[] convertToBytes(Glyph glyph);

    public abstract byte[] convertToBytes(GlyphLine glyphLine);

    public abstract byte[] convertToBytes(String str);

    public abstract GlyphLine createGlyphLine(String str);

    public abstract String decode(PdfString pdfString);

    public abstract GlyphLine decodeIntoGlyphLine(PdfString pdfString);

    public abstract float getContentWidth(PdfString pdfString);

    protected abstract PdfDictionary getFontDescriptor(String str);

    public abstract Glyph getGlyph(int i);

    public boolean isBuiltWith(String str, String str2) {
        return false;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public abstract void writeText(GlyphLine glyphLine, int i, int i2, PdfOutputStream pdfOutputStream);

    public abstract void writeText(String str, PdfOutputStream pdfOutputStream);

    protected PdfFont(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.notdefGlyphs = new HashMap();
        this.newFont = true;
        this.embedded = false;
        this.subset = true;
        getPdfObject().put(PdfName.Type, PdfName.Font);
    }

    protected PdfFont() {
        super(new PdfDictionary());
        this.notdefGlyphs = new HashMap();
        this.newFont = true;
        this.embedded = false;
        this.subset = true;
        getPdfObject().put(PdfName.Type, PdfName.Font);
    }

    public boolean containsGlyph(int i) {
        Glyph glyph = getGlyph(i);
        if (glyph != null) {
            return (getFontProgram() == null || !getFontProgram().isFontSpecific()) ? glyph.getCode() > 0 : glyph.getCode() > -1;
        }
        return false;
    }

    public int getWidth(int i) {
        Glyph glyph = getGlyph(i);
        if (glyph != null) {
            return glyph.getWidth();
        }
        return 0;
    }

    public float getWidth(int i, float f) {
        return (getWidth(i) * f) / 1000.0f;
    }

    public int getWidth(String str) {
        int iCharAt;
        int i = 0;
        int width = 0;
        while (i < str.length()) {
            if (TextUtil.isSurrogatePair(str, i)) {
                iCharAt = TextUtil.convertToUtf32(str, i);
                i++;
            } else {
                iCharAt = str.charAt(i);
            }
            Glyph glyph = getGlyph(iCharAt);
            if (glyph != null) {
                width += glyph.getWidth();
            }
            i++;
        }
        return width;
    }

    public float getWidth(String str, float f) {
        return (getWidth(str) * f) / 1000.0f;
    }

    public int getDescent(String str, float f) {
        int iCharAt;
        int i;
        int i2 = 0;
        int typoDescender = 0;
        while (i2 < str.length()) {
            if (TextUtil.isSurrogatePair(str, i2)) {
                iCharAt = TextUtil.convertToUtf32(str, i2);
                i2++;
            } else {
                iCharAt = str.charAt(i2);
            }
            Glyph glyph = getGlyph(iCharAt);
            if (glyph != null) {
                int[] bbox = glyph.getBbox();
                if (bbox != null && (i = bbox[1]) < typoDescender) {
                    typoDescender = i;
                } else if (bbox == null && getFontProgram().getFontMetrics().getTypoDescender() < typoDescender) {
                    typoDescender = getFontProgram().getFontMetrics().getTypoDescender();
                }
            }
            i2++;
        }
        return (int) ((typoDescender * f) / 1000.0f);
    }

    public int getDescent(int i, float f) {
        int i2;
        Glyph glyph = getGlyph(i);
        int typoDescender = 0;
        if (glyph == null) {
            return 0;
        }
        int[] bbox = glyph.getBbox();
        if (bbox != null && (i2 = bbox[1]) < 0) {
            typoDescender = i2;
        } else if (bbox == null && getFontProgram().getFontMetrics().getTypoDescender() < 0) {
            typoDescender = getFontProgram().getFontMetrics().getTypoDescender();
        }
        return (int) ((typoDescender * f) / 1000.0f);
    }

    public int getAscent(String str, float f) {
        int iCharAt;
        int i;
        int i2 = 0;
        int typoAscender = 0;
        while (i2 < str.length()) {
            if (TextUtil.isSurrogatePair(str, i2)) {
                iCharAt = TextUtil.convertToUtf32(str, i2);
                i2++;
            } else {
                iCharAt = str.charAt(i2);
            }
            Glyph glyph = getGlyph(iCharAt);
            if (glyph != null) {
                int[] bbox = glyph.getBbox();
                if (bbox != null && (i = bbox[3]) > typoAscender) {
                    typoAscender = i;
                } else if (bbox == null && getFontProgram().getFontMetrics().getTypoAscender() > typoAscender) {
                    typoAscender = getFontProgram().getFontMetrics().getTypoAscender();
                }
            }
            i2++;
        }
        return (int) ((typoAscender * f) / 1000.0f);
    }

    public int getAscent(int i, float f) {
        int i2;
        Glyph glyph = getGlyph(i);
        int typoAscender = 0;
        if (glyph == null) {
            return 0;
        }
        int[] bbox = glyph.getBbox();
        if (bbox != null && (i2 = bbox[3]) > 0) {
            typoAscender = i2;
        } else if (bbox == null && getFontProgram().getFontMetrics().getTypoAscender() > 0) {
            typoAscender = getFontProgram().getFontMetrics().getTypoAscender();
        }
        return (int) ((typoAscender * f) / 1000.0f);
    }

    public FontProgram getFontProgram() {
        return this.fontProgram;
    }

    public boolean isEmbedded() {
        return this.embedded;
    }

    public boolean isSubset() {
        return this.subset;
    }

    public void setSubset(boolean z) {
        this.subset = z;
    }

    public void addSubsetRange(int[] iArr) {
        if (this.subsetRanges == null) {
            this.subsetRanges = new ArrayList();
        }
        this.subsetRanges.add(iArr);
        setSubset(true);
    }

    public List<String> splitString(String str, float f, float f2) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        float f3 = 0.0f;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (Character.isWhitespace(cCharAt)) {
                i3 = i;
            }
            float width = getWidth(cCharAt, f);
            f3 += width;
            if (f3 >= f2 || cCharAt == '\n') {
                if (i2 < i3) {
                    arrayList.add(str.substring(i2, i3));
                    i2 = i3 + 1;
                    f3 = 0.0f;
                    i = i3;
                } else if (i2 != i) {
                    arrayList.add(str.substring(i2, i));
                    i2 = i;
                    f3 = width;
                } else {
                    arrayList.add(str.substring(i2, i2 + 1));
                    i2 = i + 1;
                    f3 = 0.0f;
                }
            }
            i++;
        }
        arrayList.add(str.substring(i2));
        return arrayList;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    protected static String updateSubsetPrefix(String str, boolean z, boolean z2) {
        return (z && z2) ? FontUtil.addRandomSubsetPrefixForFontName(str) : str;
    }

    protected PdfStream getPdfFontStream(byte[] bArr, int[] iArr) {
        if (bArr == null || iArr == null) {
            throw new PdfException(KernelExceptionMessageConstant.FONT_EMBEDDING_ISSUE);
        }
        PdfStream pdfStream = new PdfStream(bArr);
        makeObjectIndirect(pdfStream);
        int i = 0;
        while (i < iArr.length) {
            int i2 = i + 1;
            pdfStream.put(new PdfName("Length" + i2), new PdfNumber(iArr[i]));
            i = i2;
        }
        return pdfStream;
    }

    boolean makeObjectIndirect(PdfObject pdfObject) {
        if (getPdfObject().getIndirectReference() != null) {
            pdfObject.makeIndirect(getPdfObject().getIndirectReference().getDocument());
            return true;
        }
        markObjectAsIndirect(pdfObject);
        return false;
    }

    public String toString() {
        return "PdfFont{fontProgram=" + this.fontProgram + '}';
    }
}
