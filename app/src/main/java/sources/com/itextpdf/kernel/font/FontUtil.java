package com.itextpdf.kernel.font;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.p017io.font.FontCache;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.font.cmap.CMapLocationFromBytes;
import com.itextpdf.p017io.font.cmap.CMapParser;
import com.itextpdf.p017io.font.cmap.CMapToUnicode;
import com.itextpdf.p017io.font.cmap.CMapUniCid;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.IntHashtable;
import java.util.Arrays;
import java.util.HashMap;
import org.objectweb.asm.signature.SignatureVisitor;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class FontUtil {
    private static final HashMap<String, CMapToUnicode> uniMaps = new HashMap<>();

    public static String addRandomSubsetPrefixForFontName(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 7);
        for (int i = 0; i < 6; i++) {
            sb.append((char) ((Math.random() * 26.0d) + 65.0d));
        }
        sb.append(SignatureVisitor.EXTENDS).append(str);
        return sb.toString();
    }

    static CMapToUnicode processToUnicode(PdfObject pdfObject) {
        if (pdfObject instanceof PdfStream) {
            try {
                CMapLocationFromBytes cMapLocationFromBytes = new CMapLocationFromBytes(((PdfStream) pdfObject).getBytes());
                CMapToUnicode cMapToUnicode = new CMapToUnicode();
                CMapParser.parseCid("", cMapToUnicode, cMapLocationFromBytes);
                return cMapToUnicode;
            } catch (Exception unused) {
                LoggerFactory.getLogger((Class<?>) CMapToUnicode.class).error(IoLogMessageConstant.UNKNOWN_ERROR_WHILE_PROCESSING_CMAP);
                return CMapToUnicode.EmptyCMapToUnicodeMap;
            }
        }
        if (PdfName.IdentityH.equals(pdfObject)) {
            return CMapToUnicode.getIdentity();
        }
        return null;
    }

    static CMapToUnicode getToUnicodeFromUniMap(String str) {
        CMapToUnicode cMapToUnicodeExportToUnicode;
        if (str == null) {
            return null;
        }
        HashMap<String, CMapToUnicode> map = uniMaps;
        synchronized (map) {
            if (map.containsKey(str)) {
                return map.get(str);
            }
            if (PdfEncodings.IDENTITY_H.equals(str)) {
                cMapToUnicodeExportToUnicode = CMapToUnicode.getIdentity();
            } else {
                CMapUniCid uni2CidCmap = FontCache.getUni2CidCmap(str);
                if (uni2CidCmap == null) {
                    return null;
                }
                cMapToUnicodeExportToUnicode = uni2CidCmap.exportToUnicode();
            }
            map.put(str, cMapToUnicodeExportToUnicode);
            return cMapToUnicodeExportToUnicode;
        }
    }

    static String createRandomFontName() {
        StringBuilder sb = new StringBuilder("");
        for (int i = 0; i < 7; i++) {
            sb.append((char) ((Math.random() * 26.0d) + 65.0d));
        }
        return sb.toString();
    }

    static int[] convertSimpleWidthsArray(PdfArray pdfArray, int i, int i2) {
        int i3;
        int[] iArr = new int[256];
        Arrays.fill(iArr, i2);
        if (pdfArray == null) {
            LoggerFactory.getLogger((Class<?>) FontUtil.class).warn(IoLogMessageConstant.FONT_DICTIONARY_WITH_NO_WIDTHS);
            return iArr;
        }
        for (int i4 = 0; i4 < pdfArray.size() && (i3 = i + i4) < 256; i4++) {
            PdfNumber asNumber = pdfArray.getAsNumber(i4);
            iArr[i3] = asNumber != null ? asNumber.intValue() : i2;
        }
        return iArr;
    }

    static IntHashtable convertCompositeWidthsArray(PdfArray pdfArray) {
        IntHashtable intHashtable = new IntHashtable();
        if (pdfArray == null) {
            return intHashtable;
        }
        int i = 0;
        while (i < pdfArray.size()) {
            int iIntValue = pdfArray.getAsNumber(i).intValue();
            int i2 = i + 1;
            PdfObject pdfObject = pdfArray.get(i2);
            if (pdfObject.isArray()) {
                PdfArray pdfArray2 = (PdfArray) pdfObject;
                int i3 = 0;
                while (i3 < pdfArray2.size()) {
                    intHashtable.put(iIntValue, pdfArray2.getAsNumber(i3).intValue());
                    i3++;
                    iIntValue++;
                }
            } else {
                int iIntValue2 = ((PdfNumber) pdfObject).intValue();
                int i4 = i + 2;
                int iIntValue3 = pdfArray.getAsNumber(i4).intValue();
                while (iIntValue <= iIntValue2) {
                    intHashtable.put(iIntValue, iIntValue3);
                    iIntValue++;
                }
                i2 = i4;
            }
            i = i2 + 1;
        }
        return intHashtable;
    }
}
