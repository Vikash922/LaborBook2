package com.itextpdf.kernel.font;

import com.amplitude.core.events.Identify;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfOutputStream;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.p017io.exceptions.IOException;
import com.itextpdf.p017io.font.CFFFontSubset;
import com.itextpdf.p017io.font.CMapEncoding;
import com.itextpdf.p017io.font.CidFont;
import com.itextpdf.p017io.font.CidFontProperties;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.cmap.CMapContentParser;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.ByteArrayOutputStream;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.OutputStream;
import com.itextpdf.p017io.util.StreamUtil;
import com.itextpdf.p017io.util.TextUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import org.shadow.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfType0Font extends PdfFont {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected static final int CID_FONT_TYPE_0 = 0;
    protected static final int CID_FONT_TYPE_2 = 2;
    private static final String DEFAULT_ENCODING = "";
    private static final int MAX_CID_CODE_LENGTH = 4;
    private static final byte[] rotbits = {-128, 64, 32, 16, 8, 4, 2, 1};
    protected int cidFontType;
    protected CMapEncoding cmapEncoding;
    protected char[] specificUnicodeDifferences;
    protected Set<Integer> usedGlyphs;
    protected boolean vertical;

    PdfType0Font(TrueTypeFont trueTypeFont, String str) {
        if (!PdfEncodings.IDENTITY_H.equals(str) && !PdfEncodings.IDENTITY_V.equals(str)) {
            throw new PdfException(KernelExceptionMessageConstant.ONLY_IDENTITY_CMAPS_SUPPORTS_WITH_TRUETYPE);
        }
        if (!trueTypeFont.getFontNames().allowEmbedding()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_BE_EMBEDDED_DUE_TO_LICENSING_RESTRICTIONS).setMessageParams(trueTypeFont.getFontNames().getFontName() + trueTypeFont.getFontNames().getStyle());
        }
        this.fontProgram = trueTypeFont;
        this.embedded = true;
        this.vertical = str.endsWith("V");
        this.cmapEncoding = new CMapEncoding(str);
        this.usedGlyphs = new TreeSet();
        this.cidFontType = 2;
        if (trueTypeFont.isFontSpecific()) {
            this.specificUnicodeDifferences = new char[256];
            for (int i = 0; i < 256; i++) {
                String strConvertToString = PdfEncodings.convertToString(new byte[]{(byte) i}, null);
                this.specificUnicodeDifferences[i] = strConvertToString.length() > 0 ? strConvertToString.charAt(0) : '?';
            }
        }
    }

    PdfType0Font(CidFont cidFont, String str) {
        if (!CidFontProperties.isCidFont(cidFont.getFontNames().getFontName(), str)) {
            throw new PdfException("Font {0} with {1} encoding is not a cjk font.").setMessageParams(cidFont.getFontNames().getFontName(), str);
        }
        this.fontProgram = cidFont;
        this.vertical = str.endsWith("V");
        this.cmapEncoding = new CMapEncoding(str, getCompatibleUniMap(this.fontProgram.getRegistry()));
        this.usedGlyphs = new TreeSet();
        this.cidFontType = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    PdfType0Font(com.itextpdf.kernel.pdf.PdfDictionary r11) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.font.PdfType0Font.<init>(com.itextpdf.kernel.pdf.PdfDictionary):void");
    }

    public static String getUniMapFromOrdering(String str, boolean z) {
        String str2;
        str.hashCode();
        switch (str) {
            case "Japan1":
                str2 = "UniJIS-UTF16-";
                break;
            case "Korea1":
                str2 = "UniKS-UTF16-";
                break;
            case "Identity":
                str2 = "Identity-";
                break;
            case "GB1":
                str2 = "UniGB-UTF16-";
                break;
            case "CNS1":
                str2 = "UniCNS-UTF16-";
                break;
            default:
                return null;
        }
        if (z) {
            return str2.concat("H");
        }
        return str2.concat("V");
    }

    @Deprecated
    public static String getUniMapFromOrdering(String str) {
        str.hashCode();
        switch (str) {
            case "Japan1":
                return "UniJIS-UTF16-H";
            case "Korea1":
                return "UniKS-UTF16-H";
            case "Identity":
                return PdfEncodings.IDENTITY_H;
            case "GB1":
                return "UniGB-UTF16-H";
            case "CNS1":
                return "UniCNS-UTF16-H";
            default:
                return null;
        }
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public Glyph getGlyph(int i) {
        Glyph glyph = getFontProgram().getGlyph(i);
        if (glyph == null && (glyph = this.notdefGlyphs.get(Integer.valueOf(i))) == null) {
            Glyph glyphByCode = getFontProgram().getGlyphByCode(0);
            if (glyphByCode != null) {
                glyph = new Glyph(glyphByCode, i);
            } else {
                glyph = new Glyph(-1, 0, i);
            }
            this.notdefGlyphs.put(Integer.valueOf(i), glyph);
        }
        return glyph;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean containsGlyph(int i) {
        int i2 = this.cidFontType;
        if (i2 == 0) {
            return this.cmapEncoding.isDirect() ? this.fontProgram.getGlyphByCode(i) != null : getFontProgram().getGlyph(i) != null;
        }
        if (i2 == 2) {
            if (!this.fontProgram.isFontSpecific()) {
                return getFontProgram().getGlyph(i) != null;
            }
            byte[] bArrConvertToBytes = PdfEncodings.convertToBytes((char) i, "symboltt");
            return bArrConvertToBytes.length > 0 && this.fontProgram.getGlyph(bArrConvertToBytes[0] & 255) != null;
        }
        throw new PdfException("Invalid CID font type: " + this.cidFontType);
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public byte[] convertToBytes(String str) {
        int iCharAt;
        int length = str.length();
        ByteBuffer byteBuffer = new ByteBuffer();
        if (this.fontProgram.isFontSpecific()) {
            for (byte b : PdfEncodings.convertToBytes(str, "symboltt")) {
                Glyph glyph = this.fontProgram.getGlyph(b & 255);
                if (glyph != null) {
                    convertToBytes(glyph, byteBuffer);
                }
            }
        } else {
            int i = 0;
            while (i < length) {
                if (TextUtil.isSurrogatePair(str, i)) {
                    iCharAt = TextUtil.convertToUtf32(str, i);
                    i++;
                } else {
                    iCharAt = str.charAt(i);
                }
                Glyph glyph2 = getGlyph(iCharAt);
                if (glyph2.getCode() > 0) {
                    convertToBytes(glyph2, byteBuffer);
                } else {
                    byteBuffer.append(this.cmapEncoding.getCmapBytes(0));
                }
                i++;
            }
        }
        return byteBuffer.toByteArray();
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public byte[] convertToBytes(GlyphLine glyphLine) {
        if (glyphLine == null) {
            return null;
        }
        int iFillCmapBytes = 0;
        int cmapBytesLength = 0;
        for (int i = glyphLine.start; i < glyphLine.end; i++) {
            cmapBytesLength += this.cmapEncoding.getCmapBytesLength(glyphLine.get(i).getCode());
        }
        byte[] bArr = new byte[cmapBytesLength];
        for (int i2 = glyphLine.start; i2 < glyphLine.end; i2++) {
            this.usedGlyphs.add(Integer.valueOf(glyphLine.get(i2).getCode()));
            iFillCmapBytes = this.cmapEncoding.fillCmapBytes(glyphLine.get(i2).getCode(), bArr, iFillCmapBytes);
        }
        return bArr;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public byte[] convertToBytes(Glyph glyph) {
        this.usedGlyphs.add(Integer.valueOf(glyph.getCode()));
        return this.cmapEncoding.getCmapBytes(glyph.getCode());
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public void writeText(GlyphLine glyphLine, int i, int i2, PdfOutputStream pdfOutputStream) {
        if ((i2 - i) + 1 > 0) {
            StreamUtil.writeHexedString(pdfOutputStream, convertToBytes(new GlyphLine(glyphLine, i, i2 + 1)));
        }
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public void writeText(String str, PdfOutputStream pdfOutputStream) {
        StreamUtil.writeHexedString(pdfOutputStream, convertToBytes(str));
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public GlyphLine createGlyphLine(String str) {
        int iCharAt;
        int iCharAt2;
        ArrayList arrayList = new ArrayList();
        int i = this.cidFontType;
        int i2 = 0;
        if (i == 0) {
            int length = str.length();
            if (this.cmapEncoding.isDirect()) {
                while (i2 < length) {
                    Glyph glyphByCode = this.fontProgram.getGlyphByCode(str.charAt(i2));
                    if (glyphByCode != null) {
                        arrayList.add(glyphByCode);
                    }
                    i2++;
                }
            } else {
                while (i2 < length) {
                    if (TextUtil.isSurrogatePair(str, i2)) {
                        iCharAt2 = TextUtil.convertToUtf32(str, i2);
                        i2++;
                    } else {
                        iCharAt2 = str.charAt(i2);
                    }
                    arrayList.add(getGlyph(iCharAt2));
                    i2++;
                }
            }
        } else if (i == 2) {
            int length2 = str.length();
            if (this.fontProgram.isFontSpecific()) {
                byte[] bArrConvertToBytes = PdfEncodings.convertToBytes(str, "symboltt");
                int length3 = bArrConvertToBytes.length;
                while (i2 < length3) {
                    Glyph glyph = this.fontProgram.getGlyph(bArrConvertToBytes[i2] & 255);
                    if (glyph != null) {
                        arrayList.add(glyph);
                    }
                    i2++;
                }
            } else {
                while (i2 < length2) {
                    if (TextUtil.isSurrogatePair(str, i2)) {
                        iCharAt = TextUtil.convertToUtf32(str, i2);
                        i2++;
                    } else {
                        iCharAt = str.charAt(i2);
                    }
                    arrayList.add(getGlyph(iCharAt));
                    i2++;
                }
            }
        } else {
            throw new PdfException("Font has no suitable cmap.");
        }
        return new GlyphLine(arrayList);
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public int appendGlyphs(String str, int i, int i2, List<Glyph> list) {
        int i3 = this.cidFontType;
        int i4 = 0;
        if (i3 == 0) {
            if (!this.cmapEncoding.isDirect()) {
                return appendUniGlyphs(str, i, i2, list);
            }
            while (i <= i2) {
                Glyph glyphByCode = this.fontProgram.getGlyphByCode(str.charAt(i));
                if (glyphByCode == null || !isAppendableGlyph(glyphByCode)) {
                    break;
                }
                list.add(glyphByCode);
                i4++;
                i++;
            }
            return i4;
        }
        if (i3 == 2) {
            if (!this.fontProgram.isFontSpecific()) {
                return appendUniGlyphs(str, i, i2, list);
            }
            while (i <= i2) {
                Glyph glyph = this.fontProgram.getGlyph(str.charAt(i) & 255);
                if (glyph == null || !isAppendableGlyph(glyph)) {
                    break;
                }
                list.add(glyph);
                i4++;
                i++;
            }
            return i4;
        }
        throw new PdfException("Font has no suitable cmap.");
    }

    private int appendUniGlyphs(String str, int i, int i2, List<Glyph> list) {
        int iCharAt;
        int i3;
        int i4 = 0;
        while (i <= i2) {
            if (TextUtil.isSurrogatePair(str, i)) {
                iCharAt = TextUtil.convertToUtf32(str, i);
                i3 = i4 + 2;
                i++;
            } else {
                iCharAt = str.charAt(i);
                i3 = i4 + 1;
            }
            Glyph glyph = getGlyph(iCharAt);
            if (!isAppendableGlyph(glyph)) {
                break;
            }
            list.add(glyph);
            i++;
            i4 = i3;
        }
        return i4;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public int appendAnyGlyph(String str, int i, List<Glyph> list) {
        int iCharAt;
        Glyph glyph;
        int iCharAt2;
        int i2 = this.cidFontType;
        int i3 = 2;
        if (i2 == 0) {
            if (this.cmapEncoding.isDirect()) {
                Glyph glyphByCode = this.fontProgram.getGlyphByCode(str.charAt(i));
                if (glyphByCode == null) {
                    return 1;
                }
                list.add(glyphByCode);
                return 1;
            }
            if (TextUtil.isSurrogatePair(str, i)) {
                iCharAt2 = TextUtil.convertToUtf32(str, i);
            } else {
                iCharAt2 = str.charAt(i);
                i3 = 1;
            }
            list.add(getGlyph(iCharAt2));
        } else if (i2 == 2) {
            if (((TrueTypeFont) this.fontProgram).isFontSpecific()) {
                byte[] bArrConvertToBytes = PdfEncodings.convertToBytes(str, "symboltt");
                if (bArrConvertToBytes.length <= 0 || (glyph = this.fontProgram.getGlyph(bArrConvertToBytes[0] & 255)) == null) {
                    return 1;
                }
                list.add(glyph);
                return 1;
            }
            if (TextUtil.isSurrogatePair(str, i)) {
                iCharAt = TextUtil.convertToUtf32(str, i);
            } else {
                iCharAt = str.charAt(i);
                i3 = 1;
            }
            list.add(getGlyph(iCharAt));
        } else {
            throw new PdfException("Font has no suitable cmap.");
        }
        return i3;
    }

    private boolean isAppendableGlyph(Glyph glyph) {
        return glyph.getCode() > 0 || TextUtil.isWhitespaceOrNonPrintable(glyph.getUnicode());
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public String decode(PdfString pdfString) {
        return decodeIntoGlyphLine(pdfString).toString();
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public GlyphLine decodeIntoGlyphLine(PdfString pdfString) {
        ArrayList arrayList = new ArrayList();
        appendDecodedCodesToGlyphsList(arrayList, pdfString);
        return new GlyphLine(arrayList);
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean appendDecodedCodesToGlyphsList(List<Glyph> list, PdfString pdfString) {
        int i;
        String value = pdfString.getValue();
        boolean z = true;
        int i2 = 0;
        while (i2 < value.length()) {
            Glyph glyphByCode = null;
            int i3 = 1;
            int i4 = 1;
            int iCharAt = 0;
            while (i3 <= 4 && (i = i2 + i3) <= value.length()) {
                iCharAt = (iCharAt << 8) + value.charAt(i - 1);
                if (getCmap().containsCodeInCodeSpaceRange(iCharAt, i3)) {
                    glyphByCode = getFontProgram().getGlyphByCode(getCmap().getCidCode(iCharAt));
                    if (glyphByCode != null) {
                        i2 += i3 - 1;
                        break;
                    }
                    i4 = i3;
                }
                i3++;
            }
            i3 = i4;
            if (glyphByCode == null) {
                Logger logger = LoggerFactory.getLogger((Class<?>) PdfType0Font.class);
                if (logger.isWarnEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    for (int i5 = 1; i5 <= 4; i5++) {
                        int i6 = i2 + i5;
                        if (i6 > value.length()) {
                            break;
                        }
                        sb.append((int) value.charAt(i6 - 1)).append(StringUtils.SPACE);
                    }
                    logger.warn(MessageFormatUtil.format(IoLogMessageConstant.COULD_NOT_FIND_GLYPH_WITH_CODE, sb.toString()));
                }
                i2 += i3 - 1;
            }
            if (glyphByCode != null && glyphByCode.getChars() != null) {
                list.add(glyphByCode);
            } else {
                list.add(new Glyph(0, getFontProgram().getGlyphByCode(0).getWidth(), -1));
                z = false;
            }
            i2++;
        }
        return z;
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

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean isBuiltWith(String str, String str2) {
        return getFontProgram().isBuiltWith(str) && this.cmapEncoding.isBuiltWith(normalizeEncoding(str2));
    }

    @Override // com.itextpdf.kernel.font.PdfFont, com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        if (isFlushed()) {
            return;
        }
        ensureUnderlyingObjectHasIndirectReference();
        if (this.newFont) {
            flushFontData();
        }
        super.flush();
    }

    public CMapEncoding getCmap() {
        return this.cmapEncoding;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    protected PdfDictionary getFontDescriptor(String str) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        makeObjectIndirect(pdfDictionary);
        pdfDictionary.put(PdfName.Type, PdfName.FontDescriptor);
        pdfDictionary.put(PdfName.FontName, new PdfName(str));
        pdfDictionary.put(PdfName.FontBBox, new PdfArray(getFontProgram().getFontMetrics().getBbox()));
        pdfDictionary.put(PdfName.Ascent, new PdfNumber(getFontProgram().getFontMetrics().getTypoAscender()));
        pdfDictionary.put(PdfName.Descent, new PdfNumber(getFontProgram().getFontMetrics().getTypoDescender()));
        pdfDictionary.put(PdfName.CapHeight, new PdfNumber(getFontProgram().getFontMetrics().getCapHeight()));
        pdfDictionary.put(PdfName.ItalicAngle, new PdfNumber(getFontProgram().getFontMetrics().getItalicAngle()));
        pdfDictionary.put(PdfName.StemV, new PdfNumber(getFontProgram().getFontMetrics().getStemV()));
        pdfDictionary.put(PdfName.Flags, new PdfNumber(getFontProgram().getPdfFontFlags()));
        if (this.fontProgram.getFontIdentification().getPanose() != null) {
            PdfDictionary pdfDictionary2 = new PdfDictionary();
            pdfDictionary2.put(PdfName.Panose, new PdfString(this.fontProgram.getFontIdentification().getPanose()).setHexWriting(true));
            pdfDictionary.put(PdfName.Style, pdfDictionary2);
        }
        return pdfDictionary;
    }

    private void convertToBytes(Glyph glyph, ByteBuffer byteBuffer) {
        int code = glyph.getCode();
        this.usedGlyphs.add(Integer.valueOf(code));
        this.cmapEncoding.fillCmapBytes(code, byteBuffer);
    }

    private static String getOrdering(PdfDictionary pdfDictionary) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.CIDSystemInfo);
        if (asDictionary != null && asDictionary.containsKey(PdfName.Ordering)) {
            return asDictionary.get(PdfName.Ordering).toString();
        }
        return null;
    }

    private void flushFontData() {
        PdfStream pdfFontStream;
        byte[] fontStreamBytes;
        int i = this.cidFontType;
        if (i == 0) {
            getPdfObject().put(PdfName.Type, PdfName.Font);
            getPdfObject().put(PdfName.Subtype, PdfName.Type0);
            String fontName = this.fontProgram.getFontNames().getFontName();
            String style = this.fontProgram.getFontNames().getStyle();
            if (style.length() > 0) {
                fontName = fontName + Identify.UNSET_VALUE + style;
            }
            getPdfObject().put(PdfName.BaseFont, new PdfName(MessageFormatUtil.format("{0}-{1}", fontName, this.cmapEncoding.getCmapName())));
            getPdfObject().put(PdfName.Encoding, new PdfName(this.cmapEncoding.getCmapName()));
            PdfDictionary fontDescriptor = getFontDescriptor(fontName);
            PdfDictionary cidFont = getCidFont(fontDescriptor, this.fontProgram.getFontNames().getFontName(), false);
            getPdfObject().put(PdfName.DescendantFonts, new PdfArray(cidFont));
            fontDescriptor.flush();
            cidFont.flush();
            return;
        }
        if (i == 2) {
            TrueTypeFont trueTypeFont = (TrueTypeFont) getFontProgram();
            String strUpdateSubsetPrefix = updateSubsetPrefix(trueTypeFont.getFontNames().getFontName(), this.subset, this.embedded);
            PdfDictionary fontDescriptor2 = getFontDescriptor(strUpdateSubsetPrefix);
            trueTypeFont.updateUsedGlyphs((SortedSet) this.usedGlyphs, this.subset, this.subsetRanges);
            if (trueTypeFont.isCff()) {
                if (this.subset) {
                    fontStreamBytes = new CFFFontSubset(trueTypeFont.getFontStreamBytes(), trueTypeFont.mapGlyphsCidsToGids(this.usedGlyphs)).Process();
                } else {
                    fontStreamBytes = trueTypeFont.getFontStreamBytes();
                }
                pdfFontStream = getPdfFontStream(fontStreamBytes, new int[]{fontStreamBytes.length});
                pdfFontStream.put(PdfName.Subtype, new PdfName("CIDFontType0C"));
                getPdfObject().put(PdfName.BaseFont, new PdfName(MessageFormatUtil.format("{0}-{1}", strUpdateSubsetPrefix, this.cmapEncoding.getCmapName())));
                fontDescriptor2.put(PdfName.FontFile3, pdfFontStream);
            } else {
                byte[] subset = null;
                if (this.subset || trueTypeFont.getDirectoryOffset() > 0) {
                    try {
                        subset = trueTypeFont.getSubset(this.usedGlyphs, this.subset);
                    } catch (IOException unused) {
                        LoggerFactory.getLogger((Class<?>) PdfType0Font.class).warn(IoLogMessageConstant.FONT_SUBSET_ISSUE);
                    }
                }
                if (subset == null) {
                    subset = trueTypeFont.getFontStreamBytes();
                }
                pdfFontStream = getPdfFontStream(subset, new int[]{subset.length});
                getPdfObject().put(PdfName.BaseFont, new PdfName(strUpdateSubsetPrefix));
                fontDescriptor2.put(PdfName.FontFile2, pdfFontStream);
            }
            int numberOfGlyphs = trueTypeFont.getFontMetrics().getNumberOfGlyphs();
            int numberOfGlyphs2 = trueTypeFont.getFontMetrics().getNumberOfGlyphs() / 8;
            byte[] bArr = new byte[numberOfGlyphs2 + 1];
            for (int i2 = 0; i2 < numberOfGlyphs / 8; i2++) {
                bArr[i2] = (byte) (bArr[i2] | 255);
            }
            for (int i3 = 0; i3 < numberOfGlyphs % 8; i3++) {
                bArr[numberOfGlyphs2] = (byte) (bArr[numberOfGlyphs2] | rotbits[i3]);
            }
            fontDescriptor2.put(PdfName.CIDSet, new PdfStream(bArr));
            PdfDictionary cidFont2 = getCidFont(fontDescriptor2, strUpdateSubsetPrefix, !trueTypeFont.isCff());
            getPdfObject().put(PdfName.Type, PdfName.Font);
            getPdfObject().put(PdfName.Subtype, PdfName.Type0);
            getPdfObject().put(PdfName.Encoding, new PdfName(this.cmapEncoding.getCmapName()));
            getPdfObject().put(PdfName.DescendantFonts, new PdfArray(cidFont2));
            PdfStream toUnicode = getToUnicode();
            if (toUnicode != null) {
                getPdfObject().put(PdfName.ToUnicode, toUnicode);
                if (toUnicode.getIndirectReference() != null) {
                    toUnicode.flush();
                }
            }
            if (getPdfObject().getIndirectReference().getDocument().getPdfVersion().compareTo(PdfVersion.PDF_2_0) >= 0) {
                fontDescriptor2.remove(PdfName.CIDSet);
            }
            fontDescriptor2.flush();
            cidFont2.flush();
            pdfFontStream.flush();
            return;
        }
        throw new IllegalStateException("Unsupported CID Font");
    }

    protected PdfDictionary getCidFont(PdfDictionary pdfDictionary, String str, boolean z) {
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        markObjectAsIndirect(pdfDictionary2);
        pdfDictionary2.put(PdfName.Type, PdfName.Font);
        pdfDictionary2.put(PdfName.FontDescriptor, pdfDictionary);
        if (z) {
            pdfDictionary2.put(PdfName.Subtype, PdfName.CIDFontType2);
            pdfDictionary2.put(PdfName.CIDToGIDMap, PdfName.Identity);
        } else {
            pdfDictionary2.put(PdfName.Subtype, PdfName.CIDFontType0);
        }
        pdfDictionary2.put(PdfName.BaseFont, new PdfName(str));
        PdfDictionary pdfDictionary3 = new PdfDictionary();
        pdfDictionary3.put(PdfName.Registry, new PdfString(this.cmapEncoding.getRegistry()));
        pdfDictionary3.put(PdfName.Ordering, new PdfString(this.cmapEncoding.getOrdering()));
        pdfDictionary3.put(PdfName.Supplement, new PdfNumber(this.cmapEncoding.getSupplement()));
        pdfDictionary2.put(PdfName.CIDSystemInfo, pdfDictionary3);
        if (!this.vertical) {
            pdfDictionary2.put(PdfName.f2998DW, new PdfNumber(1000));
            PdfObject pdfObjectGenerateWidthsArray = generateWidthsArray();
            if (pdfObjectGenerateWidthsArray != null) {
                pdfDictionary2.put(PdfName.f3089W, pdfObjectGenerateWidthsArray);
            }
        } else {
            LoggerFactory.getLogger((Class<?>) PdfType0Font.class).warn("Vertical writing has not been implemented yet.");
        }
        return pdfDictionary2;
    }

    private PdfObject generateWidthsArray() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStream outputStream = new OutputStream(byteArrayOutputStream);
        outputStream.writeByte(91);
        Iterator<Integer> it = this.usedGlyphs.iterator();
        int code = -10;
        boolean z = true;
        while (it.hasNext()) {
            Glyph glyphByCode = this.fontProgram.getGlyphByCode(it.next().intValue());
            if (glyphByCode.getWidth() != 1000) {
                if (glyphByCode.getCode() == code + 1) {
                    outputStream.writeByte(32);
                } else {
                    if (!z) {
                        outputStream.writeByte(93);
                    }
                    outputStream.writeInteger(glyphByCode.getCode());
                    outputStream.writeByte(91);
                    z = false;
                }
                outputStream.writeInteger(glyphByCode.getWidth());
                code = glyphByCode.getCode();
            }
        }
        if (outputStream.getCurrentPos() <= 1) {
            return null;
        }
        outputStream.writeString("]]");
        return new PdfLiteral(byteArrayOutputStream.toByteArray());
    }

    public PdfStream getToUnicode() {
        OutputStream<ByteArrayOutputStream> outputStream = new OutputStream<>(new ByteArrayOutputStream());
        outputStream.writeString("/CIDInit /ProcSet findresource begin\n12 dict begin\nbegincmap\n/CIDSystemInfo\n<< /Registry (Adobe)\n/Ordering (UCS)\n/Supplement 0\n>> def\n/CMapName /Adobe-Identity-UCS def\n/CMapType 2 def\n1 begincodespacerange\n<0000><FFFF>\nendcodespacerange\n");
        ArrayList arrayList = new ArrayList(100);
        Iterator<Integer> it = this.usedGlyphs.iterator();
        int iWriteBfrange = 0;
        while (it.hasNext()) {
            Glyph glyphByCode = this.fontProgram.getGlyphByCode(it.next().intValue());
            if (glyphByCode.getChars() != null) {
                arrayList.add(glyphByCode);
                if (arrayList.size() == 100) {
                    iWriteBfrange += writeBfrange(outputStream, arrayList);
                }
            }
        }
        if (iWriteBfrange + writeBfrange(outputStream, arrayList) == 0) {
            return null;
        }
        outputStream.writeString("endcmap\nCMapName currentdict /CMap defineresource pop\nend end\n");
        return new PdfStream(((ByteArrayOutputStream) outputStream.getOutputStream()).toByteArray());
    }

    private int writeBfrange(OutputStream<ByteArrayOutputStream> outputStream, List<Glyph> list) {
        if (list.isEmpty()) {
            return 0;
        }
        outputStream.writeInteger(list.size());
        outputStream.writeString(" beginbfrange\n");
        for (Glyph glyph : list) {
            String hex = CMapContentParser.toHex(glyph.getCode());
            outputStream.writeString(hex);
            outputStream.writeString(hex);
            outputStream.writeByte(60);
            for (char c : glyph.getChars()) {
                outputStream.writeString(toHex4(c));
            }
            outputStream.writeByte(62);
            outputStream.writeByte(10);
        }
        outputStream.writeString("endbfrange\n");
        list.clear();
        return 1;
    }

    private static String toHex4(char c) {
        return ("0000" + Integer.toHexString(c)).substring(r2.length() - 4);
    }

    private String getCompatibleUniMap(String str) {
        Iterator<String> it = CidFontProperties.getRegistryNames().get(str + "_Uni").iterator();
        String next = "";
        while (it.hasNext()) {
            next = it.next();
            if ((next.endsWith("V") && this.vertical) || (!next.endsWith("V") && !this.vertical)) {
                break;
            }
        }
        return next;
    }

    private static CMapEncoding createCMap(PdfObject pdfObject, String str) {
        if (pdfObject.isStream()) {
            PdfStream pdfStream = (PdfStream) pdfObject;
            return new CMapEncoding(pdfStream.getAsName(PdfName.CMapName).getValue(), pdfStream.getBytes());
        }
        String value = ((PdfName) pdfObject).getValue();
        if (PdfEncodings.IDENTITY_H.equals(value) || PdfEncodings.IDENTITY_V.equals(value)) {
            return new CMapEncoding(value);
        }
        return new CMapEncoding(value, str);
    }

    private static String normalizeEncoding(String str) {
        return (str == null || "".equals(str)) ? PdfEncodings.IDENTITY_H : str;
    }
}
