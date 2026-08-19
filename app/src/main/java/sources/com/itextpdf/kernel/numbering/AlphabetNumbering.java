package com.itextpdf.kernel.numbering;

/* JADX INFO: loaded from: classes6.dex */
public class AlphabetNumbering {
    public static String toAlphabetNumber(int i, char[] cArr) {
        long j;
        int i2 = 1;
        if (i < 1) {
            throw new IllegalArgumentException("The parameter must be a positive integer");
        }
        int i3 = i - 1;
        long length = cArr.length;
        long j2 = 0;
        long j3 = length;
        while (true) {
            j = i3;
            long j4 = j3 + j2;
            if (j < j4) {
                break;
            }
            i2++;
            j3 *= length;
            j2 = j4;
        }
        long j5 = j - j2;
        char[] cArr2 = new char[i2];
        while (i2 > 0) {
            i2--;
            cArr2[i2] = cArr[(int) (j5 % length)];
            j5 /= length;
        }
        return new String(cArr2);
    }
}
