package com.itextpdf.signatures;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public interface IExternalDigest {
    MessageDigest getMessageDigest(String str) throws GeneralSecurityException;
}
