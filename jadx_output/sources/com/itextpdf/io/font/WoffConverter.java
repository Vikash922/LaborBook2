package com.itextpdf.io.font;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.InflaterInputStream;

/* JADX INFO: loaded from: classes6.dex */
class WoffConverter {
    private static final long woffSignature = 2001684038;

    WoffConverter() {
    }

    public static boolean isWoffFont(byte[] bArr) {
        return bytesToUInt(bArr, 0) == woffSignature;
    }

    public static byte[] convert(byte[] bArr) throws IOException {
        int i;
        if (bytesToUInt(bArr, 0) != woffSignature) {
            throw new IllegalArgumentException();
        }
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 4, bArr2, 0, 4);
        if (bytesToUInt(bArr, 8) != bArr.length) {
            throw new IllegalArgumentException();
        }
        byte[] bArr3 = new byte[2];
        System.arraycopy(bArr, 12, bArr3, 0, 2);
        if (bytesToUShort(bArr, 14) != 0) {
            throw new IllegalArgumentException();
        }
        long jBytesToUInt = bytesToUInt(bArr, 16);
        byte[] bArr4 = new byte[(int) jBytesToUInt];
        System.arraycopy(bArr2, 0, bArr4, 0, 4);
        System.arraycopy(bArr3, 0, bArr4, 4, 2);
        int iBytesToUShort = bytesToUShort(bArr3, 0);
        int i2 = 0;
        while (true) {
            if (i2 >= 17) {
                i2 = -1;
                i = -1;
                break;
            }
            int iPow = (int) Math.pow(2.0d, i2);
            if (iPow > iBytesToUShort) {
                i = iPow * 16;
                break;
            }
            i2++;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
        bArr4[6] = (byte) (i >> 8);
        bArr4[7] = (byte) i;
        bArr4[8] = (byte) (i2 >> 8);
        bArr4[9] = (byte) i2;
        int i3 = (iBytesToUShort * 16) - i;
        bArr4[10] = (byte) (i3 >> 8);
        bArr4[11] = (byte) i3;
        ArrayList<TableDirectory> arrayList = new ArrayList(iBytesToUShort);
        int i4 = 44;
        int i5 = 12;
        for (int i6 = 0; i6 < iBytesToUShort; i6++) {
            TableDirectory tableDirectory = new TableDirectory();
            System.arraycopy(bArr, i4, tableDirectory.tag, 0, 4);
            tableDirectory.offset = bytesToUInt(bArr, i4 + 4);
            int i7 = i4 + 8;
            if (tableDirectory.offset % 4 != 0) {
                throw new IllegalArgumentException();
            }
            tableDirectory.compLength = bytesToUInt(bArr, i7);
            System.arraycopy(bArr, i4 + 12, tableDirectory.origLength, 0, 4);
            tableDirectory.origLengthVal = bytesToUInt(tableDirectory.origLength, 0);
            System.arraycopy(bArr, i4 + 16, tableDirectory.origChecksum, 0, 4);
            i4 += 20;
            arrayList.add(tableDirectory);
            i5 += 16;
        }
        int i8 = 12;
        for (TableDirectory tableDirectory2 : arrayList) {
            System.arraycopy(tableDirectory2.tag, 0, bArr4, i8, 4);
            System.arraycopy(tableDirectory2.origChecksum, 0, bArr4, i8 + 4, 4);
            bArr4[i8 + 8] = (byte) (i5 >> 24);
            bArr4[i8 + 9] = (byte) (i5 >> 16);
            bArr4[i8 + 10] = (byte) (i5 >> 8);
            bArr4[i8 + 11] = (byte) i5;
            System.arraycopy(tableDirectory2.origLength, 0, bArr4, i8 + 12, 4);
            i8 += 16;
            tableDirectory2.outOffset = i5;
            i5 += (int) tableDirectory2.origLengthVal;
            int i9 = i5 % 4;
            if (i9 != 0) {
                i5 += 4 - i9;
            }
        }
        if (i5 != jBytesToUInt) {
            throw new IllegalArgumentException();
        }
        for (TableDirectory tableDirectory3 : arrayList) {
            byte[] bArr5 = new byte[(int) tableDirectory3.compLength];
            System.arraycopy(bArr, (int) tableDirectory3.offset, bArr5, 0, (int) tableDirectory3.compLength);
            int i10 = (int) tableDirectory3.origLengthVal;
            if (tableDirectory3.compLength > tableDirectory3.origLengthVal) {
                throw new IllegalArgumentException();
            }
            if (tableDirectory3.compLength != tableDirectory3.origLengthVal) {
                InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr5));
                byte[] bArr6 = new byte[i10];
                int i11 = 0;
                while (true) {
                    int i12 = i10 - i11;
                    if (i12 > 0) {
                        int i13 = inflaterInputStream.read(bArr6, i11, i12);
                        if (i13 < 0) {
                            throw new IllegalArgumentException();
                        }
                        i11 += i13;
                    } else {
                        if (inflaterInputStream.read() >= 0) {
                            throw new IllegalArgumentException();
                        }
                        bArr5 = bArr6;
                    }
                }
            }
            System.arraycopy(bArr5, 0, bArr4, tableDirectory3.outOffset, i10);
        }
        return bArr4;
    }

    private static long bytesToUInt(byte[] bArr, int i) {
        return (((long) bArr[i + 3]) & 255) | ((((long) bArr[i]) & 255) << 24) | ((((long) bArr[i + 1]) & 255) << 16) | ((((long) bArr[i + 2]) & 255) << 8);
    }

    private static int bytesToUShort(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static class TableDirectory {
        long compLength;
        long offset;
        byte[] origChecksum;
        byte[] origLength;
        long origLengthVal;
        int outOffset;
        byte[] tag;

        private TableDirectory() {
            this.tag = new byte[4];
            this.origLength = new byte[4];
            this.origChecksum = new byte[4];
        }
    }
}
