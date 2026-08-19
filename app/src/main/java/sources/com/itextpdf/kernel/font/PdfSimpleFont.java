package com.itextpdf.kernel.font;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfOutputStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.FontMetrics;
import com.itextpdf.p017io.font.FontNames;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.cmap.CMapToUnicode;
import com.itextpdf.p017io.font.constants.FontDescriptorFlags;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.util.ArrayUtil;
import com.itextpdf.p017io.util.StreamUtil;
import com.itextpdf.p017io.util.TextUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfSimpleFont<T extends FontProgram> extends PdfFont {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected FontEncoding fontEncoding;
    protected boolean forceWidthsOutput;
    protected CMapToUnicode toUnicode;
    protected byte[] usedGlyphs;

    protected abstract void addFontStream(PdfDictionary pdfDictionary);

    protected boolean isBuiltInFont() {
        return false;
    }

    protected PdfSimpleFont(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.forceWidthsOutput = false;
        this.usedGlyphs = new byte[256];
        this.toUnicode = FontUtil.processToUnicode(pdfDictionary.get(PdfName.ToUnicode));
    }

    protected PdfSimpleFont() {
        this.forceWidthsOutput = false;
        this.usedGlyphs = new byte[256];
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean isBuiltWith(String str, String str2) {
        return getFontProgram().isBuiltWith(str) && this.fontEncoding.isBuiltWith(str2);
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public GlyphLine createGlyphLine(String str) {
        ArrayList arrayList = new ArrayList(str.length());
        int i = 0;
        if (this.fontEncoding.isFontSpecific()) {
            while (i < str.length()) {
                Glyph glyphByCode = this.fontProgram.getGlyphByCode(str.charAt(i));
                if (glyphByCode != null) {
                    arrayList.add(glyphByCode);
                }
                i++;
            }
        } else {
            while (i < str.length()) {
                Glyph glyph = getGlyph(str.charAt(i));
                if (glyph != null) {
                    arrayList.add(glyph);
                }
                i++;
            }
        }
        return new GlyphLine(arrayList);
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public int appendGlyphs(String str, int i, int i2, List<Glyph> list) {
        int i3 = 0;
        if (this.fontEncoding.isFontSpecific()) {
            while (i <= i2) {
                Glyph glyphByCode = this.fontProgram.getGlyphByCode(str.charAt(i) & 255);
                if (glyphByCode == null) {
                    break;
                }
                list.add(glyphByCode);
                i3++;
                i++;
            }
        } else {
            while (i <= i2) {
                Glyph glyph = getGlyph(str.charAt(i));
                if (glyph != null && (containsGlyph(glyph.getUnicode()) || isAppendableGlyph(glyph))) {
                    list.add(glyph);
                } else if (glyph != null || !TextUtil.isWhitespaceOrNonPrintable(str.charAt(i))) {
                    break;
                }
                i3++;
                i++;
            }
        }
        return i3;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public int appendAnyGlyph(String str, int i, List<Glyph> list) {
        Glyph glyph;
        if (this.fontEncoding.isFontSpecific()) {
            glyph = this.fontProgram.getGlyphByCode(str.charAt(i));
        } else {
            glyph = getGlyph(str.charAt(i));
        }
        if (glyph == null) {
            return 1;
        }
        list.add(glyph);
        return 1;
    }

    private boolean isAppendableGlyph(Glyph glyph) {
        return glyph.getCode() > 0 || TextUtil.isWhitespaceOrNonPrintable(glyph.getUnicode());
    }

    public FontEncoding getFontEncoding() {
        return this.fontEncoding;
    }

    public CMapToUnicode getToUnicode() {
        return this.toUnicode;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public byte[] convertToBytes(String str) {
        byte[] bArrConvertToBytes = this.fontEncoding.convertToBytes(str);
        for (byte b : bArrConvertToBytes) {
            this.usedGlyphs[b & 255] = 1;
        }
        return bArrConvertToBytes;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public byte[] convertToBytes(GlyphLine glyphLine) {
        int i;
        if (glyphLine != null) {
            byte[] bArr = new byte[glyphLine.size()];
            if (this.fontEncoding.isFontSpecific()) {
                int i2 = 0;
                i = 0;
                while (i2 < glyphLine.size()) {
                    bArr[i] = (byte) glyphLine.get(i2).getCode();
                    i2++;
                    i++;
                }
            } else {
                i = 0;
                for (int i3 = 0; i3 < glyphLine.size(); i3++) {
                    if (this.fontEncoding.canEncode(glyphLine.get(i3).getUnicode())) {
                        bArr[i] = (byte) this.fontEncoding.convertToByte(glyphLine.get(i3).getUnicode());
                        i++;
                    }
                }
            }
            byte[] bArrShortenArray = ArrayUtil.shortenArray(bArr, i);
            for (byte b : bArrShortenArray) {
                this.usedGlyphs[b & 255] = 1;
            }
            return bArrShortenArray;
        }
        return EMPTY_BYTES;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public byte[] convertToBytes(Glyph glyph) {
        byte[] bArr = new byte[1];
        if (this.fontEncoding.isFontSpecific()) {
            bArr[0] = (byte) glyph.getCode();
        } else if (this.fontEncoding.canEncode(glyph.getUnicode())) {
            bArr[0] = (byte) this.fontEncoding.convertToByte(glyph.getUnicode());
        } else {
            return EMPTY_BYTES;
        }
        this.usedGlyphs[bArr[0] & 255] = 1;
        return bArr;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public void writeText(GlyphLine glyphLine, int i, int i2, PdfOutputStream pdfOutputStream) {
        int i3;
        byte[] bArr = new byte[(i2 - i) + 1];
        if (this.fontEncoding.isFontSpecific()) {
            i3 = 0;
            while (i <= i2) {
                bArr[i3] = (byte) glyphLine.get(i).getCode();
                i++;
                i3++;
            }
        } else {
            i3 = 0;
            while (i <= i2) {
                Glyph glyph = glyphLine.get(i);
                if (this.fontEncoding.canEncode(glyph.getUnicode())) {
                    bArr[i3] = (byte) this.fontEncoding.convertToByte(glyph.getUnicode());
                    i3++;
                }
                i++;
            }
        }
        byte[] bArrShortenArray = ArrayUtil.shortenArray(bArr, i3);
        for (byte b : bArrShortenArray) {
            this.usedGlyphs[b & 255] = 1;
        }
        StreamUtil.writeEscapedString(pdfOutputStream, bArrShortenArray);
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public void writeText(String str, PdfOutputStream pdfOutputStream) {
        StreamUtil.writeEscapedString(pdfOutputStream, convertToBytes(str));
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public String decode(PdfString pdfString) {
        return decodeIntoGlyphLine(pdfString).toString();
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public GlyphLine decodeIntoGlyphLine(PdfString pdfString) {
        ArrayList arrayList = new ArrayList(pdfString.getValue().length());
        appendDecodedCodesToGlyphsList(arrayList, pdfString);
        return new GlyphLine(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    @Override // com.itextpdf.kernel.font.PdfFont
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean appendDecodedCodesToGlyphsList(java.util.List<com.itextpdf.p017io.font.otf.Glyph> r11, com.itextpdf.kernel.pdf.PdfString r12) {
        /*
            r10 = this;
            com.itextpdf.io.font.FontEncoding r0 = r10.getFontEncoding()
            byte[] r12 = r12.getValueBytes()
            int r1 = r12.length
            r2 = 1
            r3 = 0
            r4 = r3
        Lc:
            if (r4 >= r1) goto L88
            r5 = r12[r4]
            r5 = r5 & 255(0xff, float:3.57E-43)
            com.itextpdf.io.font.cmap.CMapToUnicode r6 = r10.getToUnicode()
            if (r6 == 0) goto L44
            char[] r7 = r6.lookup(r5)
            if (r7 == 0) goto L44
            com.itextpdf.io.font.FontProgram r7 = r10.getFontProgram()
            com.itextpdf.io.font.otf.Glyph r7 = r7.getGlyphByCode(r5)
            if (r7 == 0) goto L45
            char[] r8 = r6.lookup(r5)
            char[] r9 = r7.getChars()
            boolean r8 = java.util.Arrays.equals(r8, r9)
            if (r8 != 0) goto L5f
            com.itextpdf.io.font.otf.Glyph r8 = new com.itextpdf.io.font.otf.Glyph
            r8.<init>(r7)
            char[] r6 = r6.lookup(r5)
            r8.setChars(r6)
            r7 = r8
            goto L5f
        L44:
            r7 = 0
        L45:
            int r6 = r0.getUnicode(r5)
            r8 = -1
            if (r6 <= r8) goto L51
            com.itextpdf.io.font.otf.Glyph r7 = r10.getGlyph(r6)
            goto L5f
        L51:
            java.lang.String r6 = r0.getBaseEncoding()
            if (r6 != 0) goto L5f
            com.itextpdf.io.font.FontProgram r6 = r10.getFontProgram()
            com.itextpdf.io.font.otf.Glyph r7 = r6.getGlyphByCode(r5)
        L5f:
            if (r7 == 0) goto L65
            r11.add(r7)
            goto L85
        L65:
            java.lang.Class r2 = r10.getClass()
            org.slf4j.Logger r2 = org.slf4j.LoggerFactory.getLogger(r2)
            boolean r6 = r2.isWarnEnabled()
            if (r6 == 0) goto L84
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r6 = "Could not find glyph with the following code: {0}"
            java.lang.String r5 = com.itextpdf.commons.utils.MessageFormatUtil.format(r6, r5)
            r2.warn(r5)
        L84:
            r2 = r3
        L85:
            int r4 = r4 + 1
            goto Lc
        L88:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.font.PdfSimpleFont.appendDecodedCodesToGlyphsList(java.util.List, com.itextpdf.kernel.pdf.PdfString):boolean");
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public float getContentWidth(PdfString pdfString) {
        GlyphLine glyphLineDecodeIntoGlyphLine = decodeIntoGlyphLine(pdfString);
        float width = 0.0f;
        for (int i = glyphLineDecodeIntoGlyphLine.start; i < glyphLineDecodeIntoGlyphLine.end; i++) {
            width += glyphLineDecodeIntoGlyphLine.get(i).getWidth();
        }
        return width;
    }

    public boolean isForceWidthsOutput() {
        return this.forceWidthsOutput;
    }

    public void setForceWidthsOutput(boolean z) {
        this.forceWidthsOutput = z;
    }

    protected void flushFontData(String str, PdfName pdfName) {
        int length;
        getPdfObject().put(PdfName.Subtype, pdfName);
        if (str != null && str.length() > 0) {
            getPdfObject().put(PdfName.BaseFont, new PdfName(str));
        }
        int i = 0;
        while (true) {
            length = 255;
            if (i > 255 || this.usedGlyphs[i] != 0) {
                break;
            } else {
                i++;
            }
        }
        int i2 = 255;
        while (i2 >= i && this.usedGlyphs[i2] == 0) {
            i2--;
        }
        if (i > 255) {
            i = 255;
        } else {
            length = i2;
        }
        if (!isSubset() || !isEmbedded()) {
            length = this.usedGlyphs.length - 1;
            for (int i3 = 0; i3 < this.usedGlyphs.length; i3++) {
                if (this.fontEncoding.canDecode(i3)) {
                    this.usedGlyphs[i3] = 1;
                } else if (!this.fontEncoding.hasDifferences() && this.fontProgram.getGlyphByCode(i3) != null) {
                    this.usedGlyphs[i3] = 1;
                } else {
                    this.usedGlyphs[i3] = 0;
                }
            }
            i = 0;
        }
        if (this.fontEncoding.hasDifferences()) {
            int i4 = i;
            while (true) {
                if (i4 > length) {
                    break;
                }
                if (!FontEncoding.NOTDEF.equals(this.fontEncoding.getDifference(i4))) {
                    i = i4;
                    break;
                }
                i4++;
            }
            int i5 = length;
            while (true) {
                if (i5 < i) {
                    break;
                }
                if (!FontEncoding.NOTDEF.equals(this.fontEncoding.getDifference(i5))) {
                    length = i5;
                    break;
                }
                i5--;
            }
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.put(PdfName.Type, PdfName.Encoding);
            PdfArray pdfArray = new PdfArray();
            boolean z = true;
            for (int i6 = i; i6 <= length; i6++) {
                if (this.usedGlyphs[i6] != 0) {
                    if (z) {
                        pdfArray.add(new PdfNumber(i6));
                        z = false;
                    }
                    pdfArray.add(new PdfName(this.fontEncoding.getDifference(i6)));
                } else {
                    z = true;
                }
            }
            pdfDictionary.put(PdfName.Differences, pdfArray);
            getPdfObject().put(PdfName.Encoding, pdfDictionary);
        } else if (!this.fontEncoding.isFontSpecific()) {
            getPdfObject().put(PdfName.Encoding, "Cp1252".equals(this.fontEncoding.getBaseEncoding()) ? PdfName.WinAnsiEncoding : PdfName.MacRomanEncoding);
        }
        if (isForceWidthsOutput() || !isBuiltInFont() || this.fontEncoding.hasDifferences()) {
            getPdfObject().put(PdfName.FirstChar, new PdfNumber(i));
            getPdfObject().put(PdfName.LastChar, new PdfNumber(length));
            getPdfObject().put(PdfName.Widths, buildWidthsArray(i, length));
        }
        PdfDictionary fontDescriptor = !isBuiltInFont() ? getFontDescriptor(str) : null;
        if (fontDescriptor != null) {
            getPdfObject().put(PdfName.FontDescriptor, fontDescriptor);
            if (fontDescriptor.getIndirectReference() != null) {
                fontDescriptor.flush();
            }
        }
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    protected PdfDictionary getFontDescriptor(String str) {
        FontMetrics fontMetrics = this.fontProgram.getFontMetrics();
        FontNames fontNames = this.fontProgram.getFontNames();
        PdfDictionary pdfDictionary = new PdfDictionary();
        makeObjectIndirect(pdfDictionary);
        pdfDictionary.put(PdfName.Type, PdfName.FontDescriptor);
        pdfDictionary.put(PdfName.FontName, new PdfName(str));
        pdfDictionary.put(PdfName.Ascent, new PdfNumber(fontMetrics.getTypoAscender()));
        pdfDictionary.put(PdfName.CapHeight, new PdfNumber(fontMetrics.getCapHeight()));
        pdfDictionary.put(PdfName.Descent, new PdfNumber(fontMetrics.getTypoDescender()));
        pdfDictionary.put(PdfName.FontBBox, new PdfArray(ArrayUtil.cloneArray(fontMetrics.getBbox())));
        pdfDictionary.put(PdfName.ItalicAngle, new PdfNumber(fontMetrics.getItalicAngle()));
        pdfDictionary.put(PdfName.StemV, new PdfNumber(fontMetrics.getStemV()));
        if (fontMetrics.getXHeight() > 0) {
            pdfDictionary.put(PdfName.XHeight, new PdfNumber(fontMetrics.getXHeight()));
        }
        if (fontMetrics.getStemH() > 0) {
            pdfDictionary.put(PdfName.StemH, new PdfNumber(fontMetrics.getStemH()));
        }
        if (fontNames.getFontWeight() > 0) {
            pdfDictionary.put(PdfName.FontWeight, new PdfNumber(fontNames.getFontWeight()));
        }
        if (fontNames.getFamilyName() != null && fontNames.getFamilyName().length > 0 && fontNames.getFamilyName()[0].length >= 4) {
            pdfDictionary.put(PdfName.FontFamily, new PdfString(fontNames.getFamilyName()[0][3]));
        }
        addFontStream(pdfDictionary);
        pdfDictionary.put(PdfName.Flags, new PdfNumber((this.fontProgram.getPdfFontFlags() & (~(FontDescriptorFlags.Symbolic | FontDescriptorFlags.Nonsymbolic))) | (this.fontEncoding.isFontSpecific() ? FontDescriptorFlags.Symbolic : FontDescriptorFlags.Nonsymbolic)));
        return pdfDictionary;
    }

    protected PdfArray buildWidthsArray(int i, int i2) {
        PdfArray pdfArray = new PdfArray();
        while (i <= i2) {
            if (this.usedGlyphs[i] == 0) {
                pdfArray.add(new PdfNumber(0));
            } else {
                int unicode = this.fontEncoding.getUnicode(i);
                Glyph glyph = unicode > -1 ? getGlyph(unicode) : this.fontProgram.getGlyphByCode(i);
                pdfArray.add(new PdfNumber(glyph != null ? glyph.getWidth() : 0));
            }
            i++;
        }
        return pdfArray;
    }

    protected void setFontProgram(T t) {
        this.fontProgram = t;
    }
}
