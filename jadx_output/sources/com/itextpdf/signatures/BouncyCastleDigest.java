package com.itextpdf.signatures;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.bouncycastle.jcajce.provider.digest.GOST3411;
import org.bouncycastle.jcajce.provider.digest.MD2;
import org.bouncycastle.jcajce.provider.digest.MD5;
import org.bouncycastle.jcajce.provider.digest.RIPEMD128;
import org.bouncycastle.jcajce.provider.digest.RIPEMD160;
import org.bouncycastle.jcajce.provider.digest.RIPEMD256;
import org.bouncycastle.jcajce.provider.digest.SHA1;
import org.bouncycastle.jcajce.provider.digest.SHA224;
import org.bouncycastle.jcajce.provider.digest.SHA256;
import org.bouncycastle.jcajce.provider.digest.SHA384;
import org.bouncycastle.jcajce.provider.digest.SHA512;

/* JADX INFO: loaded from: classes6.dex */
public class BouncyCastleDigest implements IExternalDigest {
    @Override // com.itextpdf.signatures.IExternalDigest
    public MessageDigest getMessageDigest(String str) throws GeneralSecurityException {
        String allowedDigest = DigestAlgorithms.getAllowedDigest(str);
        if (allowedDigest == null) {
            throw new NoSuchAlgorithmException(str);
        }
        allowedDigest.hashCode();
        switch (allowedDigest) {
            case "1.2.840.113549.2.2":
                return new MD2.Digest();
            case "1.2.840.113549.2.5":
                return new MD5.Digest();
            case "1.3.36.3.2.1":
                return new RIPEMD160.Digest();
            case "1.3.36.3.2.2":
                return new RIPEMD128.Digest();
            case "1.3.36.3.2.3":
                return new RIPEMD256.Digest();
            case "2.16.840.1.101.3.4.2.1":
                return new SHA256.Digest();
            case "2.16.840.1.101.3.4.2.2":
                return new SHA384.Digest();
            case "2.16.840.1.101.3.4.2.3":
                return new SHA512.Digest();
            case "2.16.840.1.101.3.4.2.4":
                return new SHA224.Digest();
            case "1.3.14.3.2.26":
                return new SHA1.Digest();
            case "1.2.643.2.2.9":
                return new GOST3411.Digest();
            default:
                throw new NoSuchAlgorithmException(str);
        }
    }
}
