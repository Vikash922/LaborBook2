package com.inmobi.media;

import android.util.Log;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.I6 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2814I6 {

    /* JADX INFO: renamed from: a */
    public static byte f1109a;

    /* JADX INFO: renamed from: b */
    public static boolean f1110b;

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1170a(byte b, String tag, String str) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (f1110b) {
            System.out.println((Object) str);
        }
        if (b == 1) {
            byte b2 = f1109a;
            if (2 == b2 || 1 == b2 || 3 == b2) {
                Intrinsics.checkNotNull(str);
                Log.e("[InMobi]", str);
                return;
            }
            return;
        }
        if (b == 2) {
            byte b3 = f1109a;
            if (2 == b3 || 3 == b3) {
                Intrinsics.checkNotNull(str);
                Log.d("[InMobi]", str);
                return;
            }
            return;
        }
        if (b == 3) {
            Intrinsics.checkNotNull(str);
            if (str.length() > 4000) {
                m1175b(tag, str);
            } else {
                Log.d(tag, str);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m1175b(String str, String str2) {
        if (str2.length() <= 4000) {
            Log.d(str, str2);
            return;
        }
        String strSubstring = str2.substring(0, 4000);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        Log.d(str, strSubstring);
        String strSubstring2 = str2.substring(4000);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
        m1175b(str, strSubstring2);
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1172a(String tag, String str) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        m1170a((byte) 3, tag, str);
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1173a(String str, String str2, Throwable th) {
        m1171a((byte) 3, str, str2, th);
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1171a(byte b, String str, String str2, Throwable th) {
        if (f1110b) {
            System.out.println((Object) str2);
        }
        if (b == 1) {
            byte b2 = f1109a;
            if (2 == b2 || 1 == b2 || 3 == b2) {
                Log.e("[InMobi]", str2, th);
                return;
            }
            return;
        }
        if (b != 2) {
            if (b == 3) {
                Log.d(str, str2, th);
            }
        } else {
            byte b3 = f1109a;
            if (2 == b3 || 3 == b3) {
                Log.d("[InMobi]", str2, th);
            }
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1169a(byte b) {
        f1109a = b;
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1174a(boolean z) {
        f1110b = z;
    }
}
