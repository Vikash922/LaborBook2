package com.itextpdf.p017io.font.woff2;

/* JADX INFO: loaded from: classes6.dex */
public class Woff2Converter {
    public static boolean isWoff2Font(byte[] bArr) {
        if (bArr.length < 4) {
            return false;
        }
        try {
            return new Buffer(bArr, 0, 4).readInt() == 2001684018;
        } catch (Exception unused) {
            return false;
        }
    }

    public static byte[] convert(byte[] bArr) {
        int iComputeWoff2FinalSize = Woff2Dec.computeWoff2FinalSize(bArr, bArr.length);
        byte[] bArr2 = new byte[iComputeWoff2FinalSize];
        Woff2Dec.convertWoff2ToTtf(bArr, bArr.length, new Woff2MemoryOut(bArr2, iComputeWoff2FinalSize));
        return bArr2;
    }
}
