package com.itextpdf.signatures;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public interface ITSAClient {
    MessageDigest getMessageDigest() throws GeneralSecurityException;

    byte[] getTimeStampToken(byte[] bArr) throws Exception;

    int getTokenSizeEstimate();
}
