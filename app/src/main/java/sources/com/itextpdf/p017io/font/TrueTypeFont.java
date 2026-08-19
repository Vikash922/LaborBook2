package com.itextpdf.p017io.font;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.font.OpenTypeParser;
import com.itextpdf.p017io.font.constants.TrueTypeCodePages;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphPositioningTableReader;
import com.itextpdf.p017io.font.otf.GlyphSubstitutionTableReader;
import com.itextpdf.p017io.font.otf.OpenTypeGdefTableReader;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.IntHashtable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TrueTypeFont extends FontProgram {
    protected int[][] bBoxes;
    private OpenTypeParser fontParser;
    private byte[] fontStreamBytes;
    private OpenTypeGdefTableReader gdefTable;
    private GlyphPositioningTableReader gposTable;
    private GlyphSubstitutionTableReader gsubTable;
    protected boolean isVertical;
    protected IntHashtable kerning;

    private TrueTypeFont(OpenTypeParser openTypeParser) throws IOException {
        this.kerning = new IntHashtable();
        this.fontParser = openTypeParser;
        openTypeParser.loadTables(true);
        initializeFontProperties();
    }

    protected TrueTypeFont() {
        this.kerning = new IntHashtable();
        this.fontNames = new FontNames();
    }

    public TrueTypeFont(String str) throws IOException {
        this(new OpenTypeParser(str));
    }

    public TrueTypeFont(byte[] bArr) throws IOException {
        this(new OpenTypeParser(bArr));
    }

    TrueTypeFont(String str, int i) throws IOException {
        this(new OpenTypeParser(str, i));
    }

    TrueTypeFont(byte[] bArr, int i) throws IOException {
        this(new OpenTypeParser(bArr, i));
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    public boolean hasKernPairs() {
        return this.kerning.size() > 0;
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    public int getKerning(Glyph glyph, Glyph glyph2) {
        if (glyph == null || glyph2 == null) {
            return 0;
        }
        return this.kerning.get((glyph.getCode() << 16) + glyph2.getCode());
    }

    public boolean isCff() {
        return this.fontParser.isCff();
    }

    public Map<Integer, int[]> getActiveCmap() {
        OpenTypeParser.CmapTable cmapTable = this.fontParser.getCmapTable();
        if (cmapTable.cmapExt != null) {
            return cmapTable.cmapExt;
        }
        if (!cmapTable.fontSpecific && cmapTable.cmap31 != null) {
            return cmapTable.cmap31;
        }
        if (cmapTable.fontSpecific && cmapTable.cmap10 != null) {
            return cmapTable.cmap10;
        }
        if (cmapTable.cmap31 != null) {
            return cmapTable.cmap31;
        }
        return cmapTable.cmap10;
    }

    public byte[] getFontStreamBytes() {
        byte[] bArr = this.fontStreamBytes;
        if (bArr != null) {
            return bArr;
        }
        try {
            if (this.fontParser.isCff()) {
                this.fontStreamBytes = this.fontParser.readCffFont();
            } else {
                this.fontStreamBytes = this.fontParser.getFullFont();
            }
            return this.fontStreamBytes;
        } catch (IOException e) {
            this.fontStreamBytes = null;
            throw new com.itextpdf.p017io.exceptions.IOException("I/O exception.", (Throwable) e);
        }
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    public int getPdfFontFlags() {
        int i = (this.fontMetrics.isFixedPitch() ? 1 : 0) | (isFontSpecific() ? 4 : 32);
        if (this.fontNames.isItalic()) {
            i |= 64;
        }
        return (this.fontNames.isBold() || this.fontNames.getFontWeight() > 500) ? i | 262144 : i;
    }

    public int getDirectoryOffset() {
        return this.fontParser.directoryOffset;
    }

    public GlyphSubstitutionTableReader getGsubTable() {
        return this.gsubTable;
    }

    public GlyphPositioningTableReader getGposTable() {
        return this.gposTable;
    }

    public OpenTypeGdefTableReader getGdefTable() {
        return this.gdefTable;
    }

    public byte[] getSubset(Set<Integer> set, boolean z) {
        try {
            return this.fontParser.getSubset(set, z);
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException("I/O exception.", (Throwable) e);
        }
    }

    public Set<Integer> mapGlyphsCidsToGids(Set<Integer> set) {
        return (Set) set.stream().map(new Function() { // from class: com.itextpdf.io.font.TrueTypeFont$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.m3118lambda$mapGlyphsCidsToGids$0$comitextpdfiofontTrueTypeFont((Integer) obj);
            }
        }).collect(Collectors.toSet());
    }

    /* JADX INFO: renamed from: lambda$mapGlyphsCidsToGids$0$com-itextpdf-io-font-TrueTypeFont, reason: not valid java name */
    /* synthetic */ Integer m3118lambda$mapGlyphsCidsToGids$0$comitextpdfiofontTrueTypeFont(Integer num) {
        Glyph glyphByCode = getGlyphByCode(num.intValue());
        return glyphByCode instanceof GidAwareGlyph ? Integer.valueOf(((GidAwareGlyph) glyphByCode).getGid()) : num;
    }

    protected void readGdefTable() throws IOException {
        int[] iArr = this.fontParser.tables.get("GDEF");
        if (iArr != null) {
            this.gdefTable = new OpenTypeGdefTableReader(this.fontParser.raf, iArr[0]);
        } else {
            this.gdefTable = new OpenTypeGdefTableReader(this.fontParser.raf, 0);
        }
        this.gdefTable.readTable();
    }

    protected void readGsubTable() throws IOException {
        int[] iArr = this.fontParser.tables.get("GSUB");
        if (iArr != null) {
            this.gsubTable = new GlyphSubstitutionTableReader(this.fontParser.raf, iArr[0], this.gdefTable, this.codeToGlyph, this.fontMetrics.getUnitsPerEm());
        }
    }

    protected void readGposTable() throws IOException {
        int[] iArr = this.fontParser.tables.get("GPOS");
        if (iArr != null) {
            this.gposTable = new GlyphPositioningTableReader(this.fontParser.raf, iArr[0], this.gdefTable, this.codeToGlyph, this.fontMetrics.getUnitsPerEm());
        }
    }

    private void initializeFontProperties() throws IOException {
        Glyph glyph;
        OpenTypeParser.HeaderTable headTable = this.fontParser.getHeadTable();
        OpenTypeParser.HorizontalHeader hheaTable = this.fontParser.getHheaTable();
        OpenTypeParser.WindowsMetrics os_2Table = this.fontParser.getOs_2Table();
        OpenTypeParser.PostTable postTable = this.fontParser.getPostTable();
        this.isFontSpecific = this.fontParser.getCmapTable().fontSpecific;
        this.kerning = this.fontParser.readKerning(headTable.unitsPerEm);
        this.bBoxes = this.fontParser.readBbox(headTable.unitsPerEm);
        this.fontNames = this.fontParser.getFontNames();
        this.fontMetrics.setUnitsPerEm(headTable.unitsPerEm);
        this.fontMetrics.updateBbox(headTable.xMin, headTable.yMin, headTable.xMax, headTable.yMax);
        this.fontMetrics.setNumberOfGlyphs(this.fontParser.readNumGlyphs());
        this.fontMetrics.setGlyphWidths(this.fontParser.getGlyphWidthsByIndex());
        this.fontMetrics.setTypoAscender(os_2Table.sTypoAscender);
        this.fontMetrics.setTypoDescender(os_2Table.sTypoDescender);
        this.fontMetrics.setCapHeight(os_2Table.sCapHeight);
        this.fontMetrics.setXHeight(os_2Table.sxHeight);
        this.fontMetrics.setItalicAngle(postTable.italicAngle);
        this.fontMetrics.setAscender(hheaTable.Ascender);
        this.fontMetrics.setDescender(hheaTable.Descender);
        this.fontMetrics.setLineGap(hheaTable.LineGap);
        this.fontMetrics.setWinAscender(os_2Table.usWinAscent);
        this.fontMetrics.setWinDescender(os_2Table.usWinDescent);
        this.fontMetrics.setAdvanceWidthMax(hheaTable.advanceWidthMax);
        this.fontMetrics.setUnderlinePosition((postTable.underlinePosition - postTable.underlineThickness) / 2);
        this.fontMetrics.setUnderlineThickness(postTable.underlineThickness);
        this.fontMetrics.setStrikeoutPosition(os_2Table.yStrikeoutPosition);
        this.fontMetrics.setStrikeoutSize(os_2Table.yStrikeoutSize);
        this.fontMetrics.setSubscriptOffset(-os_2Table.ySubscriptYOffset);
        this.fontMetrics.setSubscriptSize(os_2Table.ySubscriptYSize);
        this.fontMetrics.setSuperscriptOffset(os_2Table.ySuperscriptYOffset);
        this.fontMetrics.setSuperscriptSize(os_2Table.ySuperscriptYSize);
        this.fontMetrics.setIsFixedPitch(postTable.isFixedPitch);
        String[][] names = this.fontNames.getNames(5);
        if (names != null) {
            this.fontIdentification.setTtfVersion(names[0][3]);
        }
        String[][] names2 = this.fontNames.getNames(3);
        if (names2 != null) {
            this.fontIdentification.setTtfVersion(names2[0][3]);
        }
        byte[] bArr = new byte[12];
        bArr[1] = (byte) os_2Table.sFamilyClass;
        bArr[0] = (byte) (os_2Table.sFamilyClass >> 8);
        System.arraycopy(os_2Table.panose, 0, bArr, 2, 10);
        this.fontIdentification.setPanose(bArr);
        Map<Integer, int[]> activeCmap = getActiveCmap();
        int[] glyphWidthsByIndex = this.fontParser.getGlyphWidthsByIndex();
        int numberOfGlyphs = this.fontMetrics.getNumberOfGlyphs();
        this.unicodeToGlyph = new LinkedHashMap(activeCmap.size());
        this.codeToGlyph = new LinkedHashMap(numberOfGlyphs);
        this.avgWidth = 0;
        CFFFontSubset cFFFontSubset = isCff() ? new CFFFontSubset(getFontStreamBytes()) : null;
        Iterator<Integer> it = activeCmap.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            int i = activeCmap.get(Integer.valueOf(iIntValue))[0];
            if (i >= numberOfGlyphs) {
                LoggerFactory.getLogger((Class<?>) TrueTypeFont.class).warn(MessageFormatUtil.format(IoLogMessageConstant.FONT_HAS_INVALID_GLYPH, getFontNames().getFontName(), Integer.valueOf(i)));
            } else {
                int[][] iArr = this.bBoxes;
                int[] iArr2 = iArr != null ? iArr[i] : null;
                if (cFFFontSubset != null && cFFFontSubset.isCID()) {
                    int cidForGlyphId = cFFFontSubset.getCidForGlyphId(i);
                    GidAwareGlyph gidAwareGlyph = new GidAwareGlyph(cidForGlyphId, glyphWidthsByIndex[i], iIntValue, iArr2);
                    gidAwareGlyph.setGid(i);
                    i = cidForGlyphId;
                    glyph = gidAwareGlyph;
                } else {
                    glyph = new Glyph(i, glyphWidthsByIndex[i], iIntValue, iArr2);
                }
                this.unicodeToGlyph.put(Integer.valueOf(iIntValue), glyph);
                if (!this.codeToGlyph.containsKey(Integer.valueOf(i))) {
                    this.codeToGlyph.put(Integer.valueOf(i), glyph);
                }
                this.avgWidth += glyph.getWidth();
            }
        }
        fixSpaceIssue();
        for (int i2 = 0; i2 < glyphWidthsByIndex.length; i2++) {
            if (!this.codeToGlyph.containsKey(Integer.valueOf(i2))) {
                Glyph glyph2 = new Glyph(i2, glyphWidthsByIndex[i2], -1);
                this.codeToGlyph.put(Integer.valueOf(i2), glyph2);
                this.avgWidth += glyph2.getWidth();
            }
        }
        if (this.codeToGlyph.size() != 0) {
            this.avgWidth /= this.codeToGlyph.size();
        }
        readGdefTable();
        readGsubTable();
        readGposTable();
        this.isVertical = false;
    }

    public String[] getCodePagesSupported() {
        long j = (((long) this.fontParser.getOs_2Table().ulCodePageRange2) << 32) + (((long) this.fontParser.getOs_2Table().ulCodePageRange1) & BodyPartID.bodyIdMax);
        int i = 0;
        long j2 = 1;
        for (int i2 = 0; i2 < 64; i2++) {
            if ((j & j2) != 0 && TrueTypeCodePages.get(i2) != null) {
                i++;
            }
            j2 <<= 1;
        }
        String[] strArr = new String[i];
        long j3 = 1;
        int i3 = 0;
        for (int i4 = 0; i4 < 64; i4++) {
            if ((j & j3) != 0 && TrueTypeCodePages.get(i4) != null) {
                strArr[i3] = TrueTypeCodePages.get(i4);
                i3++;
            }
            j3 <<= 1;
        }
        return strArr;
    }

    @Override // com.itextpdf.p017io.font.FontProgram
    public boolean isBuiltWith(String str) {
        return Objects.equals(this.fontParser.fileName, str);
    }

    public void close() throws IOException {
        OpenTypeParser openTypeParser = this.fontParser;
        if (openTypeParser != null) {
            openTypeParser.close();
        }
        this.fontParser = null;
    }

    public void updateUsedGlyphs(SortedSet<Integer> sortedSet, boolean z, List<int[]> list) {
        int[] compactRange;
        if (list != null) {
            compactRange = toCompactRange(list);
        } else if (!z) {
            compactRange = new int[]{0, 65535};
        } else {
            compactRange = new int[0];
        }
        for (int i = 0; i < compactRange.length; i += 2) {
            int i2 = compactRange[i + 1];
            for (int i3 = compactRange[i]; i3 <= i2; i3++) {
                if (getGlyphByCode(i3) != null) {
                    sortedSet.add(Integer.valueOf(i3));
                }
            }
        }
    }

    private static int[] toCompactRange(List<int[]> list) {
        ArrayList arrayList = new ArrayList();
        for (int[] iArr : list) {
            for (int i = 0; i < iArr.length; i += 2) {
                int i2 = i + 1;
                arrayList.add(new int[]{Math.max(0, Math.min(iArr[i], iArr[i2])), Math.min(65535, Math.max(iArr[i], iArr[i2]))});
            }
        }
        int i3 = 0;
        while (i3 < arrayList.size() - 1) {
            int i4 = i3 + 1;
            int i5 = i4;
            while (i5 < arrayList.size()) {
                int[] iArr2 = (int[]) arrayList.get(i3);
                int[] iArr3 = (int[]) arrayList.get(i5);
                int i6 = iArr2[0];
                int i7 = iArr3[0];
                if ((i6 >= i7 && i6 <= iArr3[1]) || (iArr2[1] >= i7 && i6 <= iArr3[1])) {
                    iArr2[0] = Math.min(i6, i7);
                    iArr2[1] = Math.max(iArr2[1], iArr3[1]);
                    arrayList.remove(i5);
                    i5--;
                }
                i5++;
            }
            i3 = i4;
        }
        int[] iArr4 = new int[arrayList.size() * 2];
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            int[] iArr5 = (int[]) arrayList.get(i8);
            int i9 = i8 * 2;
            iArr4[i9] = iArr5[0];
            iArr4[i9 + 1] = iArr5[1];
        }
        return iArr4;
    }
}
