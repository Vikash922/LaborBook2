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

/* JADX INFO: loaded from: classes6.dex */
public final class E3 {
    public static String d;
    public static final C0533v1 e;
    public static final C0533v1 f;
    public static final String g;
    public static final Pair h;
    public static final String i;
    public static final String j;
    public static final /* synthetic */ KProperty[] b = {Reflection.property1(new PropertyReference1Impl(E3.class, "maxDeviceVolume", "getMaxDeviceVolume()I", 0)), Reflection.property1(new PropertyReference1Impl(E3.class, "curDeviceVolume", "getCurDeviceVolume()I", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final E3 f104a = new E3();
    public static long c = -1;

    static {
        int i2 = 15;
        e = new C0533v1((Integer) i2, (Function0) D3.f95a, false, 12);
        f = new C0533v1((Integer) i2, (Function0) C3.f88a, true, 8);
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        g = RELEASE;
        h = new Pair("d-api-lev", "" + Build.VERSION.SDK_INT);
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        i = MANUFACTURER;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        j = MODEL;
    }

    @JvmStatic
    public static final boolean G() {
        return true;
    }

    @JvmStatic
    public static final boolean I() {
        return true;
    }

    public static void K() {
        Kb.a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                E3.L();
            }
        });
    }

    public static final void L() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            long availableBytes = statFs.getAvailableBytes();
            long availableBytes2 = statFs2.getAvailableBytes() + availableBytes;
            if (Environment.getExternalStorageState().equals("mounted")) {
                availableBytes = availableBytes2;
            }
            c = availableBytes / ((long) 1048576);
        } catch (Exception e2) {
            C0264d2 event = new C0264d2(e2);
            C0551w5 c0551w5 = C0551w5.f513a;
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
    }

    public static void M() {
        Kb.a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                E3.N();
            }
        });
    }

    public static final void N() {
        UUID uuidFromString;
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        Object systemService = contextD.getSystemService("storagestats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
        StorageStatsManager storageStatsManager = (StorageStatsManager) systemService;
        Object systemService2 = contextD.getSystemService("storage");
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
                } catch (Exception e2) {
                    C0264d2 event = new C0264d2(e2);
                    C0551w5 c0551w5 = C0551w5.f513a;
                    Intrinsics.checkNotNullParameter(event, "event");
                    C0551w5.d.a(event);
                }
            }
        }
        c = freeBytes / ((long) 1048576);
    }

    public static void O() {
        Kb.a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                E3.P();
            }
        });
    }

    public static final void P() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            float blockCountLong = statFs.getBlockCountLong() * statFs.getBlockSizeLong();
            float blockCountLong2 = (statFs2.getBlockCountLong() * statFs2.getBlockSizeLong()) + blockCountLong;
            if (Environment.getExternalStorageState().equals("mounted")) {
                blockCountLong = blockCountLong2;
            }
            d = "" + (blockCountLong / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        } catch (Exception e2) {
            C0264d2 event = new C0264d2(e2);
            C0551w5 c0551w5 = C0551w5.f513a;
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
    }

    public static void Q() {
        Kb.a(new Runnable() { // from class: com.inmobi.media.E3$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                E3.R();
            }
        });
    }

    public static final void R() {
        UUID uuidFromString;
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        Object systemService = contextD.getSystemService("storagestats");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.usage.StorageStatsManager");
        StorageStatsManager storageStatsManager = (StorageStatsManager) systemService;
        Object systemService2 = contextD.getSystemService("storage");
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
                } catch (Exception e2) {
                    C0264d2 event = new C0264d2(e2);
                    C0551w5 c0551w5 = C0551w5.f513a;
                    Intrinsics.checkNotNullParameter(event, "event");
                    C0551w5.d.a(event);
                }
            }
        }
        d = "" + (totalBytes / ((long) 1048576));
    }

    public static String o() {
        String string;
        Context contextD = Kb.d();
        if (contextD == null || !P9.a(contextD, "android.permission.ACCESS_NETWORK_STATE")) {
            return "";
        }
        Object systemService = contextD.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        if (connectivityManager == null) {
            return "";
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception e2) {
            Intrinsics.checkNotNullExpressionValue("E3", "getSimpleName(...)");
            e2.toString();
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

    public static final String q() {
        int iP = f104a.p();
        return iP != 0 ? iP != 1 ? "NIL" : "wifi" : TrackingOptions.AMP_TRACKING_OPTION_CARRIER;
    }

    @JvmStatic
    public static /* synthetic */ void r() {
    }

    public final boolean A() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public final boolean B() {
        return Build.VERSION.SDK_INT >= 33;
    }

    public final boolean C() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public final boolean D() {
        return Build.VERSION.SDK_INT >= 35;
    }

    public final boolean E() {
        return true;
    }

    public final boolean F() {
        return true;
    }

    public final boolean H() {
        return true;
    }

    public final boolean J() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public final int a(Context context, boolean z) {
        if (context == null || z) {
            return 0;
        }
        int iIntValue = ((Number) f.getValue(this, b[1])).intValue();
        int iM = m();
        if (iM > 0) {
            return (iIntValue * 100) / iM;
        }
        Intrinsics.checkNotNullExpressionValue("E3", "getSimpleName(...)");
        return 0;
    }

    public final Pair<String, String> b() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        return Settings.Global.getInt(contextD.getContentResolver(), "airplane_mode_on", 0) != 0 ? new Pair<>("d-airplane-m", AppEventsConstants.EVENT_PARAM_VALUE_YES) : new Pair<>("d-airplane-m", AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    public final Pair<String, String> c() {
        return h;
    }

    public final Pair<String, String> d() {
        if (Build.VERSION.SDK_INT >= 26) {
            M();
        } else {
            K();
        }
        if (c != -1) {
            return new Pair<>("d-av-disk", String.valueOf(c));
        }
        return null;
    }

    public final long e() {
        return c;
    }

    public final Pair<String, String> f() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        Intent intentA = AbstractC0576y2.a(contextD, (BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        return new Pair<>("d-bat-chrg", (intentA != null ? intentA.getIntExtra("status", -1) : -1) == 2 ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    public final Pair<String, String> g() {
        Context contextD = Kb.d();
        Integer numValueOf = null;
        if (contextD == null) {
            return null;
        }
        if (AbstractC0576y2.a(contextD, (BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED")) != null) {
            numValueOf = Integer.valueOf((int) ((r0.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) * 100) / r0.getIntExtra(CommonCssConstants.SCALE, -1)));
        }
        return new Pair<>("d-bat-lev", "" + numValueOf);
    }

    public final Pair<String, String> h() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        Object systemService = contextD.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        return ((PowerManager) systemService).isPowerSaveMode() ? new Pair<>("d-bat-sav", AppEventsConstants.EVENT_PARAM_VALUE_YES) : new Pair<>("d-bat-sav", AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    public final Pair<String, String> i() {
        String str;
        int i2 = Resources.getSystem().getConfiguration().uiMode & 48;
        if (i2 == 16) {
            str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        } else {
            if (i2 != 32) {
                return null;
            }
            str = AppEventsConstants.EVENT_PARAM_VALUE_YES;
        }
        return new Pair<>("d-drk-m", str);
    }

    public final Pair<String, String> j() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        Object systemService = contextD.getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        try {
            int currentInterruptionFilter = ((NotificationManager) systemService).getCurrentInterruptionFilter();
            return new Pair<>("d-dnd", (currentInterruptionFilter == 2 || currentInterruptionFilter == 3 || currentInterruptionFilter == 4) ? AppEventsConstants.EVENT_PARAM_VALUE_YES : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        } catch (Exception unused) {
            return null;
        }
    }

    public final Pair<String, String> k() {
        ArrayList arrayList = new ArrayList();
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        Object systemService = contextD.getSystemService("input_method");
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

    public final String l() {
        return i;
    }

    public final int m() {
        return ((Number) e.getValue(this, b[0])).intValue();
    }

    public final String n() {
        return j;
    }

    public final int p() {
        String strO = o();
        if (StringsKt.startsWith$default(strO, AppEventsConstants.EVENT_PARAM_VALUE_NO, false, 2, (Object) null)) {
            return 0;
        }
        return StringsKt.startsWith$default(strO, AppEventsConstants.EVENT_PARAM_VALUE_YES, false, 2, (Object) null) ? 1 : 2;
    }

    public final String s() {
        return g;
    }

    public final Pair<String, String> t() {
        if (Build.VERSION.SDK_INT >= 26) {
            Q();
        } else {
            O();
        }
        String str = d;
        if (str != null) {
            return new Pair<>("d-tot-disk", str);
        }
        return null;
    }

    public final Pair<String, String> u() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        Intent intentA = AbstractC0576y2.a(contextD, (BroadcastReceiver) null, new IntentFilter("android.intent.action.HEADSET_PLUG"));
        return (intentA == null || intentA.getIntExtra("state", 0) != 1) ? new Pair<>("d-w-h", AppEventsConstants.EVENT_PARAM_VALUE_NO) : new Pair<>("d-w-h", AppEventsConstants.EVENT_PARAM_VALUE_YES);
    }

    public final void v() {
        d();
        t();
        m();
    }

    public final boolean w() {
        return Build.VERSION.SDK_INT >= 27;
    }

    public final boolean x() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public final boolean y() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public final boolean z() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public final String a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("phone");
        TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
        String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
        return networkOperatorName == null ? "" : networkOperatorName;
    }

    public final Map<String, String> a(boolean z) {
        HashMap map = new HashMap();
        try {
            map.put("os-v", g);
            String BRAND = Build.BRAND;
            Intrinsics.checkNotNullExpressionValue(BRAND, "BRAND");
            map.put("d-brand-name", BRAND);
            map.put("d-manufacturer-name", i);
            map.put("d-model-name", j);
            map.put("d-nettype-raw", o());
            String string = Locale.getDefault().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            map.put("d-localization", string);
            String language = Locale.getDefault().getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
            map.put("d-language", language);
            map.put("d-media-volume", String.valueOf(a(Kb.d(), z)));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("E3", "getSimpleName(...)");
        }
        return map;
    }

    public final B3 a() {
        Runtime runtime = Runtime.getRuntime();
        long jMaxMemory = runtime.maxMemory();
        long jFreeMemory = runtime.freeMemory();
        return new B3(jMaxMemory, jFreeMemory, jMaxMemory - jFreeMemory);
    }
}
