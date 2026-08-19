package com.itextpdf.io.font;

/* JADX INFO: loaded from: classes6.dex */
public interface IExtraEncoding {
    String byteToChar(byte[] bArr, String str);

    byte[] charToByte(char c, String str);

    byte[] charToByte(String str, String str2);
}
