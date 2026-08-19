package com.itextpdf.p017io.font;

import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.p017io.font.constants.FontStretches;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.p017io.util.IntHashtable;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes6.dex */
class OpenTypeParser implements Closeable {
    private static final int HEAD_LOCA_FORMAT_OFFSET = 51;
    protected Map<Integer, List<String[]>> allNameEntries;
    protected boolean cff;
    protected int cffLength;
    protected int cffOffset;
    protected CmapTable cmaps;
    protected int directoryOffset;
    protected String fileName;
    protected String fontName;
    private int[] glyphWidthsByIndex;
    protected HeaderTable head;
    protected HorizontalHeader hhea;
    protected WindowsMetrics os_2;
    protected PostTable post;
    protected RandomAccessFileOrArray raf;
    protected Map<String, int[]> tables;
    protected int ttcIndex;

    static class HeaderTable {
        int flags;
        int macStyle;
        int unitsPerEm;
        short xMax;
        short xMin;
        short yMax;
        short yMin;

        HeaderTable() {
        }
    }

    static class HorizontalHeader {
        short Ascender;
        short Descender;
        short LineGap;
        int advanceWidthMax;
        short caretSlopeRise;
        short caretSlopeRun;
        short minLeftSideBearing;
        short minRightSideBearing;
        int numberOfHMetrics;
        short xMaxExtent;

        HorizontalHeader() {
        }
    }

    static class WindowsMetrics {
        int fsSelection;
        short fsType;
        int sCapHeight;
        short sFamilyClass;
        short sTypoAscender;
        short sTypoDescender;
        short sTypoLineGap;
        int sxHeight;
        int ulCodePageRange1;
        int ulCodePageRange2;
        int usFirstCharIndex;
        int usLastCharIndex;
        int usWeightClass;
        int usWidthClass;
        int usWinAscent;
        int usWinDescent;
        short xAvgCharWidth;
        short yStrikeoutPosition;
        short yStrikeoutSize;
        short ySubscriptXOffset;
        short ySubscriptXSize;
        short ySubscriptYOffset;
        short ySubscriptYSize;
        short ySuperscriptXOffset;
        short ySuperscriptXSize;
        short ySuperscriptYOffset;
        short ySuperscriptYSize;
        byte[] panose = new byte[10];
        byte[] achVendID = new byte[4];

        WindowsMetrics() {
        }
    }

    static class PostTable {
        boolean isFixedPitch;
        float italicAngle;
        int underlinePosition;
        int underlineThickness;

        PostTable() {
        }
    }

    static class CmapTable {
        Map<Integer, int[]> cmap10;
        Map<Integer, int[]> cmap31;
        Map<Integer, int[]> cmapExt;
        boolean fontSpecific = false;

        CmapTable() {
        }
    }

