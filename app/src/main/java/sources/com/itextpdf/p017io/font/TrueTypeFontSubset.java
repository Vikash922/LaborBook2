package com.itextpdf.p017io.font;

import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
class TrueTypeFontSubset {
    private static final int ARG_1_AND_2_ARE_WORDS = 1;
    private static final int HEAD_LOCA_FORMAT_OFFSET = 51;
    private static final int MORE_COMPONENTS = 32;
    private static final int TABLE_CHECKSUM = 0;
    private static final int TABLE_LENGTH = 2;
    private static final int TABLE_OFFSET = 1;
    private static final int WE_HAVE_AN_X_AND_Y_SCALE = 64;
    private static final int WE_HAVE_A_SCALE = 8;
    private static final int WE_HAVE_A_TWO_BY_TWO = 128;
    private int directoryOffset;
    private String fileName;
    private int fontPtr;
    private int glyfTableRealSize;
    private List<Integer> glyphsInList;
    private Set<Integer> glyphsUsed;
    private boolean locaShortTable;
    private int[] locaTable;
    private int locaTableRealSize;
    private byte[] newGlyfTable;
    private int[] newLocaTable;
    private byte[] newLocaTableOut;
    private byte[] outFont;

    /* JADX INFO: renamed from: rf */
    protected RandomAccessFileOrArray f2870rf;
    private Map<String, int[]> tableDirectory;
    private int tableGlyphOffset;
    private final String[] tableNames;
    private static final String[] TABLE_NAMES_SUBSET = {"cvt ", "fpgm", "glyf", XfdfConstants.HEAD, "hhea", "hmtx", "loca", "maxp", "prep", "cmap", "OS/2"};
    private static final String[] TABLE_NAMES = {"cvt ", "fpgm", "glyf", XfdfConstants.HEAD, "hhea", "hmtx", "loca", "maxp", "prep", "cmap", "OS/2", "name", "post"};
    private static final int[] entrySelectors = {0, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4};

    TrueTypeFontSubset(String str, RandomAccessFileOrArray randomAccessFileOrArray, Set<Integer> set, int i, boolean z) {
        this.fileName = str;
        this.f2870rf = randomAccessFileOrArray;
        this.glyphsUsed = new HashSet(set);
        this.directoryOffset = i;
        if (z) {
            this.tableNames = TABLE_NAMES_SUBSET;
        } else {
            this.tableNames = TABLE_NAMES;
        }
        this.glyphsInList = new ArrayList(set);
    }

    byte[] process() throws IOException {
        try {
            createTableDirectory();
            readLoca();
            flatGlyphs();
            createNewGlyphTables();
            locaToBytes();
            assembleFont();
            return this.outFont;
        } finally {
            try {
                this.f2870rf.close();
            } catch (Exception unused) {
            }
        }
    }

    private void assembleFont() throws IOException {
        int i;
        int[] iArr;
        int i2 = 0;
        int i3 = 2;
        for (String str : this.tableNames) {
            if (!str.equals("glyf") && !str.equals("loca") && (iArr = this.tableDirectory.get(str)) != null) {
                i3++;
                i2 += (iArr[2] + 3) & (-4);
            }
        }
        int i4 = (i3 * 16) + 12;
        this.outFont = new byte[i2 + this.newLocaTableOut.length + this.newGlyfTable.length + i4];
        this.fontPtr = 0;
        writeFontInt(65536);
        writeFontShort(i3);
        int i5 = entrySelectors[i3];
        int i6 = 1 << i5;
        writeFontShort(i6 * 16);
        writeFontShort(i5);
        writeFontShort((i3 - i6) * 16);
        for (String str2 : this.tableNames) {
            int[] iArr2 = this.tableDirectory.get(str2);
            if (iArr2 != null) {
                writeFontString(str2);
                str2.hashCode();
                if (str2.equals("glyf")) {
                    writeFontInt(calculateChecksum(this.newGlyfTable));
                    i = this.glyfTableRealSize;
                } else if (str2.equals("loca")) {
                    writeFontInt(calculateChecksum(this.newLocaTableOut));
                    i = this.locaTableRealSize;
                } else {
                    writeFontInt(iArr2[0]);
                    i = iArr2[2];
                }
                writeFontInt(i4);
                writeFontInt(i);
                i4 += (i + 3) & (-4);
            }
        }
        for (String str3 : this.tableNames) {
            int[] iArr3 = this.tableDirectory.get(str3);
            if (iArr3 != null) {
                str3.hashCode();
                if (str3.equals("glyf")) {
                    byte[] bArr = this.newGlyfTable;
                    System.arraycopy(bArr, 0, this.outFont, this.fontPtr, bArr.length);
                    this.fontPtr += this.newGlyfTable.length;
                    this.newGlyfTable = null;
                } else if (str3.equals("loca")) {
                    byte[] bArr2 = this.newLocaTableOut;
                    System.arraycopy(bArr2, 0, this.outFont, this.fontPtr, bArr2.length);
                    this.fontPtr += this.newLocaTableOut.length;
                    this.newLocaTableOut = null;
                } else {
                    this.f2870rf.seek(iArr3[1]);
                    this.f2870rf.readFully(this.outFont, this.fontPtr, iArr3[2]);
                    this.fontPtr += (iArr3[2] + 3) & (-4);
                }
            }
        }
    }

