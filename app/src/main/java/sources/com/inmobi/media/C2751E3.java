package com.inmobi.media;

import android.app.NotificationManager;
import android.app.usage.StorageStatsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import com.amplitude.android.TrackingOptions;
import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Pair;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.inmobi.media.E3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2751E3 {

    /* JADX INFO: renamed from: d */
    public static String f965d;

    /* JADX INFO: renamed from: e */
    public static final C3383v1 f966e;

    /* JADX INFO: renamed from: f */
    public static final C3383v1 f967f;

    /* JADX INFO: renamed from: g */
    public static final String f968g;

    /* JADX INFO: renamed from: h */
    public static final Pair f969h;

    /* JADX INFO: renamed from: i */
    public static final String f970i;

    /* JADX INFO: renamed from: j */
    public static final String f971j;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ KProperty[] f963b = {Reflection.property1(new PropertyReference1Impl(C2751E3.class, "maxDeviceVolume", "getMaxDeviceVolume()I", 0)), Reflection.property1(new PropertyReference1Impl(C2751E3.class, "curDeviceVolume", "getCurDeviceVolume()I", 0))};

    /* JADX INFO: renamed from: a */
    public static final C2751E3 f962a = new C2751E3();

    /* JADX INFO: renamed from: c */
    public static long f964c = -1;

    static {
        int i = 15;
        f966e = new C3383v1((Integer) i, (Function0) C2736D3.f910a, false, 12);
        f967f = new C3383v1((Integer) i, (Function0) C2721C3.f869a, true, 8);
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        f968g = RELEASE;
        f969h = new Pair("d-api-lev", "" + Build.VERSION.SDK_INT);
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        f970i = MANUFACTURER;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        f971j = MODEL;
    }

    @JvmStatic
    /* JADX INFO: renamed from: G */
    public static final boolean m994G() {
        return true;
    }

    @JvmStatic
    /* JADX INFO: renamed from: I */
    public static final boolean m995I() {
        return true;
    }

    /* JADX INFO: renamed from: K */
    public static void m996K() {
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2751E3.m997L();
            }
        });
    }

    /* JADX INFO: renamed from: L */
    public static final void m997L() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            long availableBytes = statFs.getAvailableBytes();
            long availableBytes2 = statFs2.getAvailableBytes() + availableBytes;
            if (Environment.getExternalStorageState().equals("mounted")) {
                availableBytes = availableBytes2;
            }
            f964c = availableBytes / ((long) 1048576);
        } catch (Exception e) {
            C3114d2 event = new C3114d2(e);
            C3402w5 c3402w5 = C3402w5.f2709a;
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
    }

    /* JADX INFO: renamed from: M */
    public static void m998M() {
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C2751E3.m999N();
            }
        });
    }

    /* JADX INFO: renamed from: N */
    public static final void m999N() {
        UUID uuidFromString;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        Object systemService = contextM1254d.getSystemService("storagestats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
        StorageStatsManager storageStatsManager = (StorageStatsManager) systemService;
        Object systemService2 = contextM1254d.getSystemService("storage");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.os.storage.StorageManager");
        List<StorageVolume> storageVolumes = ((StorageManager) systemService2).getStorageVolumes();
        Intrinsics.checkNotNullExpressionValue(storageVolumes, "getStorageVolumes(...)");
        long freeBytes = 0;
        for (StorageVolume storageVolume : storageVolumes) {
            String uuid = storageVolume.getUuid();
            if (uuid == null) {
                uuidFromString = StorageManager.UUID_DEFAULT;
                Intrinsics.checkNotNull(uuidFromString);
            } else {
                try {
                    uuidFromString = UUID.fromString(uuid);
                    Intrinsics.checkNotNull(uuidFromString);
                } catch (Exception unused) {
                }
            }
            if (storageVolume.getState().equals("mounted")) {
                try {
                    freeBytes += storageStatsManager.getFreeBytes(uuidFromString);
                } catch (Exception e) {
                    C3114d2 event = new C3114d2(e);
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    Intrinsics.checkNotNullParameter(event, "event");
                    C3402w5.f2712d.m2158a(event);
                }
            }
        }
        f964c = freeBytes / ((long) 1048576);
    }

    /* JADX INFO: renamed from: O */
    public static void m1000O() {
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C2751E3.m1001P();
            }
        });
    }

    /* JADX INFO: renamed from: P */
    public static final void m1001P() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            float blockCountLong = statFs.getBlockCountLong() * statFs.getBlockSizeLong();
            float blockCountLong2 = (statFs2.getBlockCountLong() * statFs2.getBlockSizeLong()) + blockCountLong;
            if (Environment.getExternalStorageState().equals("mounted")) {
                blockCountLong = blockCountLong2;
            }
            f965d = "" + (blockCountLong / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        } catch (Exception e) {
            C3114d2 event = new C3114d2(e);
            C3402w5 c3402w5 = C3402w5.f2709a;
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
        }
    }

    /* JADX INFO: renamed from: Q */
    public static void m1002Q() {
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C2751E3.m1003R();
            }
        });
    }

    /* JADX INFO: renamed from: R */
    public static final void m1003R() {
        UUID uuidFromString;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        Object systemService = contextM1254d.getSystemService("storagestats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
        StorageStatsManager storageStatsManager = (StorageStatsManager) systemService;
        Object systemService2 = contextM1254d.getSystemService("storage");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.os.storage.StorageManager");
        List<StorageVolume> storageVolumes = ((StorageManager) systemService2).getStorageVolumes();
        Intrinsics.checkNotNullExpressionValue(storageVolumes, "getStorageVolumes(...)");
        long totalBytes = 0;
        for (StorageVolume storageVolume : storageVolumes) {
            String uuid = storageVolume.getUuid();
            if (uuid == null) {
                uuidFromString = StorageManager.UUID_DEFAULT;
                Intrinsics.checkNotNull(uuidFromString);
            } else {
                try {
                    uuidFromString = UUID.fromString(uuid);
                    Intrinsics.checkNotNull(uuidFromString);
                } catch (Exception unused) {
                }
            }
            if (storageVolume.getState().equals("mounted")) {
                try {
                    totalBytes += storageStatsManager.getTotalBytes(uuidFromString);
                } catch (Exception e) {
                    C3114d2 event = new C3114d2(e);
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    Intrinsics.checkNotNullParameter(event, "event");
                    C3402w5.f2712d.m2158a(event);
                }
            }
        }
        f965d = "" + (totalBytes / ((long) 1048576));
    }

    /* JADX INFO: renamed from: o */
    public static String m1004o() {
        String string;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null || !AbstractC2922P9.m1519a(contextM1254d, "android.permission.ACCESS_NETWORK_STATE")) {
            return "";
        }
        Object systemService = contextM1254d.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return "";
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception e) {
            Intrinsics.checkNotNullExpressionValue("E3", "getSimpleName(...)");
            e.toString();
        }
        if (activeNetworkInfo == null) {
            return "";
        }
        if (Build.VERSION.SDK_INT < 28) {
            int type = activeNetworkInfo.getType();
            int subtype = activeNetworkInfo.getSubtype();
            if (type != 0) {
                if (type != 1) {
                    string = String.valueOf(type);
                }
                return AppEventsConstants.EVENT_PARAM_VALUE_YES;
            }
            string = new StringBuilder().append(type).append('|').append(subtype).toString();
            return string;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null) {
            return "";
        }
        if (!networkCapabilities.hasTransport(0)) {
            if (!networkCapabilities.hasTransport(1)) {
                string = networkCapabilities.hasTransport(2) ? "7" : networkCapabilities.hasTransport(3) ? "9" : networkCapabilities.hasTransport(4) ? "17" : networkCapabilities.hasTransport(5) ? "10" : networkCapabilities.hasTransport(6) ? "11" : "8";
            }
            return AppEventsConstants.EVENT_PARAM_VALUE_YES;
        }
        string = "0|" + activeNetworkInfo.getSubtype();
        return string;
    }

    /* JADX INFO: renamed from: q */
    public static final String m1005q() {
        int iM1032p = f962a.m1032p();
        return iM1032p != 0 ? iM1032p != 1 ? "NIL" : "wifi" : TrackingOptions.AMP_TRACKING_OPTION_CARRIER;
    }

    @JvmStatic
    /* JADX INFO: renamed from: r */
    public static /* synthetic */ void m1006r() {
    }

    /* JADX INFO: renamed from: A */
    public final boolean m1007A() {
        return Build.VERSION.SDK_INT >= 31;
    }

    /* JADX INFO: renamed from: B */
    public final boolean m1008B() {
        return Build.VERSION.SDK_INT >= 33;
    }

    /* JADX INFO: renamed from: C */
    public final boolean m1009C() {
        return Build.VERSION.SDK_INT >= 34;
    }

    /* JADX INFO: renamed from: D */
    public final boolean m1010D() {
        return Build.VERSION.SDK_INT >= 35;
    }

    /* JADX INFO: renamed from: E */
    public final boolean m1011E() {
        return true;
    }

    /* JADX INFO: renamed from: F */
    public final boolean m1012F() {
        return true;
    }

    /* JADX INFO: renamed from: H */
    public final boolean m1013H() {
        return true;
    }

    /* JADX INFO: renamed from: J */
    public final boolean m1014J() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* JADX INFO: renamed from: a */
    public final int m1015a(Context context, boolean z) {
        if (context == null || z) {
            return 0;
        }
        int iIntValue = ((Number) f967f.getValue(this, f963b[1])).intValue();
        int iM1030m = m1030m();
        if (iM1030m > 0) {
            return (iIntValue * 100) / iM1030m;
        }
        Intrinsics.checkNotNullExpressionValue("E3", "getSimpleName(...)");
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public final Pair<String, String> m1019b() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        return Settings.Global.getInt(contextM1254d.getContentResolver(), "airplane_mode_on", 0) != 0 ? new Pair<>("d-airplane-m", AppEventsConstants.EVENT_PARAM_VALUE_YES) : new Pair<>("d-airplane-m", AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    /* JADX INFO: renamed from: c */
    public final Pair<String, String> m1020c() {
        return f969h;
    }

    /* JADX INFO: renamed from: d */
    public final Pair<String, String> m1021d() {
        if (Build.VERSION.SDK_INT >= 26) {
            m998M();
        } else {
            m996K();
        }
        if (f964c != -1) {
            return new Pair<>("d-av-disk", String.valueOf(f964c));
        }
        return null;
    }

    /* JADX INFO: renamed from: e */
    public final long m1022e() {
        return f964c;
    }

    /* JADX INFO: renamed from: f */
    public final Pair<String, String> m1023f() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        Intent intentM2603a = AbstractC3429y2.m2603a(contextM1254d, (BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        return new Pair<>("d-bat-chrg", (intentM2603a != null ? intentM2603a.getIntExtra("status", -1) : -1) == 2 ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    /* JADX INFO: renamed from: g */
    public final Pair<String, String> m1024g() {
        Context contextM1254d = C2849Kb.m1254d();
        Integer numValueOf = null;
        if (contextM1254d == null) {
            return null;
        }
        if (AbstractC3429y2.m2603a(contextM1254d, (BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED")) != null) {
            numValueOf = Integer.valueOf((int) ((r0.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) * 100) / r0.getIntExtra(CommonCssConstants.SCALE, -1)));
        }
        return new Pair<>("d-bat-lev", "" + numValueOf);
    }

    /* JADX INFO: renamed from: h */
    public final Pair<String, String> m1025h() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        Object systemService = contextM1254d.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isPowerSaveMode() ? new Pair<>("d-bat-sav", AppEventsConstants.EVENT_PARAM_VALUE_YES) : new Pair<>("d-bat-sav", AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    /* JADX INFO: renamed from: i */
    public final Pair<String, String> m1026i() {
        String str;
        int i = Resources.getSystem().getConfiguration().uiMode & 48;
        if (i == 16) {
            str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        } else {
            if (i != 32) {
                return null;
            }
            str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        }
        return new Pair<>("d-drk-m", str);
    }

    /* JADX INFO: renamed from: j */
    public final Pair<String, String> m1027j() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        Object systemService = contextM1254d.getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        try {
            int currentInterruptionFilter = ((NotificationManager) systemService).getCurrentInterruptionFilter();
            return new Pair<>("d-dnd", (currentInterruptionFilter == 2 || currentInterruptionFilter == 3 || currentInterruptionFilter == 4) ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: k */
    public final Pair<String, String> m1028k() {
        ArrayList arrayList = new ArrayList();
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        Object systemService = contextM1254d.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        List<InputMethodInfo> enabledInputMethodList = inputMethodManager.getEnabledInputMethodList();
        Intrinsics.checkNotNullExpressionValue(enabledInputMethodList, "getEnabledInputMethodList(...)");
        Iterator<InputMethodInfo> it = enabledInputMethodList.iterator();
        while (it.hasNext()) {
            List<InputMethodSubtype> enabledInputMethodSubtypeList = inputMethodManager.getEnabledInputMethodSubtypeList(it.next(), true);
            Intrinsics.checkNotNullExpressionValue(enabledInputMethodSubtypeList, "getEnabledInputMethodSubtypeList(...)");
            for (InputMethodSubtype inputMethodSubtype : enabledInputMethodSubtypeList) {
                if (Intrinsics.areEqual(inputMethodSubtype.getMode(), "keyboard")) {
                    String languageTag = inputMethodSubtype.getLanguageTag();
                    Intrinsics.checkNotNullExpressionValue(languageTag, "getLanguageTag(...)");
                    String language = languageTag.length() > 0 ? Locale.forLanguageTag(inputMethodSubtype.getLanguageTag()).getLanguage() : new Locale(inputMethodSubtype.getLocale()).getLanguage();
                    Intrinsics.checkNotNull(language);
                    if (language.length() > 0) {
                        arrayList.add(language);
                    }
                }
            }
        }
        String string = new JSONArray((Collection) arrayList).toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return new Pair<>("d-key-lang", string);
    }

    /* JADX INFO: renamed from: l */
    public final String m1029l() {
        return f970i;
    }

    /* JADX INFO: renamed from: m */
    public final int m1030m() {
        return ((Number) f966e.getValue(this, f963b[0])).intValue();
    }

    /* JADX INFO: renamed from: n */
    public final String m1031n() {
        return f971j;
    }

    /* JADX INFO: renamed from: p */
    public final int m1032p() {
        String strM1004o = m1004o();
        if (StringsKt.startsWith$default(strM1004o, AppEventsConstants.EVENT_PARAM_VALUE_NO, false, 2, (Object) null)) {
            return 0;
        }
        return StringsKt.startsWith$default(strM1004o, AppEventsConstants.EVENT_PARAM_VALUE_YES, false, 2, (Object) null) ? 1 : 2;
    }

    /* JADX INFO: renamed from: s */
    public final String m1033s() {
        return f968g;
    }

    /* JADX INFO: renamed from: t */
    public final Pair<String, String> m1034t() {
        if (Build.VERSION.SDK_INT >= 26) {
            m1002Q();
        } else {
            m1000O();
        }
        String str = f965d;
        if (str != null) {
            return new Pair<>("d-tot-disk", str);
        }
        return null;
    }

    /* JADX INFO: renamed from: u */
    public final Pair<String, String> m1035u() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        Intent intentM2603a = AbstractC3429y2.m2603a(contextM1254d, (BroadcastReceiver) null, new IntentFilter("android.intent.action.HEADSET_PLUG"));
        return (intentM2603a == null || intentM2603a.getIntExtra("state", 0) != 1) ? new Pair<>("d-w-h", AppEventsConstants.EVENT_PARAM_VALUE_NO) : new Pair<>("d-w-h", AppEventsConstants.EVENT_PARAM_VALUE_YES);
    }

    /* JADX INFO: renamed from: v */
    public final void m1036v() {
        m1021d();
        m1034t();
        m1030m();
    }

    /* JADX INFO: renamed from: w */
    public final boolean m1037w() {
        return Build.VERSION.SDK_INT >= 27;
    }

    /* JADX INFO: renamed from: x */
    public final boolean m1038x() {
        return Build.VERSION.SDK_INT >= 28;
    }

    /* JADX INFO: renamed from: y */
    public final boolean m1039y() {
        return Build.VERSION.SDK_INT >= 29;
    }

    /* JADX INFO: renamed from: z */
    public final boolean m1040z() {
        return Build.VERSION.SDK_INT >= 30;
    }

    /* JADX INFO: renamed from: a */
    public final String m1017a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("phone");
        TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
        String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
        return networkOperatorName == null ? "" : networkOperatorName;
    }

    /* JADX INFO: renamed from: a */
    public final Map<String, String> m1018a(boolean z) {
        HashMap map = new HashMap();
        try {
            map.put("os-v", f968g);
            String BRAND = Build.BRAND;
            Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
            map.put("d-brand-name", BRAND);
            map.put("d-manufacturer-name", f970i);
            map.put("d-model-name", f971j);
            map.put("d-nettype-raw", m1004o());
            String string = Locale.getDefault().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            map.put("d-localization", string);
            String language = Locale.getDefault().getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
            map.put("d-language", language);
            map.put("d-media-volume", String.valueOf(m1015a(C2849Kb.m1254d(), z)));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("E3", "getSimpleName(...)");
        }
        return map;
    }

    /* JADX INFO: renamed from: a */
    public final C2706B3 m1016a() {
        Runtime runtime = Runtime.getRuntime();
        long jMaxMemory = runtime.maxMemory();
        long jFreeMemory = runtime.freeMemory();
        return new C2706B3(jMaxMemory, jFreeMemory, jMaxMemory - jFreeMemory);
    }
}