    public OpenTypeParser(byte[] bArr) throws IOException {
        this.ttcIndex = -1;
        this.cff = false;
        this.raf = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(bArr));
        initializeSfntTables();
    }

    public OpenTypeParser(byte[] bArr, int i) throws IOException {
        this.cff = false;
        this.ttcIndex = i;
        this.raf = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(bArr));
        initializeSfntTables();
    }

    public OpenTypeParser(String str, int i) throws IOException {
        this.cff = false;
        this.ttcIndex = i;
        this.raf = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createBestSource(str));
        initializeSfntTables();
    }

    public OpenTypeParser(String str) throws IOException {
        this.ttcIndex = -1;
        this.cff = false;
        String tTCName = getTTCName(str);
        this.fileName = tTCName;
        if (tTCName.length() < str.length()) {
            this.ttcIndex = Integer.parseInt(str.substring(tTCName.length() + 1));
        }
        this.raf = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createBestSource(this.fileName));
        initializeSfntTables();
    }

    public String getPsFontName() {
        if (this.fontName == null) {
            List<String[]> list = this.allNameEntries.get(6);
            if (list != null && list.size() > 0) {
                this.fontName = list.get(0)[3];
            } else {
                this.fontName = new File(this.fileName).getName().replace(' ', SignatureVisitor.SUPER);
            }
        }
        return this.fontName;
    }

    public Map<Integer, List<String[]>> getAllNameEntries() {
        return this.allNameEntries;
    }

    public PostTable getPostTable() {
        return this.post;
    }

    public WindowsMetrics getOs_2Table() {
        return this.os_2;
    }

    public HorizontalHeader getHheaTable() {
        return this.hhea;
    }

    public HeaderTable getHeadTable() {
        return this.head;
    }

    public CmapTable getCmapTable() {
        return this.cmaps;
    }

    public int[] getGlyphWidthsByIndex() {
        return this.glyphWidthsByIndex;
    }

    public FontNames getFontNames() {
        FontNames fontNames = new FontNames();
        fontNames.setAllNames(getAllNameEntries());
        fontNames.setFontName(getPsFontName());
        fontNames.setFullName(fontNames.getNames(4));
        String[][] names = fontNames.getNames(16);
        if (names != null) {
            fontNames.setFamilyName(names);
        } else {
            fontNames.setFamilyName(fontNames.getNames(1));
        }
        String[][] names2 = fontNames.getNames(2);
        if (names2 != null) {
            fontNames.setStyle(names2[0][3]);
        }
        String[][] names3 = fontNames.getNames(17);
        if (names != null) {
            fontNames.setSubfamily(names3);
        } else {
            fontNames.setSubfamily(names2);
        }
        String[][] names4 = fontNames.getNames(20);
        if (names4 != null) {
            fontNames.setCidFontName(names4[0][3]);
        }
        fontNames.setFontWeight(this.os_2.usWeightClass);
        fontNames.setFontStretch(FontStretches.fromOpenTypeWidthClass(this.os_2.usWidthClass));
        fontNames.setMacStyle(this.head.macStyle);
        fontNames.setAllowEmbedding(this.os_2.fsType != 2);
        return fontNames;
    }

    public boolean isCff() {
        return this.cff;
    }

    public byte[] getFullFont() throws IOException {
        RandomAccessFileOrArray randomAccessFileOrArrayCreateView = null;
        try {
            randomAccessFileOrArrayCreateView = this.raf.createView();
            byte[] bArr = new byte[(int) randomAccessFileOrArrayCreateView.length()];
            randomAccessFileOrArrayCreateView.readFully(bArr);
            if (randomAccessFileOrArrayCreateView != null) {
                try {
                    randomAccessFileOrArrayCreateView.close();
                } catch (Exception unused) {
                }
            }
            return bArr;
        } catch (Throwable th) {
            if (randomAccessFileOrArrayCreateView != null) {
                try {
                    randomAccessFileOrArrayCreateView.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    public byte[] readCffFont() throws IOException {
        RandomAccessFileOrArray randomAccessFileOrArrayCreateView = null;
        if (!isCff()) {
            return null;
        }
        try {
            randomAccessFileOrArrayCreateView = this.raf.createView();
            randomAccessFileOrArrayCreateView.seek(this.cffOffset);
            byte[] bArr = new byte[this.cffLength];
            randomAccessFileOrArrayCreateView.readFully(bArr);
            if (randomAccessFileOrArrayCreateView != null) {
                try {
                    randomAccessFileOrArrayCreateView.close();
                } catch (Exception unused) {
                }
            }
            return bArr;
        } catch (Throwable th) {
            if (randomAccessFileOrArrayCreateView != null) {
                try {
                    randomAccessFileOrArrayCreateView.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    byte[] getSubset(Set<Integer> set, boolean z) throws IOException {
        return new TrueTypeFontSubset(this.fileName, this.raf.createView(), set, this.directoryOffset, z).process();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        RandomAccessFileOrArray randomAccessFileOrArray = this.raf;
        if (randomAccessFileOrArray != null) {
            randomAccessFileOrArray.close();
        }
        this.raf = null;
    }

    private void initializeSfntTables() throws IOException {
        this.tables = new LinkedHashMap();
        int i = this.ttcIndex;
        if (i >= 0) {
            if (i < 0) {
                if (this.fileName != null) {
                    throw new com.itextpdf.p017io.exceptions.IOException("The font index for {0} must be positive.").setMessageParams(this.fileName);
                }
                throw new com.itextpdf.p017io.exceptions.IOException("The font index must be positive.");
            }
            if (!readStandardString(4).equals("ttcf")) {
                if (this.fileName != null) {
                    throw new com.itextpdf.p017io.exceptions.IOException("{0} is not a valid ttc file.").setMessageParams(this.fileName);
                }
                throw new com.itextpdf.p017io.exceptions.IOException("Not a valid ttc file.");
            }
            this.raf.skipBytes(4);
            int i2 = this.raf.readInt();
            if (i >= i2) {
                if (this.fileName != null) {
                    throw new com.itextpdf.p017io.exceptions.IOException("The font index for {0} must be between 0 and {1}. It is {2}.").setMessageParams(this.fileName, Integer.valueOf(i2 - 1), Integer.valueOf(i));
                }
                throw new com.itextpdf.p017io.exceptions.IOException("The font index must be between 0 and {0}. It is {1}.").setMessageParams(Integer.valueOf(i2 - 1), Integer.valueOf(i));
            }
            this.raf.skipBytes(i * 4);
            this.directoryOffset = this.raf.readInt();
        }
        this.raf.seek(this.directoryOffset);
        int i3 = this.raf.readInt();
        if (i3 != 65536 && i3 != 1330926671) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException("{0} is not a valid ttf or otf file.").setMessageParams(this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException("Not a valid ttf or otf file.");
        }
        int unsignedShort = this.raf.readUnsignedShort();
        this.raf.skipBytes(6);
        for (int i4 = 0; i4 < unsignedShort; i4++) {
            String standardString = readStandardString(4);
            this.raf.skipBytes(4);
            this.tables.put(standardString, new int[]{this.raf.readInt(), this.raf.readInt()});
        }
    }

    protected void loadTables(boolean z) throws IOException {
        readNameTable();
        readHeadTable();
        readOs_2Table();
        readPostTable();
        if (z) {
            checkCff();
            readHheaTable();
            readGlyphWidths();
            readCmapTable();
        }
    }

    protected static String getTTCName(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.toLowerCase().indexOf(".ttc,");
        return iIndexOf < 0 ? str : str.substring(0, iIndexOf + 4);
    }

    protected void checkCff() {
        int[] iArr = this.tables.get("CFF ");
        if (iArr != null) {
            this.cff = true;
            this.cffOffset = iArr[0];
            this.cffLength = iArr[1];
        }
    }

    protected void readGlyphWidths() throws IOException {
        int i = this.hhea.numberOfHMetrics;
        int i2 = this.head.unitsPerEm;
        if (this.tables.get("hmtx") == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("hmtx", this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams("hmtx");
        }
        this.glyphWidthsByIndex = new int[readNumGlyphs()];
        this.raf.seek(r2[0]);
        for (int i3 = 0; i3 < i; i3++) {
            this.glyphWidthsByIndex[i3] = (this.raf.readUnsignedShort() * 1000) / i2;
            int i4 = (this.raf.readShort() * 1000) / i2;
        }
        if (i <= 0) {
            return;
        }
        int i5 = i;
        while (true) {
            int[] iArr = this.glyphWidthsByIndex;
            if (i5 >= iArr.length) {
                return;
            }
            iArr[i5] = iArr[i - 1];
            i5++;
        }
    }

    protected IntHashtable readKerning(int i) throws IOException {
        int[] iArr = this.tables.get("kern");
        IntHashtable intHashtable = new IntHashtable();
        if (iArr == null) {
            return intHashtable;
        }
        this.raf.seek(iArr[0] + 2);
        int unsignedShort = this.raf.readUnsignedShort();
        int i2 = iArr[0] + 4;
        int unsignedShort2 = 0;
        for (int i3 = 0; i3 < unsignedShort; i3++) {
            i2 += unsignedShort2;
            this.raf.seek(i2);
            this.raf.skipBytes(2);
            unsignedShort2 = this.raf.readUnsignedShort();
            if ((this.raf.readUnsignedShort() & 65527) == 1) {
                int unsignedShort3 = this.raf.readUnsignedShort();
                this.raf.skipBytes(6);
                for (int i4 = 0; i4 < unsignedShort3; i4++) {
                    intHashtable.put(this.raf.readInt(), (this.raf.readShort() * 1000) / i);
                }
            }
        }
        return intHashtable;
    }

    protected int[][] readBbox(int i) throws IOException {
        int[] iArr;
        if (this.tables.get(XfdfConstants.HEAD) == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams(XfdfConstants.HEAD, this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams(XfdfConstants.HEAD);
        }
        int i2 = 0;
        this.raf.seek(r0[0] + 51);
        boolean z = this.raf.readUnsignedShort() == 0;
        int[] iArr2 = this.tables.get("loca");
        if (iArr2 == null) {
            return null;
        }
        this.raf.seek(iArr2[0]);
        if (z) {
            int i3 = iArr2[1] / 2;
            iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                iArr[i4] = this.raf.readUnsignedShort() * 2;
            }
        } else {
            int i5 = iArr2[1] / 4;
            iArr = new int[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                iArr[i6] = this.raf.readInt();
            }
        }
        int[] iArr3 = this.tables.get("glyf");
        if (iArr3 == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("glyf", this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams("glyf");
        }
        int i7 = iArr3[0];
        int[][] iArr4 = new int[iArr.length - 1][];
        while (i2 < iArr.length - 1) {
            int i8 = i2 + 1;
            if (iArr[i2] != iArr[i8]) {
                this.raf.seek(r3 + i7 + 2);
                iArr4[i2] = new int[]{(this.raf.readShort() * 1000) / i, (this.raf.readShort() * 1000) / i, (this.raf.readShort() * 1000) / i, (this.raf.readShort() * 1000) / i};
            }
            i2 = i8;
        }
        return iArr4;
    }

    protected int readNumGlyphs() throws IOException {
        if (this.tables.get("maxp") == null) {
            return 65536;
        }
        this.raf.seek(r0[0] + 4);
        return this.raf.readUnsignedShort();
    }

    private void readNameTable() throws IOException {
        List<String[]> list;
        String unicodeString;
        if (this.tables.get("name") == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("name", this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams("name");
        }
        this.allNameEntries = new LinkedHashMap();
        char c = 0;
        this.raf.seek(r1[0] + 2);
        int unsignedShort = this.raf.readUnsignedShort();
        int unsignedShort2 = this.raf.readUnsignedShort();
        int i = 0;
        while (i < unsignedShort) {
            int unsignedShort3 = this.raf.readUnsignedShort();
            int unsignedShort4 = this.raf.readUnsignedShort();
            int unsignedShort5 = this.raf.readUnsignedShort();
            int unsignedShort6 = this.raf.readUnsignedShort();
            int unsignedShort7 = this.raf.readUnsignedShort();
            int unsignedShort8 = this.raf.readUnsignedShort();
            if (this.allNameEntries.containsKey(Integer.valueOf(unsignedShort6))) {
                list = this.allNameEntries.get(Integer.valueOf(unsignedShort6));
            } else {
                Map<Integer, List<String[]>> map = this.allNameEntries;
                Integer numValueOf = Integer.valueOf(unsignedShort6);
                ArrayList arrayList = new ArrayList();
                map.put(numValueOf, arrayList);
                list = arrayList;
            }
            int position = (int) this.raf.getPosition();
            int i2 = unsignedShort2;
            this.raf.seek(r1[c] + unsignedShort2 + unsignedShort8);
            if (unsignedShort3 == 0 || unsignedShort3 == 3 || (unsignedShort3 == 2 && unsignedShort4 == 1)) {
                unicodeString = readUnicodeString(unsignedShort7);
            } else {
                unicodeString = readStandardString(unsignedShort7);
            }
            list.add(new String[]{Integer.toString(unsignedShort3), Integer.toString(unsignedShort4), Integer.toString(unsignedShort5), unicodeString});
            this.raf.seek(position);
            i++;
            c = 0;
            unsignedShort2 = i2;
        }
    }

    private void readHheaTable() throws IOException {
        if (this.tables.get("hhea") == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("hhea", this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams("hhea");
        }
        this.raf.seek(r0[0] + 4);
        HorizontalHeader horizontalHeader = new HorizontalHeader();
        this.hhea = horizontalHeader;
        horizontalHeader.Ascender = this.raf.readShort();
        this.hhea.Descender = this.raf.readShort();
        this.hhea.LineGap = this.raf.readShort();
        this.hhea.advanceWidthMax = this.raf.readUnsignedShort();
        this.hhea.minLeftSideBearing = this.raf.readShort();
        this.hhea.minRightSideBearing = this.raf.readShort();
        this.hhea.xMaxExtent = this.raf.readShort();
        this.hhea.caretSlopeRise = this.raf.readShort();
        this.hhea.caretSlopeRun = this.raf.readShort();
        this.raf.skipBytes(12);
        this.hhea.numberOfHMetrics = this.raf.readUnsignedShort();
    }

    private void readHeadTable() throws IOException {
        if (this.tables.get(XfdfConstants.HEAD) == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams(XfdfConstants.HEAD, this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams(XfdfConstants.HEAD);
        }
        this.raf.seek(r0[0] + 16);
        HeaderTable headerTable = new HeaderTable();
        this.head = headerTable;
        headerTable.flags = this.raf.readUnsignedShort();
        this.head.unitsPerEm = this.raf.readUnsignedShort();
        this.raf.skipBytes(16);
        this.head.xMin = this.raf.readShort();
        this.head.yMin = this.raf.readShort();
        this.head.xMax = this.raf.readShort();
        this.head.yMax = this.raf.readShort();
        this.head.macStyle = this.raf.readUnsignedShort();
    }

    private void readOs_2Table() throws IOException {
        if (this.tables.get("OS/2") == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("os/2", this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams("os/2");
        }
        this.os_2 = new WindowsMetrics();
        this.raf.seek(r0[0]);
        int unsignedShort = this.raf.readUnsignedShort();
        this.os_2.xAvgCharWidth = this.raf.readShort();
        this.os_2.usWeightClass = this.raf.readUnsignedShort();
        this.os_2.usWidthClass = this.raf.readUnsignedShort();
        this.os_2.fsType = this.raf.readShort();
        this.os_2.ySubscriptXSize = this.raf.readShort();
        this.os_2.ySubscriptYSize = this.raf.readShort();
        this.os_2.ySubscriptXOffset = this.raf.readShort();
        this.os_2.ySubscriptYOffset = this.raf.readShort();
        this.os_2.ySuperscriptXSize = this.raf.readShort();
        this.os_2.ySuperscriptYSize = this.raf.readShort();
        this.os_2.ySuperscriptXOffset = this.raf.readShort();
        this.os_2.ySuperscriptYOffset = this.raf.readShort();
        this.os_2.yStrikeoutSize = this.raf.readShort();
        this.os_2.yStrikeoutPosition = this.raf.readShort();
        this.os_2.sFamilyClass = this.raf.readShort();
        this.raf.readFully(this.os_2.panose);
        this.raf.skipBytes(16);
        this.raf.readFully(this.os_2.achVendID);
        this.os_2.fsSelection = this.raf.readUnsignedShort();
        this.os_2.usFirstCharIndex = this.raf.readUnsignedShort();
        this.os_2.usLastCharIndex = this.raf.readUnsignedShort();
        this.os_2.sTypoAscender = this.raf.readShort();
        this.os_2.sTypoDescender = this.raf.readShort();
        if (this.os_2.sTypoDescender > 0) {
            WindowsMetrics windowsMetrics = this.os_2;
            windowsMetrics.sTypoDescender = (short) (-windowsMetrics.sTypoDescender);
        }
        this.os_2.sTypoLineGap = this.raf.readShort();
        this.os_2.usWinAscent = this.raf.readUnsignedShort();
        this.os_2.usWinDescent = this.raf.readUnsignedShort();
        if (this.os_2.usWinDescent > 0) {
            WindowsMetrics windowsMetrics2 = this.os_2;
            windowsMetrics2.usWinDescent = (short) (-windowsMetrics2.usWinDescent);
        }
        this.os_2.ulCodePageRange1 = 0;
        this.os_2.ulCodePageRange2 = 0;
        if (unsignedShort > 0) {
            this.os_2.ulCodePageRange1 = this.raf.readInt();
            this.os_2.ulCodePageRange2 = this.raf.readInt();
        }
        if (unsignedShort > 1) {
            this.raf.skipBytes(2);
            this.os_2.sCapHeight = this.raf.readShort();
        } else {
            this.os_2.sCapHeight = (int) (((double) this.head.unitsPerEm) * 0.7d);
        }
    }

    private void readPostTable() throws IOException {
        if (this.tables.get("post") != null) {
            this.raf.seek(r0[0] + 4);
            short s = this.raf.readShort();
            int unsignedShort = this.raf.readUnsignedShort();
            PostTable postTable = new PostTable();
            this.post = postTable;
            postTable.italicAngle = (float) (((double) s) + (((double) unsignedShort) / 16384.0d));
            this.post.underlinePosition = this.raf.readShort();
            this.post.underlineThickness = this.raf.readShort();
            this.post.isFixedPitch = this.raf.readInt() != 0;
            return;
        }
        PostTable postTable2 = new PostTable();
        this.post = postTable2;
        postTable2.italicAngle = (float) (((-Math.atan2(this.hhea.caretSlopeRun, this.hhea.caretSlopeRise)) * 180.0d) / 3.141592653589793d);
    }

    private void readCmapTable() throws IOException {
        if (this.tables.get("cmap") == null) {
            if (this.fileName != null) {
                throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("cmap", this.fileName);
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExist).setMessageParams("cmap");
        }
        this.raf.seek(r0[0]);
        this.raf.skipBytes(2);
        int unsignedShort = this.raf.readUnsignedShort();
        this.cmaps = new CmapTable();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < unsignedShort; i5++) {
            int unsignedShort2 = this.raf.readUnsignedShort();
            int unsignedShort3 = this.raf.readUnsignedShort();
            int i6 = this.raf.readInt();
            if (unsignedShort2 == 3 && unsignedShort3 == 0) {
                this.cmaps.fontSpecific = true;
                i3 = i6;
            } else if (unsignedShort2 == 3 && unsignedShort3 == 1) {
                i2 = i6;
            } else if (unsignedShort2 == 3 && unsignedShort3 == 10) {
                i4 = i6;
            } else if (unsignedShort2 == 1 && unsignedShort3 == 0) {
                i = i6;
            }
        }
        if (i > 0) {
            this.raf.seek(r0[0] + i);
            int unsignedShort4 = this.raf.readUnsignedShort();
            if (unsignedShort4 == 0) {
                this.cmaps.cmap10 = readFormat0();
            } else if (unsignedShort4 == 4) {
                this.cmaps.cmap10 = readFormat4(false);
            } else if (unsignedShort4 == 6) {
                this.cmaps.cmap10 = readFormat6();
            }
        }
        if (i2 > 0) {
            this.raf.seek(r0[0] + i2);
            if (this.raf.readUnsignedShort() == 4) {
                this.cmaps.cmap31 = readFormat4(false);
            }
        }
        if (i3 > 0) {
            this.raf.seek(r0[0] + i3);
            if (this.raf.readUnsignedShort() == 4) {
                CmapTable cmapTable = this.cmaps;
                cmapTable.cmap10 = readFormat4(cmapTable.fontSpecific);
            } else {
                this.cmaps.fontSpecific = false;
            }
        }
        if (i4 > 0) {
            this.raf.seek(r0[0] + i4);
            int unsignedShort5 = this.raf.readUnsignedShort();
            if (unsignedShort5 == 0) {
                this.cmaps.cmapExt = readFormat0();
                return;
            }
            if (unsignedShort5 == 4) {
                this.cmaps.cmapExt = readFormat4(false);
            } else if (unsignedShort5 == 6) {
                this.cmaps.cmapExt = readFormat6();
            } else {
                if (unsignedShort5 != 12) {
                    return;
                }
                this.cmaps.cmapExt = readFormat12();
            }
        }
    }

    private String readStandardString(int i) throws IOException {
        return this.raf.readString(i, "Cp1252");
    }

    private String readUnicodeString(int i) throws IOException {
        StringBuilder sb = new StringBuilder();
        int i2 = i / 2;
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(this.raf.readChar());
        }
        return sb.toString();
    }

    protected int getGlyphWidth(int i) {
        int[] iArr = this.glyphWidthsByIndex;
        if (i >= iArr.length) {
            i = iArr.length - 1;
        }
        return iArr[i];
    }

    private Map<Integer, int[]> readFormat0() throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.raf.skipBytes(4);
        for (int i = 0; i < 256; i++) {
            int unsignedByte = this.raf.readUnsignedByte();
            linkedHashMap.put(Integer.valueOf(i), new int[]{unsignedByte, getGlyphWidth(unsignedByte)});
        }
        return linkedHashMap;
    }

    private Map<Integer, int[]> readFormat4(boolean z) throws IOException {
        int i;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int unsignedShort = this.raf.readUnsignedShort();
        this.raf.skipBytes(2);
        int unsignedShort2 = this.raf.readUnsignedShort() / 2;
        this.raf.skipBytes(6);
        int[] iArr = new int[unsignedShort2];
        for (int i2 = 0; i2 < unsignedShort2; i2++) {
            iArr[i2] = this.raf.readUnsignedShort();
        }
        this.raf.skipBytes(2);
        int[] iArr2 = new int[unsignedShort2];
        for (int i3 = 0; i3 < unsignedShort2; i3++) {
            iArr2[i3] = this.raf.readUnsignedShort();
        }
        int[] iArr3 = new int[unsignedShort2];
        for (int i4 = 0; i4 < unsignedShort2; i4++) {
            iArr3[i4] = this.raf.readUnsignedShort();
        }
        int[] iArr4 = new int[unsignedShort2];
        for (int i5 = 0; i5 < unsignedShort2; i5++) {
            iArr4[i5] = this.raf.readUnsignedShort();
        }
        int i6 = ((unsignedShort / 2) - 8) - (unsignedShort2 * 4);
        int[] iArr5 = new int[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            iArr5[i7] = this.raf.readUnsignedShort();
        }
        for (int i8 = 0; i8 < unsignedShort2; i8++) {
            for (int i9 = iArr2[i8]; i9 <= iArr[i8] && i9 != 65535; i9++) {
                int i10 = iArr4[i8];
                if (i10 == 0) {
                    i = iArr3[i8] + i9;
                } else {
                    int i11 = ((((i10 / 2) + i8) - unsignedShort2) + i9) - iArr2[i8];
                    if (i11 < i6) {
                        i = iArr5[i11] + iArr3[i8];
                    }
                }
                int i12 = 65535 & i;
                int[] iArr6 = {i12, getGlyphWidth(i12)};
                if (z && (65280 & i9) == 61440) {
                    linkedHashMap.put(Integer.valueOf(i9 & 255), iArr6);
                }
                linkedHashMap.put(Integer.valueOf(i9), iArr6);
            }
        }
        return linkedHashMap;
    }

    private Map<Integer, int[]> readFormat6() throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.raf.skipBytes(4);
        int unsignedShort = this.raf.readUnsignedShort();
        int unsignedShort2 = this.raf.readUnsignedShort();
        for (int i = 0; i < unsignedShort2; i++) {
            int unsignedShort3 = this.raf.readUnsignedShort();
            linkedHashMap.put(Integer.valueOf(i + unsignedShort), new int[]{unsignedShort3, getGlyphWidth(unsignedShort3)});
        }
        return linkedHashMap;
    }

    private Map<Integer, int[]> readFormat12() throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.raf.skipBytes(2);
        this.raf.readInt();
        this.raf.skipBytes(4);
        int i = this.raf.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.raf.readInt();
            int i4 = this.raf.readInt();
            for (int i5 = this.raf.readInt(); i5 <= i3; i5++) {
                linkedHashMap.put(Integer.valueOf(i5), new int[]{i4, getGlyphWidth(i4)});
                i4++;
            }
        }
        return linkedHashMap;
    }
}
