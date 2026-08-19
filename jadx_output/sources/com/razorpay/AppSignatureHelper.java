package com.razorpay;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public class AppSignatureHelper extends ContextWrapper {
    public static final int NUM_BASE64_CHAR = 11;
    public static final int NUM_HASHED_BYTES = 9;
    public static final String TAG = "AppSignatureHelper";
    private static final String l$1_I$l$ = "SHA-256";

    public AppSignatureHelper(Context context) {
        super(context);
    }

    public ArrayList<String> getAppSignatures() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            String packageName = getPackageName();
            for (Signature signature : getPackageManager().getPackageInfo(packageName, 64).signatures) {
                String strL$1_I$l$ = l$1_I$l$(packageName, signature.toCharsString());
                if (strL$1_I$l$ != null) {
                    arrayList.add(String.format("%s", strL$1_I$l$));
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Unable to find package to obtain hash.", e);
        }
        return arrayList;
    }

    private static String l$1_I$l$(String str, String str2) {
        String str3 = str + StringUtils.SPACE + str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str3.getBytes(StandardCharsets.UTF_8));
            String strSubstring = Base64.encodeToString(Arrays.copyOfRange(messageDigest.digest(), 0, 9), 3).substring(0, 11);
            Logger.m2690d(String.format("pkg: %s -- hash: %s", str, strSubstring));
            return strSubstring;
        } catch (NoSuchAlgorithmException e) {
            Log.e(TAG, "hash:NoSuchAlgorithm", e);
            return null;
        }
    }
}
