package com.itextpdf.styledxmlparser.resolver.resource;

import com.google.common.base.Ascii;
import com.itextpdf.styledxmlparser.exceptions.StyledXMLParserException;
import java.io.CharArrayWriter;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.BitSet;

/* JADX INFO: loaded from: classes6.dex */
class UriEncodeUtil {
    private static final int caseDiff = 32;
    private static String dfltEncName = "UTF-8";
    private static BitSet unreservedAndReserved = new BitSet(256);

    UriEncodeUtil() {
    }

    static {
        for (int i = 97; i <= 122; i++) {
            unreservedAndReserved.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            unreservedAndReserved.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            unreservedAndReserved.set(i3);
        }
        unreservedAndReserved.set(45);
        unreservedAndReserved.set(95);
        unreservedAndReserved.set(46);
        unreservedAndReserved.set(126);
        unreservedAndReserved.set(58);
        unreservedAndReserved.set(47);
        unreservedAndReserved.set(63);
        unreservedAndReserved.set(35);
        unreservedAndReserved.set(91);
        unreservedAndReserved.set(93);
        unreservedAndReserved.set(64);
        unreservedAndReserved.set(33);
        unreservedAndReserved.set(36);
        unreservedAndReserved.set(38);
        unreservedAndReserved.set(39);
        unreservedAndReserved.set(92);
        unreservedAndReserved.set(40);
        unreservedAndReserved.set(41);
        unreservedAndReserved.set(42);
        unreservedAndReserved.set(43);
        unreservedAndReserved.set(44);
        unreservedAndReserved.set(59);
        unreservedAndReserved.set(61);
    }

    public static String encode(String str) {
        return encode(str, dfltEncName);
    }

    public static String encode(String str, String str2) {
        BitSet bitSet;
        int i;
        char cCharAt;
        StringBuffer stringBuffer = new StringBuffer(str.length());
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        if (str2 == null) {
            throw new StyledXMLParserException("Unsupported encoding exception.");
        }
        try {
            Charset charsetForName = Charset.forName(str2);
            boolean z = true;
            int i2 = 0;
            boolean z2 = false;
            while (i2 < str.length()) {
                char cCharAt2 = str.charAt(i2);
                if ('\\' == cCharAt2) {
                    stringBuffer.append('/');
                    i2++;
                } else if ('%' == cCharAt2) {
                    int i3 = -1;
                    if (i2 + 2 < str.length()) {
                        try {
                            i3 = Integer.parseInt(str.substring(i2 + 1, i2 + 3), 16);
                        } catch (NumberFormatException unused) {
                        }
                        if (i3 >= 0) {
                            stringBuffer.append(cCharAt2);
                        }
                    }
                    if (i3 < 0) {
                        stringBuffer.append("%25");
                        z2 = true;
                    }
                    i2++;
                } else {
                    if ('#' == cCharAt2) {
                        if (z) {
                            stringBuffer.append(cCharAt2);
                            z = false;
                        } else {
                            stringBuffer.append("%23");
                            z2 = true;
                        }
                    } else if (unreservedAndReserved.get(cCharAt2)) {
                        stringBuffer.append(cCharAt2);
                    } else {
                        do {
                            charArrayWriter.write(cCharAt2);
                            if (cCharAt2 >= 55296 && cCharAt2 <= 56319 && (i = i2 + 1) < str.length() && (cCharAt = str.charAt(i)) >= 56320 && cCharAt <= 57343) {
                                charArrayWriter.write(cCharAt);
                                i2 = i;
                            }
                            i2++;
                            if (i2 >= str.length()) {
                                break;
                            }
                            bitSet = unreservedAndReserved;
                            cCharAt2 = str.charAt(i2);
                        } while (!bitSet.get(cCharAt2));
                        charArrayWriter.flush();
                        byte[] bytes = new String(charArrayWriter.toCharArray()).getBytes(charsetForName);
                        for (int i4 = 0; i4 < bytes.length; i4++) {
                            stringBuffer.append('%');
                            char cForDigit = Character.forDigit((bytes[i4] >> 4) & 15, 16);
                            if (Character.isLetter(cForDigit)) {
                                cForDigit = (char) (cForDigit - ' ');
                            }
                            stringBuffer.append(cForDigit);
                            char cForDigit2 = Character.forDigit(bytes[i4] & Ascii.f393SI, 16);
                            if (Character.isLetter(cForDigit2)) {
                                cForDigit2 = (char) (cForDigit2 - ' ');
                            }
                            stringBuffer.append(cForDigit2);
                        }
                        charArrayWriter.reset();
                    }
                    i2++;
                }
                z2 = true;
            }
            return z2 ? stringBuffer.toString() : str;
        } catch (IllegalCharsetNameException unused2) {
            throw new StyledXMLParserException("Unsupported encoding exception.");
        }
    }
}
