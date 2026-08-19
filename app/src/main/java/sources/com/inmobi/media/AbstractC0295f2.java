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

/* JADX INFO: renamed from: com.inmobi.media.f2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0295f2 {
    public static HashMap a() {
        String lowerCase;
        int i;
        int i2;
        int i3;
        int i4;
        HashMap map = new HashMap();
        Context contextD = Kb.d();
        if (contextD == null) {
            return map;
        }
        String strB = Kb.b();
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("signals", strB, null);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
        int cellOperatorFlag = ((SignalsConfig) configA).getIce().getCellOperatorFlag();
        boolean z = (cellOperatorFlag & 2) == 2;
        boolean z2 = (cellOperatorFlag & 1) == 1;
        Object systemService = contextD.getSystemService("phone");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        if (z) {
            lowerCase = null;
            i = -1;
            i2 = -1;
        } else {
            int[] iArrA = a(telephonyManager.getNetworkOperator());
            i2 = iArrA[0];
            i = iArrA[1];
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
            int[] iArrA2 = a(telephonyManager.getSimOperator());
            i4 = iArrA2[0];
            i3 = iArrA2[1];
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
        map.put("s-cn", E3.f104a.a(contextD));
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap b() {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC0295f2.b():java.util.HashMap");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap c() {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC0295f2.c():java.util.HashMap");
    }

    public static boolean d() {
        if (!Kb.q()) {
            return false;
        }
        boolean zA = P9.a(Kb.d(), "android.permission.READ_PHONE_STATE");
        boolean zA2 = P9.a(Kb.d(), "android.permission.ACCESS_FINE_LOCATION");
        int i = Build.VERSION.SDK_INT;
        if (i == 29) {
            if (!zA2) {
                Intrinsics.checkNotNullExpressionValue("f2", "TAG");
            }
            return zA2;
        }
        if (i >= 30) {
            if (!zA2 || !zA) {
                Intrinsics.checkNotNullExpressionValue("f2", "TAG");
            }
            return zA2 && zA;
        }
        boolean zA3 = P9.a(Kb.d(), "android.permission.ACCESS_COARSE_LOCATION");
        if (!zA3 && !zA2) {
            Intrinsics.checkNotNullExpressionValue("f2", "TAG");
        }
        return zA3 || zA2;
    }

    public static boolean e() {
        if (Build.VERSION.SDK_INT < 28) {
            return true;
        }
        Context contextD = Kb.d();
        Object systemService = contextD != null ? contextD.getSystemService(FirebaseAnalytics.Param.LOCATION) : null;
        LocationManager locationManager = systemService instanceof LocationManager ? (LocationManager) systemService : null;
        return locationManager != null && locationManager.isLocationEnabled();
    }

    public static int[] a(String str) {
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
