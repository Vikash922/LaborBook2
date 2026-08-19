package com.inmobi.media;

import android.util.Base64;
import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: renamed from: com.inmobi.media.a4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3071a4 {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f1836a = 0;

    /* JADX INFO: renamed from: a */
    public static byte[] m2014a(String str) {
        int i;
        if (str != null) {
            int length = str.length() % 4;
            i = length + ((((length ^ 4) & ((-length) | length)) >> 31) & 4);
        } else {
            i = 0;
        }
        String strValueOf = String.valueOf(str != null ? StringsKt.reversed((CharSequence) str).toString() : null);
        for (int i2 = 0; i2 < i; i2++) {
            strValueOf = strValueOf + SignatureVisitor.INSTANCEOF;
        }
        byte[] bytes = strValueOf.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return Base64.decode(bytes, 2);
    }

    /* JADX INFO: renamed from: a */
    public static String m2013a(String data, byte[] bArr) {
        byte[] bArrDoFinal;
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullExpressionValue("a4", "TAG");
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding");
            Intrinsics.checkNotNullExpressionValue(cipher, "getInstance(...)");
            cipher.init(1, secretKeySpec);
            byte[] bytes = data.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            bArrDoFinal = cipher.doFinal(bytes);
        } catch (Throwable th) {
            Log.d("a4", "SDK encountered unexpected error in getting encrypted AES bytes; " + th.getMessage());
            bArrDoFinal = null;
        }
        byte[] bArrEncode = Base64.encode(bArrDoFinal, 2);
        Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
        String str = new String(bArrEncode, Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue("a4", "TAG");
        return str;
    }
}
