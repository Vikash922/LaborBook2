package com.itextpdf.io.font.woff2;

/* JADX INFO: loaded from: classes6.dex */
class StoreBytes {
    StoreBytes() {
    }

    public static int storeU32(byte[] bArr, int i, int i2) {
        bArr[i] = JavaUnsignedUtil.toU8(i2 >> 24);
        bArr[i + 1] = JavaUnsignedUtil.toU8(i2 >> 16);
        bArr[i + 2] = JavaUnsignedUtil.toU8(i2 >> 8);
        bArr[i + 3] = JavaUnsignedUtil.toU8(i2);
        return i + 4;
    }

    public static int storeU16(byte[] bArr, int i, int i2) {
        bArr[i] = JavaUnsignedUtil.toU8(i2 >> 8);
        bArr[i + 1] = JavaUnsignedUtil.toU8(i2);
        return i + 2;
    }
}
