package com.truecaller.android.sdk.legacy;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.google.common.base.Ascii;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.truecaller.android.sdk.common.ErrorResponse;
import com.truecaller.android.sdk.common.network.RestAdapter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes5.dex */
public class Utils {
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    static final String PARTNER_KEY_PROPERTY = "com.truecaller.android.sdk.PartnerKey";

    static PackageInfo getPackageInfo(Context context, String str, int i) {
        try {
            return context.getPackageManager().getPackageInfo(str, i);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static String getApplicationSignature(Context context) {
        Signature[] signatureArr;
        PackageInfo packageInfo = getPackageInfo(context, context.getPackageName(), 64);
        if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length == 0) {
            return null;
        }
        return Base64.encodeToString(getSha1hash(packageInfo.signatures[0].toByteArray()).getBytes(), 2);
    }

    static String getSha1hash(byte[] bArr) {
        return hashWithAlgorithm("SHA-1", bArr);
    }

    public static String generateNonce() {
        return UUID.randomUUID().toString();
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

    static String getPartnerKey(ApplicationInfo applicationInfo) {
        if (applicationInfo == null || applicationInfo.metaData == null) {
            return null;
        }
        Object obj = applicationInfo.metaData.get(PARTNER_KEY_PROPERTY);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public static String parseErrorForMessage(ResponseBody responseBody) {
        String str;
        try {
            Map map = (Map) new Gson().fromJson(responseBody.charStream(), Map.class);
            if (map == null) {
                return "Unknown error";
            }
            if (map.containsKey("message")) {
                Object obj = map.get("message");
                if (!(obj instanceof String)) {
                    return "Unknown error";
                }
                str = (String) obj;
            } else {
                if (!map.containsKey(RestAdapter.JSON_KEY_ERRORS_LIST)) {
                    return "Unknown error";
                }
                Object obj2 = map.get(RestAdapter.JSON_KEY_ERRORS_LIST);
                if (!(obj2 instanceof List) || ((List) obj2).isEmpty()) {
                    return "Unknown error";
                }
                Object obj3 = ((List) obj2).get(0);
                if (!(obj3 instanceof String)) {
                    return "Unknown error";
                }
                str = (String) obj3;
            }
            return str;
        } catch (JsonIOException | JsonSyntaxException unused) {
            return "Unknown error";
        }
    }

    public static ErrorResponse parseError(ResponseBody responseBody) {
        ErrorResponse errorResponse = new ErrorResponse();
        try {
            ErrorResponse errorResponse2 = (ErrorResponse) new Gson().fromJson(responseBody.charStream(), ErrorResponse.class);
            if (errorResponse2 != null) {
                try {
                    if (!errorResponse2.getMessage().isEmpty()) {
                        return errorResponse2;
                    }
                } catch (JsonIOException | JsonSyntaxException unused) {
                    errorResponse = errorResponse2;
                }
            }
            errorResponse = new ErrorResponse();
        } catch (JsonIOException | JsonSyntaxException unused2) {
        }
        return errorResponse;
    }
}
