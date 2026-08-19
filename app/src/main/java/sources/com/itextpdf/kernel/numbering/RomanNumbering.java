package com.itextpdf.kernel.numbering;

import com.itextpdf.barcodes.Barcode128;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes6.dex */
public class RomanNumbering {
    private static final RomanDigit[] ROMAN_DIGITS = {new RomanDigit('m', 1000, false), new RomanDigit(Barcode128.CODE_AC_TO_B, 500, false), new RomanDigit(Barcode128.CODE_AB_TO_C, 100, true), new RomanDigit('l', 50, false), new RomanDigit('x', 10, true), new RomanDigit('v', 5, false), new RomanDigit(Barcode128.START_C, 1, true)};

    public static String toRomanLowerCase(int i) {
        return convert(i);
    }

    public static String toRomanUpperCase(int i) {
        return convert(i).toUpperCase();
    }

    public static String toRoman(int i, boolean z) {
        return z ? toRomanUpperCase(i) : toRomanLowerCase(i);
    }

    protected static String convert(int i) {
        RomanDigit[] romanDigitArr;
        StringBuilder sb = new StringBuilder();
        if (i < 0) {
            sb.append(SignatureVisitor.SUPER);
            i = -i;
        }
        if (i >= 4000) {
            sb.append('|');
            int i2 = i / 1000;
            sb.append(convert(i2));
            sb.append('|');
            i -= i2 * 1000;
        }
        int i3 = 0;
        while (true) {
            RomanDigit romanDigit = ROMAN_DIGITS[i3];
            while (i >= romanDigit.value) {
                sb.append(romanDigit.digit);
                i -= romanDigit.value;
            }
            if (i > 0) {
                int i4 = i3;
                do {
                    romanDigitArr = ROMAN_DIGITS;
                    i4++;
                } while (!romanDigitArr[i4].pre);
                if (romanDigitArr[i4].value + i >= romanDigit.value) {
                    sb.append(romanDigitArr[i4].digit).append(romanDigit.digit);
                    i -= romanDigit.value - romanDigitArr[i4].value;
                }
                i3++;
            } else {
                return sb.toString();
            }
        }
    }

    private static class RomanDigit {
        public char digit;
        public boolean pre;
        public int value;

        RomanDigit(char c, int i, boolean z) {
            this.digit = c;
            this.value = i;
            this.pre = z;
        }
    }
}
