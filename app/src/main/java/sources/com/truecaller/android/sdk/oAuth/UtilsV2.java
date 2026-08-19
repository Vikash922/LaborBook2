package com.truecaller.android.sdk.oAuth;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Base64;
import com.google.common.base.Ascii;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public class UtilsV2 {
    static final String CLIENT_ID_PROPERTY = "com.truecaller.android.sdk.ClientId";
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";

    static Signature[] getPackageSignatures(Context context, String str) {
        try {
            if (Build.VERSION.SDK_INT < 28) {
                return context.getPackageManager().getPackageInfo(str, 64).signatures;
            }
            return context.getPackageManager().getPackageInfo(str, 134217728).signingInfo.getApkContentsSigners();
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static String getApplicationSignature(Context context) {
        return getApplicationSignature(getPackageSignatures(context, context.getPackageName()));
    }

    public static String getApplicationSignature(Signature[] signatureArr) {
        if (signatureArr == null || signatureArr.length == 0) {
            return null;
        }
        return Base64.encodeToString(getSha1hash(signatureArr[0].toByteArray()).getBytes(), 2);
    }

    static String getSha1hash(byte[] bArr) {
        return hashWithAlgorithm("SHA-1", bArr);
    }

    private static String hashWithAlgorithm(String str, byte[] bArr) {
        try {
            return hashBytes(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    private static String hashBytes(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] bArrDigest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : bArrDigest) {
            sb.append(Integer.toHexString((b >> 4) & 15));
            sb.append(Integer.toHexString(b & Ascii.f393SI));
        }
        return sb.toString();
    }

    static ApplicationInfo getAppInfo(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    static String getClientId(ApplicationInfo applicationInfo) {
        if (applicationInfo == null || applicationInfo.metaData == null) {
            return null;
        }
        Object obj = applicationInfo.metaData.get(CLIENT_ID_PROPERTY);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }
}
