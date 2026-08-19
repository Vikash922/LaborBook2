package com.itextpdf.signatures;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class EncryptionAlgorithms {
    static final Map<String, String> algorithmNames;

    static {
        HashMap map = new HashMap();
        algorithmNames = map;
        map.put(SecurityIDs.ID_RSA, "RSA");
        map.put(SecurityIDs.ID_DSA, "DSA");
        map.put("1.2.840.113549.1.1.2", "RSA");
        map.put("1.2.840.113549.1.1.4", "RSA");
        map.put("1.2.840.113549.1.1.5", "RSA");
        map.put("1.2.840.113549.1.1.14", "RSA");
        map.put("1.2.840.113549.1.1.11", "RSA");
        map.put("1.2.840.113549.1.1.12", "RSA");
        map.put("1.2.840.113549.1.1.13", "RSA");
        map.put("1.2.840.10040.4.3", "DSA");
        map.put("2.16.840.1.101.3.4.3.1", "DSA");
        map.put("2.16.840.1.101.3.4.3.2", "DSA");
        map.put("1.3.14.3.2.29", "RSA");
        map.put("1.3.36.3.3.1.2", "RSA");
        map.put("1.3.36.3.3.1.3", "RSA");
        map.put("1.3.36.3.3.1.4", "RSA");
        map.put("1.2.643.2.2.19", "ECGOST3410");
        map.put(SecurityIDs.ID_ECDSA, "ECDSA");
        map.put("1.2.840.10045.4.1", "ECDSA");
        map.put("1.2.840.10045.4.3", "ECDSA");
        map.put("1.2.840.10045.4.3.2", "ECDSA");
        map.put("1.2.840.10045.4.3.3", "ECDSA");
        map.put("1.2.840.10045.4.3.4", "ECDSA");
    }

    public static String getAlgorithm(String str) {
        String str2 = algorithmNames.get(str);
        return str2 == null ? str : str2;
    }
}