    private void createTableDirectory() throws IOException {
        this.tableDirectory = new HashMap();
        this.f2870rf.seek(this.directoryOffset);
        if (this.f2870rf.readInt() != 65536) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.NotAtTrueTypeFile).setMessageParams(this.fileName);
        }
        int unsignedShort = this.f2870rf.readUnsignedShort();
        this.f2870rf.skipBytes(6);
        for (int i = 0; i < unsignedShort; i++) {
            this.tableDirectory.put(readStandardString(4), new int[]{this.f2870rf.readInt(), this.f2870rf.readInt(), this.f2870rf.readInt()});
        }
    }

    private void readLoca() throws IOException {
        if (this.tableDirectory.get(XfdfConstants.HEAD) == null) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams(XfdfConstants.HEAD, this.fileName);
        }
        this.f2870rf.seek(r0[1] + 51);
        int i = 0;
        this.locaShortTable = this.f2870rf.readUnsignedShort() == 0;
        int[] iArr = this.tableDirectory.get("loca");
        if (iArr == null) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("loca", this.fileName);
        }
        this.f2870rf.seek(iArr[1]);
        if (this.locaShortTable) {
            int i2 = iArr[2] / 2;
            this.locaTable = new int[i2];
            while (i < i2) {
                this.locaTable[i] = this.f2870rf.readUnsignedShort() * 2;
                i++;
            }
            return;
        }
        int i3 = iArr[2] / 4;
        this.locaTable = new int[i3];
        while (i < i3) {
            this.locaTable[i] = this.f2870rf.readInt();
            i++;
        }
    }

    private void createNewGlyphTables() throws IOException {
        this.newLocaTable = new int[this.locaTable.length];
        int size = this.glyphsInList.size();
        int[] iArr = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = this.glyphsInList.get(i2).intValue();
        }
        Arrays.sort(iArr);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            int i5 = iArr[i4];
            int[] iArr2 = this.locaTable;
            i3 += iArr2[i5 + 1] - iArr2[i5];
        }
        this.glyfTableRealSize = i3;
        this.newGlyfTable = new byte[(i3 + 3) & (-4)];
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int[] iArr3 = this.newLocaTable;
            if (i >= iArr3.length) {
                return;
            }
            iArr3[i] = i6;
            if (i7 < size && iArr[i7] == i) {
                i7++;
                iArr3[i] = i6;
                int[] iArr4 = this.locaTable;
                int i8 = iArr4[i + 1] - iArr4[i];
                if (i8 > 0) {
                    this.f2870rf.seek(this.tableGlyphOffset + r6);
                    this.f2870rf.readFully(this.newGlyfTable, i6, i8);
                    i6 += i8;
                }
            }
            i++;
        }
    }

    private void locaToBytes() {
        if (this.locaShortTable) {
            this.locaTableRealSize = this.newLocaTable.length * 2;
        } else {
            this.locaTableRealSize = this.newLocaTable.length * 4;
        }
        byte[] bArr = new byte[(this.locaTableRealSize + 3) & (-4)];
        this.newLocaTableOut = bArr;
        this.outFont = bArr;
        this.fontPtr = 0;
        for (int i : this.newLocaTable) {
            if (this.locaShortTable) {
                writeFontShort(i / 2);
            } else {
                writeFontInt(i);
            }
        }
    }

    private void flatGlyphs() throws IOException {
        int[] iArr = this.tableDirectory.get("glyf");
        if (iArr == null) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TableDoesNotExistsIn).setMessageParams("glyf", this.fileName);
        }
        if (!this.glyphsUsed.contains(0)) {
            this.glyphsUsed.add(0);
            this.glyphsInList.add(0);
        }
        this.tableGlyphOffset = iArr[1];
        for (int i = 0; i < this.glyphsInList.size(); i++) {
            checkGlyphComposite(this.glyphsInList.get(i).intValue());
        }
    }

    private void checkGlyphComposite(int i) throws IOException {
        int[] iArr = this.locaTable;
        if (iArr[i] == iArr[i + 1]) {
            return;
        }
        this.f2870rf.seek(this.tableGlyphOffset + r1);
        if (this.f2870rf.readShort() >= 0) {
            return;
        }
        this.f2870rf.skipBytes(8);
        while (true) {
            int unsignedShort = this.f2870rf.readUnsignedShort();
            int unsignedShort2 = this.f2870rf.readUnsignedShort();
            if (!this.glyphsUsed.contains(Integer.valueOf(unsignedShort2))) {
                this.glyphsUsed.add(Integer.valueOf(unsignedShort2));
                this.glyphsInList.add(Integer.valueOf(unsignedShort2));
            }
            if ((unsignedShort & 32) == 0) {
                return;
            }
            int i2 = (unsignedShort & 1) != 0 ? 4 : 2;
            if ((unsignedShort & 8) != 0) {
                i2 += 2;
            } else if ((unsignedShort & 64) != 0) {
                i2 += 4;
            }
            if ((unsignedShort & 128) != 0) {
                i2 += 8;
            }
            this.f2870rf.skipBytes(i2);
        }
    }

    private String readStandardString(int i) throws IOException {
        byte[] bArr = new byte[i];
        this.f2870rf.readFully(bArr);
        try {
            return new String(bArr, "Cp1252");
        } catch (Exception e) {
            throw new com.itextpdf.p017io.exceptions.IOException("TrueType font", (Throwable) e);
        }
    }

    private void writeFontShort(int i) {
        byte[] bArr = this.outFont;
        int i2 = this.fontPtr;
        int i3 = i2 + 1;
        this.fontPtr = i3;
        bArr[i2] = (byte) (i >> 8);
        this.fontPtr = i2 + 2;
        bArr[i3] = (byte) i;
    }

    private void writeFontInt(int i) {
        byte[] bArr = this.outFont;
        int i2 = this.fontPtr;
        int i3 = i2 + 1;
        this.fontPtr = i3;
        bArr[i2] = (byte) (i >> 24);
        int i4 = i2 + 2;
        this.fontPtr = i4;
        bArr[i3] = (byte) (i >> 16);
        int i5 = i2 + 3;
        this.fontPtr = i5;
        bArr[i4] = (byte) (i >> 8);
        this.fontPtr = i2 + 4;
        bArr[i5] = (byte) i;
    }

    private void writeFontString(String str) {
        byte[] bArrConvertToBytes = PdfEncodings.convertToBytes(str, "Cp1252");
        System.arraycopy(bArrConvertToBytes, 0, this.outFont, this.fontPtr, bArrConvertToBytes.length);
        this.fontPtr += bArrConvertToBytes.length;
    }

    private int calculateChecksum(byte[] bArr) {
        int length = bArr.length / 4;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            i4 += bArr[i5] & 255;
            i3 += bArr[i5 + 1] & 255;
            int i7 = i5 + 3;
            i2 += bArr[i5 + 2] & 255;
            i5 += 4;
            i += bArr[i7] & 255;
        }
        return i + (i2 << 8) + (i3 << 16) + (i4 << 24);
    }
}
