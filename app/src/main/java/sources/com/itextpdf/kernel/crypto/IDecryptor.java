package com.itextpdf.kernel.crypto;

/* JADX INFO: loaded from: classes6.dex */
public interface IDecryptor {
    byte[] finish();

    byte[] update(byte[] bArr, int i, int i2);
}
