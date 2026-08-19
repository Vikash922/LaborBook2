package com.itextpdf.p017io.font.cmap;

import com.itextpdf.p017io.font.PdfEncodings;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractCMap {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private String cmapName;
    private String ordering;
    private String registry;
    private int supplement;

    abstract void addChar(String str, CMapObject cMapObject);

    void addCodeSpaceRange(byte[] bArr, byte[] bArr2) {
    }

    public String getName() {
        return this.cmapName;
    }

    void setName(String str) {
        this.cmapName = str;
    }

    public String getOrdering() {
        return this.ordering;
    }

    void setOrdering(String str) {
        this.ordering = str;
    }

    public String getRegistry() {
        return this.registry;
    }

    void setRegistry(String str) {
        this.registry = str;
    }

    public int getSupplement() {
        return this.supplement;
    }

    void setSupplement(int i) {
        this.supplement = i;
    }

    void addRange(String str, String str2, CMapObject cMapObject) {
        byte[] bArrDecodeStringToByte = decodeStringToByte(str);
        byte[] bArrDecodeStringToByte2 = decodeStringToByte(str2);
        if (bArrDecodeStringToByte.length != bArrDecodeStringToByte2.length || bArrDecodeStringToByte.length == 0) {
            throw new IllegalArgumentException("Invalid map.");
        }
        byte[] bArrDecodeStringToByte3 = cMapObject.isString() ? decodeStringToByte(cMapObject.toString()) : null;
        int iByteArrayToInt = byteArrayToInt(bArrDecodeStringToByte);
        int iByteArrayToInt2 = byteArrayToInt(bArrDecodeStringToByte2);
        for (int i = iByteArrayToInt; i <= iByteArrayToInt2; i++) {
            intToByteArray(i, bArrDecodeStringToByte);
            String strConvertToString = PdfEncodings.convertToString(bArrDecodeStringToByte, null);
            if (cMapObject.isArray()) {
                addChar(strConvertToString, (CMapObject) ((ArrayList) cMapObject.getValue()).get(i - iByteArrayToInt));
            } else if (cMapObject.isNumber()) {
                addChar(strConvertToString, new CMapObject(4, Integer.valueOf((((Integer) cMapObject.getValue()).intValue() + i) - iByteArrayToInt)));
            } else if (cMapObject.isString()) {
                addChar(strConvertToString, new CMapObject(2, bArrDecodeStringToByte3));
                intToByteArray(byteArrayToInt(bArrDecodeStringToByte3) + 1, bArrDecodeStringToByte3);
            }
        }
    }

    public static byte[] decodeStringToByte(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    protected String toUnicodeString(String str, boolean z) {
        byte[] bArrDecodeStringToByte = decodeStringToByte(str);
        if (z) {
            return PdfEncodings.convertToString(bArrDecodeStringToByte, PdfEncodings.UNICODE_BIG_UNMARKED);
        }
        if (bArrDecodeStringToByte.length >= 2 && bArrDecodeStringToByte[0] == -2 && bArrDecodeStringToByte[1] == -1) {
            return PdfEncodings.convertToString(bArrDecodeStringToByte, PdfEncodings.UNICODE_BIG);
        }
        return PdfEncodings.convertToString(bArrDecodeStringToByte, PdfEncodings.PDF_DOC_ENCODING);
    }

    private static void intToByteArray(int i, byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr[length] = (byte) i;
            i >>>= 8;
        }
    }

    private static int byteArrayToInt(byte[] bArr) {
        int i = 0;
        for (byte b : bArr) {
            i = (i << 8) | (b & 255);
        }
        return i;
    }
}
