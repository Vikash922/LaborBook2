package com.inmobi.media;

import android.content.Context;
import android.location.Location;
import com.facebook.AuthenticationTokenClaims;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: renamed from: com.inmobi.media.ca, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0256ca {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f322a = Integer.MIN_VALUE;
    public static Boolean b = null;
    public static String c = null;
    public static String d = null;
    public static String e = null;
    public static String f = null;
    public static String g = null;
    public static String h = null;
    public static int i = Integer.MIN_VALUE;
    public static String j;
    public static String k;
    public static String l;
    public static String m;
    public static Location n;

    public static void a(final boolean z) {
        b = Boolean.valueOf(z);
        final Context contextD = Kb.d();
        if (contextD != null) {
            Kb.a(new Runnable() { // from class: com.inmobi.media.ca$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC0256ca.a(contextD, z);
                }
            });
        }
    }

    public static Location b() {
        Location location = n;
        if (location != null) {
            return location;
        }
        Context contextD = Kb.d();
        Location location2 = null;
        if (contextD == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "user_info_store");
        Intrinsics.checkNotNullParameter(AuthenticationTokenClaims.JSON_KEY_USER_LOCATION, "key");
        String string = c0284e6A.f340a.getString(AuthenticationTokenClaims.JSON_KEY_USER_LOCATION, null);
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
        n = location2;
        return location2;
    }

    public static boolean c() {
        Boolean bool = b;
        if (bool != null) {
            return bool.booleanValue();
        }
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "user_info_store");
            Intrinsics.checkNotNullParameter("user_age_restricted", "key");
            b = Boolean.valueOf(c0284e6A.f340a.getBoolean("user_age_restricted", false));
        }
        Boolean bool2 = b;
        if (bool2 != null) {
            return bool2.booleanValue();
        }
        return false;
    }

    public static final void a(Context it, boolean z) {
        Intrinsics.checkNotNullParameter(it, "$it");
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6.a(AbstractC0268d6.a(it, "user_info_store"), "user_age_restricted", z, false, 4, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap a() {
        /*
            Method dump skipped, instruction units count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC0256ca.a():java.util.HashMap");
    }
}
