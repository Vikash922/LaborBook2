package com.itextpdf.p017io.font;

import com.itextpdf.p017io.font.constants.FontResources;
import com.itextpdf.p017io.util.ResourceUtil;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes6.dex */
public class AdobeGlyphList {
    private static Map<Integer, String> unicode2names = new HashMap();
    private static Map<String, Integer> names2unicode = new HashMap();

    static {
        InputStream resourceStream;
        InputStream inputStream = null;
        try {
            try {
                resourceStream = ResourceUtil.getResourceStream(FontResources.ADOBE_GLYPH_LIST);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (resourceStream == null) {
                throw new Exception("com/itextpdf/io/font/AdobeGlyphList.txt not found as resource.");
            }
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i = resourceStream.read(bArr);
                if (i < 0) {
                    break;
                } else {
                    byteArrayOutputStream.write(bArr, 0, i);
                }
            }
            resourceStream.close();
            StringTokenizer stringTokenizer = new StringTokenizer(PdfEncodings.convertToString(byteArrayOutputStream.toByteArray(), null), "\r\n");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                if (!strNextToken.startsWith("#")) {
                    StringTokenizer stringTokenizer2 = new StringTokenizer(strNextToken, " ;\r\n\t\f");
                    if (stringTokenizer2.hasMoreTokens()) {
                        String strNextToken2 = stringTokenizer2.nextToken();
                        if (stringTokenizer2.hasMoreTokens()) {
                            String strNextToken3 = stringTokenizer2.nextToken();
                            if (!stringTokenizer2.hasMoreTokens()) {
                                int i2 = Integer.parseInt(strNextToken3, 16);
                                unicode2names.put(Integer.valueOf(i2), strNextToken2);
                                names2unicode.put(strNextToken2, Integer.valueOf(i2));
                            }
                        }
                    }
                }
            }
            return;
        } catch (Exception e2) {
            e = e2;
            inputStream = resourceStream;
        } catch (Throwable th2) {
            th = th2;
            inputStream = resourceStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused) {
                }
            }
            throw th;
        }
        System.err.println("AdobeGlyphList.txt loading error: " + e.getMessage());
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
        }
    }

    public static int nameToUnicode(String str) {
        int iIntValue = names2unicode.containsKey(str) ? names2unicode.get(str).intValue() : -1;
        if (iIntValue == -1 && str.length() == 7 && str.toLowerCase().startsWith("uni")) {
            try {
                return Integer.parseInt(str.substring(3), 16);
            } catch (Exception unused) {
            }
        }
        return iIntValue;
    }

    public static String unicodeToName(int i) {
        return unicode2names.get(Integer.valueOf(i));
    }

    public static int getNameToUnicodeLength() {
        return names2unicode.size();
    }

    public static int getUnicodeToNameLength() {
        return unicode2names.size();
    }
}
