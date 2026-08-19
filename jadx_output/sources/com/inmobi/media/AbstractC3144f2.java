package com.inmobi.media;

import android.content.Context;
import android.location.LocationManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f2 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3144f2 {
    /* JADX INFO: renamed from: a */
    public static HashMap m2123a() {
        String lowerCase;
        int i;
        int i2;
        int i3;
        int i4;
        HashMap map = new HashMap();
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return map;
        }
        String strM1248b = C2849Kb.m1248b();
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("signals", strM1248b, null);
        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
        int cellOperatorFlag = ((SignalsConfig) configM1161a).getIce().getCellOperatorFlag();
        boolean z = (cellOperatorFlag & 2) == 2;
        boolean z2 = (cellOperatorFlag & 1) == 1;
        Object systemService = contextM1254d.getSystemService("phone");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        if (z) {
            lowerCase = null;
            i = -1;
            i2 = -1;
        } else {
            int[] iArrM2124a = m2124a(telephonyManager.getNetworkOperator());
            i2 = iArrM2124a[0];
            i = iArrM2124a[1];
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (networkCountryIso != null) {
                Locale ENGLISH = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                lowerCase = networkCountryIso.toLowerCase(ENGLISH);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
        }
        if (z2) {
            i3 = -1;
            i4 = -1;
        } else {
            int[] iArrM2124a2 = m2124a(telephonyManager.getSimOperator());
            i4 = iArrM2124a2[0];
            i3 = iArrM2124a2[1];
        }
        String string = (i4 == -1 && i3 == -1) ? null : new StringBuilder().append(i4).append('_').append(i3).toString();
        if (string != null) {
            map.put("s-ho", string);
        }
        String string2 = (i2 == -1 && i == -1) ? null : new StringBuilder().append(i2).append('_').append(i).toString();
        if (string2 != null) {
            map.put("s-co", string2);
        }
        if (lowerCase != null) {
            map.put("s-iso", lowerCase);
        }
        map.put("s-cn", C2751E3.f962a.m1017a(contextM1254d));
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0022  */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap m2125b() {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC3144f2.m2125b():java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap m2126c() {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC3144f2.m2126c():java.util.HashMap");
    }

    /* JADX INFO: renamed from: d */
    public static boolean m2127d() {
        if (!C2849Kb.m1265q()) {
            return false;
        }
        boolean zM1519a = AbstractC2922P9.m1519a(C2849Kb.m1254d(), "android.permission.READ_PHONE_STATE");
        boolean zM1519a2 = AbstractC2922P9.m1519a(C2849Kb.m1254d(), "android.permission.ACCESS_FINE_LOCATION");
        int i = Build.VERSION.SDK_INT;
        if (i == 29) {
            if (!zM1519a2) {
                Intrinsics.checkNotNullExpressionValue("f2", "TAG");
            }
            return zM1519a2;
        }
        if (i >= 30) {
            if (!zM1519a2 || !zM1519a) {
                Intrinsics.checkNotNullExpressionValue("f2", "TAG");
            }
            return zM1519a2 && zM1519a;
        }
        boolean zM1519a3 = AbstractC2922P9.m1519a(C2849Kb.m1254d(), "android.permission.ACCESS_COARSE_LOCATION");
        if (!zM1519a3 && !zM1519a2) {
            Intrinsics.checkNotNullExpressionValue("f2", "TAG");
        }
        return zM1519a3 || zM1519a2;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m2128e() {
        if (Build.VERSION.SDK_INT < 28) {
            return true;
        }
        Context contextM1254d = C2849Kb.m1254d();
        Object systemService = contextM1254d != null ? contextM1254d.getSystemService(FirebaseAnalytics.Param.LOCATION) : null;
        LocationManager locationManager = systemService instanceof LocationManager ? (LocationManager) systemService : null;
        return locationManager != null && locationManager.isLocationEnabled();
    }

    /* JADX INFO: renamed from: a */
    public static int[] m2124a(String str) {
        int[] iArr = {-1, -1};
        if (str != null && !Intrinsics.areEqual("", str)) {
            try {
                String strSubstring = str.substring(0, 3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                int i = Integer.parseInt(strSubstring);
                String strSubstring2 = str.substring(3);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
                int i2 = Integer.parseInt(strSubstring2);
                iArr[0] = i;
                iArr[1] = i2;
            } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            }
        }
        return iArr;
    }
}
