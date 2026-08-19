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

/* JADX INFO: renamed from: com.inmobi.media.cc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0259cc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f324a = new ConcurrentHashMap();
    public static C0243bc b;
    public static boolean c;

    public static void a() {
        Intrinsics.checkNotNullExpressionValue("cc", "TAG");
        b("android.intent.action.ACTION_SHUTDOWN");
        b("android.intent.action.REBOOT");
        E3 e3 = E3.f104a;
        if (e3.H()) {
            b("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        b("android.intent.action.USER_PRESENT");
        if (e3.x()) {
            b("SYSTEM_CONNECTIVITY_CHANGE");
        } else {
            b("android.net.conn.CONNECTIVITY_CHANGE");
        }
        f324a.clear();
    }

    public static void b() {
        Intrinsics.checkNotNullExpressionValue("cc", "TAG");
        a("android.intent.action.ACTION_SHUTDOWN");
        a("android.intent.action.REBOOT");
        E3 e3 = E3.f104a;
        if (e3.H()) {
            a("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        a("android.intent.action.USER_PRESENT");
        if (e3.x()) {
            a("SYSTEM_CONNECTIVITY_CHANGE");
        } else {
            a("android.net.conn.CONNECTIVITY_CHANGE");
        }
    }

    public static void b(String str) {
        Context contextD = Kb.d();
        if (contextD != null) {
            if (E3.f104a.x() && Intrinsics.areEqual("SYSTEM_CONNECTIVITY_CHANGE", str) && b != null) {
                Object systemService = contextD.getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                if (connectivityManager != null) {
                    C0243bc c0243bc = b;
                    Intrinsics.checkNotNull(c0243bc);
                    connectivityManager.unregisterNetworkCallback(c0243bc);
                    b = null;
                    return;
                }
                return;
            }
            ConcurrentHashMap concurrentHashMap = f324a;
            if (concurrentHashMap.get(str) != null) {
                contextD.unregisterReceiver((BroadcastReceiver) concurrentHashMap.get(str));
                concurrentHashMap.remove(str);
            }
        }
    }

    public static void a(String str) {
        Context contextD = Kb.d();
        if (contextD != null) {
            if (E3.f104a.x() && Intrinsics.areEqual("SYSTEM_CONNECTIVITY_CHANGE", str)) {
                Object systemService = contextD.getSystemService("connectivity");
                ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
                if (connectivityManager != null) {
                    C0243bc c0243bc = new C0243bc();
                    b = c0243bc;
                    connectivityManager.registerDefaultNetworkCallback(c0243bc);
                    return;
                }
                return;
            }
            ConcurrentHashMap concurrentHashMap = f324a;
            if (concurrentHashMap.get(str) == null) {
                C0228ac c0228ac = new C0228ac();
                concurrentHashMap.put(str, c0228ac);
                AbstractC0576y2.a(contextD, c0228ac, new IntentFilter(str));
            }
        }
    }

    public static final void a(Context context, Intent intent) {
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
                    if (activeNetworkInfo == null || activeNetworkInfo.isConnected() != c) {
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            zIsDeviceIdleMode = true;
                        }
                        c = zIsDeviceIdleMode;
                        Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                        Kb.f().b(new C0233b2(10, 4, c ? "available" : "lost"));
                        return;
                    }
                    return;
                }
                return;
            }
            if (StringsKt.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED", intent.getAction(), true)) {
                Object systemService2 = context.getSystemService("power");
                PowerManager powerManager = systemService2 instanceof PowerManager ? (PowerManager) systemService2 : null;
                if (powerManager != null && E3.f104a.H()) {
                    zIsDeviceIdleMode = powerManager.isDeviceIdleMode();
                }
                if (zIsDeviceIdleMode == c || !E3.f104a.H()) {
                    return;
                }
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                Kb.f().b(new C0233b2(11, 4, String.valueOf(zIsDeviceIdleMode)));
                return;
            }
            if (Intrinsics.areEqual("android.intent.action.USER_PRESENT", intent.getAction())) {
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                Kb.f().b(new C0233b2(100, 6, (String) null));
                return;
            }
            if (Intrinsics.areEqual("android.intent.action.ACTION_SHUTDOWN", intent.getAction())) {
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                Kb.f().b(new C0233b2(1, 6, (String) null));
                Iterator it = f324a.entrySet().iterator();
                while (it.hasNext()) {
                    b((String) ((Map.Entry) it.next()).getKey());
                }
                f324a.clear();
                b = null;
                return;
            }
            if (Intrinsics.areEqual("android.intent.action.REBOOT", intent.getAction())) {
                Intrinsics.checkNotNullExpressionValue("cc", "TAG");
                Kb.f().b(new C0233b2(2, 6, (String) null));
                Iterator it2 = f324a.entrySet().iterator();
                while (it2.hasNext()) {
                    b((String) ((Map.Entry) it2.next()).getKey());
                }
                f324a.clear();
                b = null;
                return;
            }
            Intrinsics.checkNotNullExpressionValue("cc", "TAG");
            Kb.f().b(new C0233b2(99, 4, intent.getAction()));
        } catch (Exception unused) {
        }
    }
}
