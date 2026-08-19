package com.itextpdf.io.codec;

import com.itextpdf.io.source.RandomAccessFileOrArray;
import java.io.EOFException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class TIFFDirectory {
    private static final int[] sizeOfType = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
    TIFFField[] fields;
    boolean isBigEndian;
    int numEntries;
    Map<Integer, Integer> fieldIndex = new HashMap();
    long IFDOffset = 8;
    long nextIFDOffset = 0;

    private static boolean isValidEndianTag(int i) {
        return i == 18761 || i == 19789;
    }

    TIFFDirectory() {
    }

    public TIFFDirectory(RandomAccessFileOrArray randomAccessFileOrArray, int i) throws IOException {
        long position = randomAccessFileOrArray.getPosition();
        randomAccessFileOrArray.seek(0L);
        int unsignedShort = randomAccessFileOrArray.readUnsignedShort();
        if (!isValidEndianTag(unsignedShort)) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.BadEndiannessTag0x4949Or0x4d4d);
        }
        this.isBigEndian = unsignedShort == 19789;
        if (readUnsignedShort(randomAccessFileOrArray) != 42) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.BadMagicNumberShouldBe42);
        }
        long unsignedInt = readUnsignedInt(randomAccessFileOrArray);
        for (int i2 = 0; i2 < i; i2++) {
            if (unsignedInt == 0) {
                throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.DirectoryNumberIsTooLarge);
            }
            randomAccessFileOrArray.seek(unsignedInt);
            randomAccessFileOrArray.skip(readUnsignedShort(randomAccessFileOrArray) * 12);
            unsignedInt = readUnsignedInt(randomAccessFileOrArray);
        }
        randomAccessFileOrArray.seek(unsignedInt);
        initialize(randomAccessFileOrArray);
        randomAccessFileOrArray.seek(position);
    }

    public TIFFDirectory(RandomAccessFileOrArray randomAccessFileOrArray, long j, int i) throws IOException {
        long position = randomAccessFileOrArray.getPosition();
        randomAccessFileOrArray.seek(0L);
        int unsignedShort = randomAccessFileOrArray.readUnsignedShort();
        if (!isValidEndianTag(unsignedShort)) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.BadEndiannessTag0x4949Or0x4d4d);
        }
        this.isBigEndian = unsignedShort == 19789;
        randomAccessFileOrArray.seek(j);
        for (int i2 = 0; i2 < i; i2++) {
            randomAccessFileOrArray.seek(j + ((long) (readUnsignedShort(randomAccessFileOrArray) * 12)));
            j = readUnsignedInt(randomAccessFileOrArray);
            randomAccessFileOrArray.seek(j);
        }
        initialize(randomAccessFileOrArray);
        randomAccessFileOrArray.seek(position);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ec  */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v15, types: [long[]] */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v18, types: [int[]] */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20, types: [float[]] */
    /* JADX WARN: Type inference failed for: r13v21, types: [double[]] */
    /* JADX WARN: Type inference failed for: r13v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [long[][]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void initialize(com.itextpdf.io.source.RandomAccessFileOrArray r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.io.codec.TIFFDirectory.initialize(com.itextpdf.io.source.RandomAccessFileOrArray):void");
    }

    public int getNumEntries() {
        return this.numEntries;
    }

    public TIFFField getField(int i) {
        Integer num = this.fieldIndex.get(Integer.valueOf(i));
        if (num == null) {
            return null;
        }
        return this.fields[num.intValue()];
    }

    public boolean isTagPresent(int i) {
        return this.fieldIndex.containsKey(Integer.valueOf(i));
    }

    public int[] getTags() {
        int[] iArr = new int[this.fieldIndex.size()];
        Iterator<Integer> it = this.fieldIndex.keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        return iArr;
    }

    public TIFFField[] getFields() {
        return this.fields;
    }

    public byte getFieldAsByte(int i, int i2) {
        return this.fields[this.fieldIndex.get(Integer.valueOf(i)).intValue()].getAsBytes()[i2];
    }

    public byte getFieldAsByte(int i) {
        return getFieldAsByte(i, 0);
    }

    public long getFieldAsLong(int i, int i2) {
        return this.fields[this.fieldIndex.get(Integer.valueOf(i)).intValue()].getAsLong(i2);
    }

    public long getFieldAsLong(int i) {
        return getFieldAsLong(i, 0);
    }

    public float getFieldAsFloat(int i, int i2) {
        return this.fields[this.fieldIndex.get(Integer.valueOf(i)).intValue()].getAsFloat(i2);
    }

    public float getFieldAsFloat(int i) {
        return getFieldAsFloat(i, 0);
    }

    public double getFieldAsDouble(int i, int i2) {
        return this.fields[this.fieldIndex.get(Integer.valueOf(i)).intValue()].getAsDouble(i2);
    }

    public double getFieldAsDouble(int i) {
        return getFieldAsDouble(i, 0);
    }

    private short readShort(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        if (this.isBigEndian) {
            return randomAccessFileOrArray.readShort();
        }
        return randomAccessFileOrArray.readShortLE();
    }

    private int readUnsignedShort(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        if (this.isBigEndian) {
            return randomAccessFileOrArray.readUnsignedShort();
        }
        return randomAccessFileOrArray.readUnsignedShortLE();
    }

    private int readInt(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        if (this.isBigEndian) {
            return randomAccessFileOrArray.readInt();
        }
        return randomAccessFileOrArray.readIntLE();
    }

    private long readUnsignedInt(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        if (this.isBigEndian) {
            return randomAccessFileOrArray.readUnsignedInt();
        }
        return randomAccessFileOrArray.readUnsignedIntLE();
    }

    private long readLong(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        if (this.isBigEndian) {
            return randomAccessFileOrArray.readLong();
        }
        return randomAccessFileOrArray.readLongLE();
    }

    private float readFloat(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        if (this.isBigEndian) {
            return randomAccessFileOrArray.readFloat();
        }
        return randomAccessFileOrArray.readFloatLE();
    }

    private double readDouble(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        if (this.isBigEndian) {
            return randomAccessFileOrArray.readDouble();
        }
        return randomAccessFileOrArray.readDoubleLE();
    }

    private static int readUnsignedShort(RandomAccessFileOrArray randomAccessFileOrArray, boolean z) throws IOException {
        if (z) {
            return randomAccessFileOrArray.readUnsignedShort();
        }
        return randomAccessFileOrArray.readUnsignedShortLE();
    }

    private static long readUnsignedInt(RandomAccessFileOrArray randomAccessFileOrArray, boolean z) throws IOException {
        if (z) {
            return randomAccessFileOrArray.readUnsignedInt();
        }
        return randomAccessFileOrArray.readUnsignedIntLE();
    }

    public static int getNumDirectories(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        long position = randomAccessFileOrArray.getPosition();
        randomAccessFileOrArray.seek(0L);
        int unsignedShort = randomAccessFileOrArray.readUnsignedShort();
        if (!isValidEndianTag(unsignedShort)) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.BadEndiannessTag0x4949Or0x4d4d);
        }
        int i = 0;
        boolean z = unsignedShort == 19789;
        if (readUnsignedShort(randomAccessFileOrArray, z) != 42) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.BadMagicNumberShouldBe42);
        }
        randomAccessFileOrArray.seek(4L);
        long unsignedInt = readUnsignedInt(randomAccessFileOrArray, z);
        while (unsignedInt != 0) {
            int i2 = i + 1;
            try {
                randomAccessFileOrArray.seek(unsignedInt);
                randomAccessFileOrArray.skip(readUnsignedShort(randomAccessFileOrArray, z) * 12);
                unsignedInt = readUnsignedInt(randomAccessFileOrArray, z);
                i = i2;
            } catch (EOFException unused) {
            }
        }
        randomAccessFileOrArray.seek(position);
        return i;
    }

    public boolean isBigEndian() {
        return this.isBigEndian;
    }

    public long getIFDOffset() {
        return this.IFDOffset;
    }

    public long getNextIFDOffset() {
        return this.nextIFDOffset;
    }
}
