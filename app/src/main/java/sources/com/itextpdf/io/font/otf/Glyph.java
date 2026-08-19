package com.itextpdf.io.font.otf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.io.util.TextUtil;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class Glyph {
    private static final char REPLACEMENT_CHARACTER = 65533;
    private static final char[] REPLACEMENT_CHARACTERS = {65533};
    private static final String REPLACEMENT_CHARACTER_STRING = String.valueOf((char) 65533);
    short anchorDelta;
    private int[] bbox;
    private char[] chars;
    private final int code;
    private final boolean isMark;
    private int unicode;
    private final int width;
    short xAdvance;
    short xPlacement;
    short yAdvance;
    short yPlacement;

    public Glyph(int i, int i2, int i3) {
        this(i, i2, i3, null, false);
    }

    public Glyph(int i, int i2, char[] cArr) {
        this(i, i2, codePoint(cArr), cArr, false);
    }

    public Glyph(int i, int i2, int i3, int[] iArr) {
        this(i, i2, i3, null, false);
        this.bbox = iArr;
    }

    public Glyph(int i, int i2) {
        this(-1, i, i2, getChars(i2), false);
    }

    public Glyph(int i, int i2, int i3, char[] cArr, boolean z) {
        this.bbox = null;
        this.xPlacement = (short) 0;
        this.yPlacement = (short) 0;
        this.xAdvance = (short) 0;
        this.yAdvance = (short) 0;
        this.anchorDelta = (short) 0;
        this.code = i;
        this.width = i2;
        this.unicode = i3;
        this.isMark = z;
        this.chars = cArr == null ? getChars(i3) : cArr;
    }

    public Glyph(Glyph glyph) {
        this.bbox = null;
        this.xPlacement = (short) 0;
        this.yPlacement = (short) 0;
        this.xAdvance = (short) 0;
        this.yAdvance = (short) 0;
        this.anchorDelta = (short) 0;
        this.code = glyph.code;
        this.width = glyph.width;
        this.chars = glyph.chars;
        this.unicode = glyph.unicode;
        this.isMark = glyph.isMark;
        this.bbox = glyph.bbox;
        this.xPlacement = glyph.xPlacement;
        this.yPlacement = glyph.yPlacement;
        this.xAdvance = glyph.xAdvance;
        this.yAdvance = glyph.yAdvance;
        this.anchorDelta = glyph.anchorDelta;
    }

    public Glyph(Glyph glyph, int i, int i2, int i3, int i4, int i5) {
        this(glyph);
        this.xPlacement = (short) i;
        this.yPlacement = (short) i2;
        this.xAdvance = (short) i3;
        this.yAdvance = (short) i4;
        this.anchorDelta = (short) i5;
    }

    public Glyph(Glyph glyph, int i) {
        this(glyph.code, glyph.width, i, getChars(i), glyph.isMark());
    }

    public int getCode() {
        return this.code;
    }

    public int getWidth() {
        return this.width;
    }

    public int[] getBbox() {
        return this.bbox;
    }

    public boolean hasValidUnicode() {
        return this.unicode > -1;
    }

    public int getUnicode() {
        return this.unicode;
    }

    public void setUnicode(int i) {
        this.unicode = i;
        this.chars = getChars(i);
    }

    public char[] getChars() {
        return this.chars;
    }

    public void setChars(char[] cArr) {
        this.chars = cArr;
    }

    public boolean isMark() {
        return this.isMark;
    }

    public short getXPlacement() {
        return this.xPlacement;
    }

    public void setXPlacement(short s) {
        this.xPlacement = s;
    }

    public short getYPlacement() {
        return this.yPlacement;
    }

    public void setYPlacement(short s) {
        this.yPlacement = s;
    }

    public short getXAdvance() {
        return this.xAdvance;
    }

    public void setXAdvance(short s) {
        this.xAdvance = s;
    }

    public short getYAdvance() {
        return this.yAdvance;
    }

    public void setYAdvance(short s) {
        this.yAdvance = s;
    }

    public short getAnchorDelta() {
        return this.anchorDelta;
    }

    public void setAnchorDelta(short s) {
        this.anchorDelta = s;
    }

    public boolean hasOffsets() {
        return hasAdvance() || hasPlacement();
    }

    public boolean hasPlacement() {
        return this.anchorDelta != 0;
    }

    public boolean hasAdvance() {
        return (this.xAdvance == 0 && this.yAdvance == 0) ? false : true;
    }

    public int hashCode() {
        char[] cArr = this.chars;
        return (((((cArr == null ? 0 : Arrays.hashCode(cArr)) + 31) * 31) + this.code) * 31) + this.width;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Glyph glyph = (Glyph) obj;
        return Arrays.equals(this.chars, glyph.chars) && this.code == glyph.code && this.width == glyph.width;
    }

    public String getUnicodeString() {
        char[] cArr = this.chars;
        if (cArr != null) {
            return String.valueOf(cArr);
        }
        return REPLACEMENT_CHARACTER_STRING;
    }

    public char[] getUnicodeChars() {
        char[] cArr = this.chars;
        return cArr != null ? cArr : REPLACEMENT_CHARACTERS;
    }

    public String toString() {
        String hex = toHex(this.code);
        char[] cArr = this.chars;
        return MessageFormatUtil.format("[id={0}, chars={1}, uni={2}, width={3}]", hex, cArr != null ? Arrays.toString(cArr) : Constants.ATTENDANCE_STATUS_NULL, toHex(this.unicode), Integer.valueOf(this.width));
    }

    private static String toHex(int i) {
        String str = "0000" + Integer.toHexString(i);
        return str.substring(Math.min(4, str.length() - 4));
    }

    private static int codePoint(char[] cArr) {
        if (cArr == null) {
            return -1;
        }
        if (cArr.length == 1 && Character.isValidCodePoint(cArr[0])) {
            return cArr[0];
        }
        if (cArr.length == 2 && Character.isHighSurrogate(cArr[0]) && Character.isLowSurrogate(cArr[1])) {
            return Character.toCodePoint(cArr[0], cArr[1]);
        }
        return -1;
    }

    private static char[] getChars(int i) {
        if (i > -1) {
            return TextUtil.convertFromUtf32(i);
        }
        return null;
    }
}
