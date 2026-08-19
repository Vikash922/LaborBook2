package com.itextpdf.signatures;

import com.itextpdf.kernel.exceptions.PdfException;
import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;

/* JADX INFO: loaded from: classes6.dex */
public class KeyStoreUtil {
    public static KeyStore loadCacertsKeyStore(String str) throws Throwable {
        FileInputStream fileInputStream;
        KeyStore keyStore;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(new File(new File(new File(System.getProperty("java.home"), "lib"), "security"), "cacerts"));
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (str == null) {
                keyStore = KeyStore.getInstance("JKS");
            } else {
                keyStore = KeyStore.getInstance("JKS", str);
            }
            keyStore.load(fileInputStream, null);
            try {
                fileInputStream.close();
            } catch (Exception unused) {
            }
            return keyStore;
        } catch (Exception e2) {
            e = e2;
            fileInputStream2 = fileInputStream;
            throw new PdfException(e);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    public static KeyStore loadCacertsKeyStore() {
        return loadCacertsKeyStore(null);
    }
}
