package com.itextpdf.io.util;

import com.itextpdf.io.font.otf.Glyph;
import com.itextpdf.io.font.otf.GlyphLine;
import java.nio.charset.Charset;
import java.util.ArrayList;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
public final class TextUtil {
    public static int convertToUtf32(char c, char c2) {
        return ((c - 55296) * 1024) + c2 + 9216;
    }

    public static char highSurrogate(int i) {
        return (char) ((i >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
    }

    public static boolean isNewLine(int i) {
        return i == 10 || i == 13;
    }

    public static boolean isSurrogateHigh(char c) {
        return c >= 55296 && c <= 56319;
    }

    public static boolean isSurrogateLow(char c) {
        return c >= 56320 && c <= 57343;
    }

    public static char lowSurrogate(int i) {
        return (char) ((i & 1023) + Utf8.LOG_SURROGATE_HEADER);
    }

    private TextUtil() {
    }

    public static boolean isSurrogatePair(String str, int i) {
        return i >= 0 && i <= str.length() + (-2) && isSurrogateHigh(str.charAt(i)) && isSurrogateLow(str.charAt(i + 1));
    }

    public static boolean isSurrogatePair(char[] cArr, int i) {
        return i >= 0 && i <= cArr.length + (-2) && isSurrogateHigh(cArr[i]) && isSurrogateLow(cArr[i + 1]);
    }

    public static int convertToUtf32(char[] cArr, int i) {
        return ((cArr[i] - 55296) * 1024) + cArr[i + 1] + 9216;
    }

    public static int convertToUtf32(String str, int i) {
        return ((str.charAt(i) - 55296) * 1024) + str.charAt(i + 1) + 9216;
    }

    public static int[] convertToUtf32(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(str.length());
        int i = 0;
        while (i < str.length()) {
            if (isSurrogatePair(str, i)) {
                arrayList.add(Integer.valueOf(convertToUtf32(str, i)));
                i += 2;
            } else {
                arrayList.add(Integer.valueOf(str.charAt(i)));
                i++;
            }
        }
        return ArrayUtil.toIntArray(arrayList);
    }

    public static char[] convertFromUtf32(int i) {
        if (i < 65536) {
            return new char[]{(char) i};
        }
        int i2 = i - 65536;
        return new char[]{(char) ((i2 / 1024) + 55296), (char) ((i2 % 1024) + Utf8.LOG_SURROGATE_HEADER)};
    }

    public static String convertFromUtf32(int[] iArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        while (i < i2) {
            sb.append(convertFromUtf32ToCharArray(iArr[i]));
            i++;
        }
        return sb.toString();
    }

    public static char[] convertFromUtf32ToCharArray(int i) {
        if (i < 65536) {
            return new char[]{(char) i};
        }
        int i2 = i - 65536;
        return new char[]{(char) ((i2 / 1024) + 55296), (char) ((i2 % 1024) + Utf8.LOG_SURROGATE_HEADER)};
    }

    public static String charToString(char c) {
        return String.valueOf(c);
    }

    public static boolean isNewLine(Glyph glyph) {
        return isNewLine(glyph.getUnicode());
    }

    public static boolean isNewLine(char c) {
        return isNewLine((int) c);
    }

    public static boolean isCarriageReturnFollowedByLineFeed(GlyphLine glyphLine, int i) {
        return glyphLine.size() > 1 && i <= glyphLine.size() + (-2) && glyphLine.get(i).getUnicode() == 13 && glyphLine.get(i + 1).getUnicode() == 10;
    }

    public static boolean isSpaceOrWhitespace(Glyph glyph) {
        return Character.isSpaceChar((char) glyph.getUnicode()) || Character.isWhitespace((char) glyph.getUnicode());
    }

    public static boolean isWhitespace(Glyph glyph) {
        return Character.isWhitespace(glyph.getUnicode());
    }

    public static boolean isNonBreakingHyphen(Glyph glyph) {
        return 8209 == glyph.getUnicode();
    }

    public static boolean isSpace(Glyph glyph) {
        return Character.isSpaceChar((char) glyph.getUnicode());
    }

    public static boolean isUni0020(Glyph glyph) {
        return glyph.getUnicode() == 32;
    }

    public static boolean isNonPrintable(int i) {
        return Character.isIdentifierIgnorable(i) || i == 173;
    }

    public static boolean isWhitespaceOrNonPrintable(int i) {
        return Character.isWhitespace(i) || isNonPrintable(i);
    }

    public static boolean isLetterOrDigit(Glyph glyph) {
        return Character.isLetterOrDigit(glyph.getUnicode());
    }

    public static boolean isMark(Glyph glyph) {
        return ((448 >> Character.getType(glyph.getUnicode())) & 1) != 0;
    }

    public static boolean charsetIsSupported(String str) {
        try {
            return Charset.isSupported(str);
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }
}
