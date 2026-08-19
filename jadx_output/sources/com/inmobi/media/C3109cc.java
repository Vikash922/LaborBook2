package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.cc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3109cc {

    /* JADX INFO: renamed from: a */
    public static final ConcurrentHashMap f1966a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public static C3094bc f1967b;

    /* JADX INFO: renamed from: c */
    public static boolean f1968c;

    /* JADX INFO: renamed from: a */
    public static void m2053a() {
        Intrinsics.checkNotNullExpressionValue("cc", "TAG");
        m2057b("android.intent.action.ACTION_SHUTDOWN");
        m2057b("android.intent.action.REBOOT");
        C2751E3 c2751e3 = C2751E3.f962a;
        if (c2751e3.m1013H()) {
            m2057b("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        m2057b("android.intent.action.USER_PRESENT");
        if (c2751e3.m1038x()) {
            m2057b("SYSTEM_CONNECTIVITY_CHANGE");
        } else {
            m2057b("android.net.conn.CONNECTIVITY_CHANGE");
        }
        f1966a.clear();
    }

    /* JADX INFO: renamed from: b */
    public static void m2056b() {
        Intrinsics.checkNotNullExpressionValue("cc", "TAG");
        m2055a("android.intent.action.ACTION_SHUTDOWN");
        m2055a("android.intent.action.REBOOT");
        C2751E3 c2751e3 = C2751E3.f962a;
        if (c2751e3.m1013H()) {
            m2055a("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        m2055a("android.intent.action.USER_PRESENT");
        if (c2751e3.m1038x()) {
            m2055a("SYSTEM_CONNECTIVITY_CHANGE");
        } else {
            m2055a("android.net.conn.CONNECTIVITY_CHANGE");
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2057b(String str) {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            if (C2751E3.f962a.m1038x() && Intrinsics.areEqual("SYSTEM_CONNECTIVITY_CHANGE", str) && f1967b != null) {
                Object systemService = contextM1254d.getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                if (connectivityManager != null) {
                    C3094bc c3094bc = f1967b;
                    Intrinsics.checkNotNull(c3094bc);
                    connectivityManager.unregisterNetworkCallback(c3094bc);
                    f1967b = null;
                    return;
                }
                return;
            }
            ConcurrentHashMap concurrentHashMap = f1966a;
            if (concurrentHashMap.get(str) != null) {
                contextM1254d.unregisterReceiver((BroadcastReceiver) concurrentHashMap.get(str));
                concurrentHashMap.remove(str);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2055a(String str) {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            if (C2751E3.f962a.m1038x() && Intrinsics.areEqual("SYSTEM_CONNECTIVITY_CHANGE", str)) {
                Object systemService = contextM1254d.getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                if (connectivityManager != null) {
                    C3094bc c3094bc = new C3094bc();
                    f1967b = c3094bc;
                    connectivityManager.registerDefaultNetworkCallback(c3094bc);
                    return;
                }
                return;
            }
            ConcurrentHashMap concurrentHashMap = f1966a;
            if (concurrentHashMap.get(str) == null) {
                C3079ac c3079ac = new C3079ac();
                concurrentHashMap.put(str, c3079ac);
                AbstractC3429y2.m2603a(contextM1254d, c3079ac, new IntentFilter(str));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2054a(Context context, Intent intent) {
        Intrinsics.checkNotNullExpressionValue("cc", "TAG");
        if (intent.getAction() == null) {
            return;
        }
        try {
            Intrinsics.checkNotNullExpressionValue("cc", "TAG");
            intent.getAction();
            boolean zIsDeviceIdleMode = false;
            if (Intrinsics.areEqual("android.net.conn.CONNECTIVITY_CHANGE", intent.getAction())) {
                Object systemService = context.getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                if (connectivityManager != null) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo == null || activeNetworkInfo.isConnected() != f1968c) {
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            zIsDeviceIdleMode = true;
                        }
                        f1968c = zIsDeviceIdleMode;
                        Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                        C2849Kb.m1256f().m2216b(new C3084b2(10, 4, f1968c ? "available" : "lost"));
                        return;
                    }
                    return;
                }
                return;
            }
            if (StringsKt.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED", intent.getAction(), true)) {
                Object systemService2 = context.getSystemService("power");
                PowerManager powerManager = systemService2 instanceof PowerManager ? (PowerManager) systemService2 : null;
                if (powerManager != null && C2751E3.f962a.m1013H()) {
                    zIsDeviceIdleMode = powerManager.isDeviceIdleMode();
                }
                if (zIsDeviceIdleMode == f1968c || !C2751E3.f962a.m1013H()) {
                    return;
                }
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                C2849Kb.m1256f().m2216b(new C3084b2(11, 4, String.valueOf(zIsDeviceIdleMode)));
                return;
            }
            if (Intrinsics.areEqual("android.intent.action.USER_PRESENT", intent.getAction())) {
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                C2849Kb.m1256f().m2216b(new C3084b2(100, 6, (String) null));
                return;
            }
            if (Intrinsics.areEqual("android.intent.action.ACTION_SHUTDOWN", intent.getAction())) {
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                C2849Kb.m1256f().m2216b(new C3084b2(1, 6, (String) null));
                Iterator it = f1966a.entrySet().iterator();
                while (it.hasNext()) {
                    m2057b((String) ((Map.Entry) it.next()).getKey());
                }
                f1966a.clear();
                f1967b = null;
                return;
            }
            if (Intrinsics.areEqual("android.intent.action.REBOOT", intent.getAction())) {
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                C2849Kb.m1256f().m2216b(new C3084b2(2, 6, (String) null));
                Iterator it2 = f1966a.entrySet().iterator();
                while (it2.hasNext()) {
                    m2057b((String) ((Map.Entry) it2.next()).getKey());
                }
                f1966a.clear();
                f1967b = null;
                return;
            }
            Intrinsics.checkNotNullExpressionValue("cc", "TAG");
            C2849Kb.m1256f().m2216b(new C3084b2(99, 4, intent.getAction()));
        } catch (Exception unused) {
        }
    }
}
