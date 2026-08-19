package com.inmobi.media;

import android.content.Context;
import android.location.Location;
import com.facebook.AuthenticationTokenClaims;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: renamed from: com.inmobi.media.ca */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3107ca {

    /* JADX INFO: renamed from: a */
    public static int f1950a = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: b */
    public static Boolean f1951b = null;

    /* JADX INFO: renamed from: c */
    public static String f1952c = null;

    /* JADX INFO: renamed from: d */
    public static String f1953d = null;

    /* JADX INFO: renamed from: e */
    public static String f1954e = null;

    /* JADX INFO: renamed from: f */
    public static String f1955f = null;

    /* JADX INFO: renamed from: g */
    public static String f1956g = null;

    /* JADX INFO: renamed from: h */
    public static String f1957h = null;

    /* JADX INFO: renamed from: i */
    public static int f1958i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: j */
    public static String f1959j;

    /* JADX INFO: renamed from: k */
    public static String f1960k;

    /* JADX INFO: renamed from: l */
    public static String f1961l;

    /* JADX INFO: renamed from: m */
    public static String f1962m;

    /* JADX INFO: renamed from: n */
    public static Location f1963n;

    /* JADX INFO: renamed from: a */
    public static void m2048a(final boolean z) {
        f1951b = Boolean.valueOf(z);
        final Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.ca$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC3107ca.m2047a(contextM1254d, z);
                }
            });
        }
    }

    /* JADX INFO: renamed from: b */
    public static Location m2049b() {
        Location location = f1963n;
        if (location != null) {
            return location;
        }
        Context contextM1254d = C2849Kb.m1254d();
        Location location2 = null;
        if (contextM1254d == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "user_info_store");
        Intrinsics.checkNotNullParameter(AuthenticationTokenClaims.JSON_KEY_USER_LOCATION, "key");
        String string = c3133e6M2058a.f2045a.getString(AuthenticationTokenClaims.JSON_KEY_USER_LOCATION, null);
        if (string == null) {
            return null;
        }
        Location location3 = new Location("");
        try {
            String[] strArr = (String[]) new Regex(",").split(string, 0).toArray(new String[0]);
            location3.setLatitude(Double.parseDouble(strArr[0]));
            location3.setLongitude(Double.parseDouble(strArr[1]));
            location3.setAccuracy(Float.parseFloat(strArr[2]));
            location3.setTime(Long.parseLong(strArr[3]));
            location2 = location3;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException unused) {
        }
        f1963n = location2;
        return location2;
    }

    /* JADX INFO: renamed from: c */
    public static boolean m2050c() {
        Boolean bool = f1951b;
        if (bool != null) {
            return bool.booleanValue();
        }
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "user_info_store");
            Intrinsics.checkNotNullParameter("user_age_restricted", "key");
            f1951b = Boolean.valueOf(c3133e6M2058a.f2045a.getBoolean("user_age_restricted", false));
        }
        Boolean bool2 = f1951b;
        if (bool2 != null) {
            return bool2.booleanValue();
        }
        return false;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2047a(Context it, boolean z) {
        Intrinsics.checkNotNullParameter(it, "$it");
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6.m2102a(AbstractC3118d6.m2058a(it, "user_info_store"), "user_age_restricted", z, false, 4, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0130  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap m2046a() {
        /*
            Method dump skipped, instruction units count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC3107ca.m2046a():java.util.HashMap");
    }
}
