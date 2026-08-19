package com.itextpdf.signatures;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes6.dex */
public interface IExternalSignature {
    String getEncryptionAlgorithm();

    String getHashAlgorithm();

    byte[] sign(byte[] bArr) throws GeneralSecurityException;
}
