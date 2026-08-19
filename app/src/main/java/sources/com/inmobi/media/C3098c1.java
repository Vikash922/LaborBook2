package com.inmobi.media;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.c1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3098c1 {

    /* JADX INFO: renamed from: a */
    public static final String f1905a;

    /* JADX INFO: renamed from: b */
    public static final String f1906b;

    /* JADX INFO: renamed from: c */
    public static final String f1907c;

    /* JADX INFO: renamed from: d */
    public static final String f1908d;

    /* JADX INFO: renamed from: e */
    public static final HashMap f1909e = new HashMap();

    /* JADX INFO: renamed from: f */
    public static final byte f1910f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    static {
        PackageManager packageManager;
        byte b = 2;
        f1910f = (byte) 2;
        Context contextM1254d = C2849Kb.m1254d();
        String strValueOf = null;
        if (contextM1254d != null) {
            try {
                packageManager = contextM1254d.getPackageManager();
            } catch (Exception unused) {
            }
        } else {
            packageManager = null;
        }
        ApplicationInfo applicationInfo = packageManager != null ? packageManager.getApplicationInfo(contextM1254d.getPackageName(), 128) : null;
        if (applicationInfo != null) {
            String str = applicationInfo.packageName;
            f1905a = str;
            f1908d = applicationInfo.loadLabel(packageManager).toString();
            Intrinsics.checkNotNull(str);
            f1906b = packageManager.getInstallerPackageName(str);
        }
        PackageInfo packageInfo = packageManager != null ? packageManager.getPackageInfo(contextM1254d.getPackageName(), 128) : null;
        if (packageInfo != null && ((strValueOf = packageInfo.versionName) == null || strValueOf.length() == 0)) {
            strValueOf = Build.VERSION.SDK_INT < 28 ? String.valueOf(packageInfo.versionCode) : String.valueOf(packageInfo.getLongVersionCode());
        }
        if (AbstractC3429y2.m2607a(strValueOf)) {
            f1907c = strValueOf;
        }
        try {
            b = C2751E3.f962a.m1013H() ? !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : 0;
        } catch (Error | Exception unused2) {
        }
        f1910f = b;
        String str2 = f1905a;
        if (str2 != null) {
            f1909e.put("u-appbid", str2);
        }
        String str3 = f1908d;
        if (str3 != null) {
            f1909e.put("u-appdnm", str3);
        }
        String str4 = f1907c;
        if (str4 != null) {
            f1909e.put("u-appver", str4);
        }
        f1909e.put("u-appsecure", String.valueOf((int) b));
    }
}
