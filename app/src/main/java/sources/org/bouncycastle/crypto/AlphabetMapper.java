package org.bouncycastle.crypto;

/* JADX INFO: loaded from: classes5.dex */
public interface AlphabetMapper {
    char[] convertToChars(byte[] bArr);

    byte[] convertToIndexes(char[] cArr);

    int getRadix();
}
