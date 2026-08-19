package com.itextpdf.signatures;

import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes6.dex */
public class DigestAlgorithms {
    public static final String RIPEMD160 = "RIPEMD160";
    public static final String SHA1 = "SHA-1";
    public static final String SHA256 = "SHA-256";
    public static final String SHA384 = "SHA-384";
    public static final String SHA512 = "SHA-512";
    private static final Map<String, String> allowedDigests;
    private static final Map<String, String> digestNames;
    private static final Map<String, String> fixNames;

    static {
        HashMap map = new HashMap();
        digestNames = map;
        HashMap map2 = new HashMap();
        fixNames = map2;
        HashMap map3 = new HashMap();
        allowedDigests = map3;
        map.put("1.2.840.113549.2.5", "MD5");
        map.put("1.2.840.113549.2.2", "MD2");
        map.put("1.3.14.3.2.26", "SHA1");
        map.put("2.16.840.1.101.3.4.2.4", "SHA224");
        map.put("2.16.840.1.101.3.4.2.1", "SHA256");
        map.put("2.16.840.1.101.3.4.2.2", "SHA384");
        map.put("2.16.840.1.101.3.4.2.3", "SHA512");
        map.put("1.3.36.3.2.2", "RIPEMD128");
        map.put("1.3.36.3.2.1", RIPEMD160);
        map.put("1.3.36.3.2.3", "RIPEMD256");
        map.put("1.2.840.113549.1.1.4", "MD5");
        map.put("1.2.840.113549.1.1.2", "MD2");
        map.put("1.2.840.113549.1.1.5", "SHA1");
        map.put("1.2.840.113549.1.1.14", "SHA224");
        map.put("1.2.840.113549.1.1.11", "SHA256");
        map.put("1.2.840.113549.1.1.12", "SHA384");
        map.put("1.2.840.113549.1.1.13", "SHA512");
        map.put("1.2.840.113549.2.5", "MD5");
        map.put("1.2.840.113549.2.2", "MD2");
        map.put("1.2.840.10040.4.3", "SHA1");
        map.put("2.16.840.1.101.3.4.3.1", "SHA224");
        map.put("2.16.840.1.101.3.4.3.2", "SHA256");
        map.put("2.16.840.1.101.3.4.3.3", "SHA384");
        map.put("2.16.840.1.101.3.4.3.4", "SHA512");
        map.put("1.3.36.3.3.1.3", "RIPEMD128");
        map.put("1.3.36.3.3.1.2", RIPEMD160);
        map.put("1.3.36.3.3.1.4", "RIPEMD256");
        map.put("1.2.643.2.2.9", "GOST3411");
        map2.put("SHA256", "SHA-256");
        map2.put("SHA384", "SHA-384");
        map2.put("SHA512", "SHA-512");
        map3.put("MD2", "1.2.840.113549.2.2");
        map3.put("MD-2", "1.2.840.113549.2.2");
        map3.put("MD5", "1.2.840.113549.2.5");
        map3.put("MD-5", "1.2.840.113549.2.5");
        map3.put("SHA1", "1.3.14.3.2.26");
        map3.put("SHA-1", "1.3.14.3.2.26");
        map3.put("SHA224", "2.16.840.1.101.3.4.2.4");
        map3.put(McElieceCCA2KeyGenParameterSpec.SHA224, "2.16.840.1.101.3.4.2.4");
        map3.put("SHA256", "2.16.840.1.101.3.4.2.1");
        map3.put("SHA-256", "2.16.840.1.101.3.4.2.1");
        map3.put("SHA384", "2.16.840.1.101.3.4.2.2");
        map3.put("SHA-384", "2.16.840.1.101.3.4.2.2");
        map3.put("SHA512", "2.16.840.1.101.3.4.2.3");
        map3.put("SHA-512", "2.16.840.1.101.3.4.2.3");
        map3.put("RIPEMD128", "1.3.36.3.2.2");
        map3.put("RIPEMD-128", "1.3.36.3.2.2");
        map3.put(RIPEMD160, "1.3.36.3.2.1");
        map3.put("RIPEMD-160", "1.3.36.3.2.1");
        map3.put("RIPEMD256", "1.3.36.3.2.3");
        map3.put("RIPEMD-256", "1.3.36.3.2.3");
        map3.put("GOST3411", "1.2.643.2.2.9");
    }

    public static MessageDigest getMessageDigestFromOid(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        return getMessageDigest(getDigest(str), str2);
    }

    public static MessageDigest getMessageDigest(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        return SignUtils.getMessageDigest(str, str2);
    }

    public static byte[] digest(InputStream inputStream, String str, String str2) throws GeneralSecurityException, IOException {
        return digest(inputStream, getMessageDigest(str, str2));
    }

    public static byte[] digest(InputStream inputStream, MessageDigest messageDigest) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i > 0) {
                messageDigest.update(bArr, 0, i);
            } else {
                return messageDigest.digest();
            }
        }
    }

    public static String getDigest(String str) {
        String str2 = digestNames.get(str);
        return str2 == null ? str : str2;
    }

    public static String normalizeDigestName(String str) {
        Map<String, String> map = fixNames;
        return map.containsKey(str) ? map.get(str) : str;
    }

    public static String getAllowedDigest(String str) {
        if (str == null) {
            throw new IllegalArgumentException(SignExceptionMessageConstant.THE_NAME_OF_THE_DIGEST_ALGORITHM_IS_NULL);
        }
        return allowedDigests.get(str.toUpperCase());
    }
}
