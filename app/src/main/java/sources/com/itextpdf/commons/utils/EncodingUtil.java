package com.itextpdf.commons.utils;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: loaded from: classes6.dex */
public final class EncodingUtil {
    private static final String UTF8 = "UTF-8";

    private EncodingUtil() {
    }

    public static byte[] convertToBytes(char[] cArr, String str) throws CharacterCodingException {
        CharsetEncoder charsetEncoderNewEncoder = Charset.forName(str).newEncoder();
        charsetEncoderNewEncoder.onUnmappableCharacter(CodingErrorAction.IGNORE);
        ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(cArr));
        byteBufferEncode.rewind();
        int iLimit = byteBufferEncode.limit();
        int i = "UTF-8".equals(str) ? 3 : 0;
        byte[] bArr = new byte[iLimit + i];
        if ("UTF-8".equals(str)) {
            bArr[0] = -17;
            bArr[1] = -69;
            bArr[2] = -65;
        }
        byteBufferEncode.get(bArr, i, iLimit);
        return bArr;
    }

    public static String convertToString(byte[] bArr, String str) throws UnsupportedEncodingException {
        if (bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65 && str.equals("UTF-8")) {
            return new String(bArr, 3, bArr.length - 3, "UTF-8");
        }
        return new String(bArr, str);
    }
}
