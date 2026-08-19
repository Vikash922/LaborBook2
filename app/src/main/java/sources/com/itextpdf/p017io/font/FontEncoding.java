package com.itextpdf.p017io.font;

import com.itextpdf.p017io.util.ArrayUtil;
import com.itextpdf.p017io.util.IntHashtable;
import com.itextpdf.p017io.util.TextUtil;
import java.util.Objects;
import java.util.StringTokenizer;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class FontEncoding {
    public static final String FONT_SPECIFIC = "FontSpecific";
    public static final String NOTDEF = ".notdef";
    private static final byte[] emptyBytes = new byte[0];
    protected String baseEncoding;
    protected String[] differences;
    protected IntHashtable unicodeToCode = new IntHashtable(256);
    protected int[] codeToUnicode = ArrayUtil.fillWithValue(new int[256], -1);
    protected IntHashtable unicodeDifferences = new IntHashtable(256);
    protected boolean fontSpecific = false;

    protected FontEncoding() {
    }

    public static FontEncoding createFontEncoding(String str) {
        FontEncoding fontEncoding = new FontEncoding();
        String strNormalizeEncoding = normalizeEncoding(str);
        fontEncoding.baseEncoding = strNormalizeEncoding;
        if (strNormalizeEncoding.startsWith("#")) {
            fontEncoding.fillCustomEncoding();
        } else {
            fontEncoding.fillNamedEncoding();
        }
        return fontEncoding;
    }

    public static FontEncoding createEmptyFontEncoding() {
        FontEncoding fontEncoding = new FontEncoding();
        fontEncoding.baseEncoding = null;
        fontEncoding.fontSpecific = false;
        fontEncoding.differences = new String[256];
        for (int i = 0; i < 256; i++) {
            fontEncoding.unicodeDifferences.put(i, i);
        }
        return fontEncoding;
    }

    public static FontEncoding createFontSpecificEncoding() {
        FontEncoding fontEncoding = new FontEncoding();
        fontEncoding.fontSpecific = true;
        for (int i = 0; i < 256; i++) {
            fontEncoding.unicodeToCode.put(i, i);
            fontEncoding.codeToUnicode[i] = i;
            fontEncoding.unicodeDifferences.put(i, i);
        }
        return fontEncoding;
    }

    public String getBaseEncoding() {
        return this.baseEncoding;
    }

    public boolean isFontSpecific() {
        return this.fontSpecific;
    }

    public boolean addSymbol(int i, int i2) {
        String strUnicodeToName;
        if (i < 0 || i > 255 || (strUnicodeToName = AdobeGlyphList.unicodeToName(i2)) == null) {
            return false;
        }
        this.unicodeToCode.put(i2, i);
        this.codeToUnicode[i] = i2;
        this.differences[i] = strUnicodeToName;
        this.unicodeDifferences.put(i2, i2);
        return true;
    }

    public int getUnicode(int i) {
        return this.codeToUnicode[i];
    }

    public int getUnicodeDifference(int i) {
        return this.unicodeDifferences.get(i);
    }

    public boolean hasDifferences() {
        return this.differences != null;
    }

    public String getDifference(int i) {
        String[] strArr = this.differences;
        if (strArr != null) {
            return strArr[i];
        }
        return null;
    }

    public void setDifference(int i, String str) {
        String[] strArr;
        if (i < 0 || (strArr = this.differences) == null || i >= strArr.length) {
            return;
        }
        strArr[i] = str;
    }

    public byte[] convertToBytes(String str) {
        if (str == null || str.length() == 0) {
            return emptyBytes;
        }
        byte[] bArr = new byte[str.length()];
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (this.unicodeToCode.containsKey(str.charAt(i2))) {
                bArr[i] = (byte) convertToByte(str.charAt(i2));
                i++;
            }
        }
        return ArrayUtil.shortenArray(bArr, i);
    }

    public int convertToByte(int i) {
        return this.unicodeToCode.get(i);
    }

    public boolean canEncode(int i) {
        return this.unicodeToCode.containsKey(i) || TextUtil.isNonPrintable(i) || TextUtil.isNewLine(i);
    }

    public boolean canDecode(int i) {
        return this.codeToUnicode[i] > -1;
    }

    public boolean isBuiltWith(String str) {
        return Objects.equals(normalizeEncoding(str), this.baseEncoding);
    }

    protected void fillCustomEncoding() {
        int iCharAt;
        this.differences = new String[256];
        StringTokenizer stringTokenizer = new StringTokenizer(this.baseEncoding.substring(1), " ,\t\n\r\f");
        if (stringTokenizer.nextToken().equals("full")) {
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                String strNextToken2 = stringTokenizer.nextToken();
                char c = (char) Integer.parseInt(stringTokenizer.nextToken(), 16);
                int iNameToUnicode = AdobeGlyphList.nameToUnicode(strNextToken2);
                if (strNextToken.startsWith("'")) {
                    iCharAt = strNextToken.charAt(1);
                } else {
                    iCharAt = Integer.parseInt(strNextToken);
                }
                int i = iCharAt % 256;
                this.unicodeToCode.put(c, i);
                this.codeToUnicode[i] = c;
                this.differences[i] = strNextToken2;
                this.unicodeDifferences.put(c, iNameToUnicode);
            }
        } else {
            for (int i2 = stringTokenizer.hasMoreTokens() ? Integer.parseInt(stringTokenizer.nextToken()) : 0; stringTokenizer.hasMoreTokens() && i2 < 256; i2++) {
                String strNextToken3 = stringTokenizer.nextToken();
                int i3 = Integer.parseInt(strNextToken3, 16) % 65536;
                String strUnicodeToName = AdobeGlyphList.unicodeToName(i3);
                if (strUnicodeToName == null) {
                    strUnicodeToName = "uni" + strNextToken3;
                }
                this.unicodeToCode.put(i3, i2);
                this.codeToUnicode[i2] = i3;
                this.differences[i2] = strUnicodeToName;
                this.unicodeDifferences.put(i3, i3);
            }
        }
        for (int i4 = 0; i4 < 256; i4++) {
            String[] strArr = this.differences;
            if (strArr[i4] == null) {
                strArr[i4] = NOTDEF;
            }
        }
    }

    protected void fillNamedEncoding() {
        PdfEncodings.convertToBytes(StringUtils.SPACE, this.baseEncoding);
        if (!"Cp1252".equals(this.baseEncoding) && !PdfEncodings.MACROMAN.equals(this.baseEncoding) && this.differences == null) {
            this.differences = new String[256];
        }
        byte[] bArr = new byte[256];
        for (int i = 0; i < 256; i++) {
            bArr[i] = (byte) i;
        }
        char[] charArray = PdfEncodings.convertToString(bArr, this.baseEncoding).toCharArray();
        for (int i2 = 0; i2 < 256; i2++) {
            char c = charArray[i2];
            String strUnicodeToName = AdobeGlyphList.unicodeToName(c);
            if (strUnicodeToName == null) {
                strUnicodeToName = NOTDEF;
            } else {
                this.unicodeToCode.put(c, i2);
                this.codeToUnicode[i2] = c;
                this.unicodeDifferences.put(c, c);
            }
            String[] strArr = this.differences;
            if (strArr != null) {
                strArr[i2] = strUnicodeToName;
            }
        }
    }

    protected void fillStandardEncoding() {
        int[] iArr = PdfEncodings.standardEncoding;
        for (int i = 0; i < 256; i++) {
            int i2 = iArr[i];
            String strUnicodeToName = AdobeGlyphList.unicodeToName(i2);
            if (strUnicodeToName == null) {
                strUnicodeToName = NOTDEF;
            } else {
                this.unicodeToCode.put(i2, i);
                this.codeToUnicode[i] = i2;
                this.unicodeDifferences.put(i2, i2);
            }
            String[] strArr = this.differences;
            if (strArr != null) {
                strArr[i] = strUnicodeToName;
            }
        }
    }

    protected static String normalizeEncoding(String str) {
        String lowerCase = str == null ? "" : str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "winansiencoding":
            case "":
            case "winansi":
                return "Cp1252";
            case "macroman":
            case "macromanencoding":
                return PdfEncodings.MACROMAN;
            case "zapfdingbatsencoding":
                return "ZapfDingbats";
            default:
                return str;
        }
    }
}
