package com.inmobi.media;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Lb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2864Lb {

    /* JADX INFO: renamed from: a */
    public static final C2864Lb f1237a = new C2864Lb();

    /* JADX INFO: renamed from: b */
    public static String f1238b = null;

    /* JADX INFO: renamed from: c */
    public static String f1239c = "dir";

    /* JADX INFO: renamed from: a */
    public static final void m1314a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f1239c = str;
    }

    @JvmStatic
    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m1315b() {
    }

    @JvmStatic
    /* JADX INFO: renamed from: c */
    public static final String m1317c() {
        return "10.8.3";
    }

    /* JADX INFO: renamed from: d */
    public static final String m1318d() {
        return f1239c;
    }

    @JvmStatic
    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m1319e() {
    }

    /* JADX INFO: renamed from: f */
    public static final String m1320f() {
        return f1238b;
    }

    @JvmStatic
    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m1321g() {
    }

    /* JADX INFO: renamed from: b */
    public static final void m1316b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f1238b = str;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m1325b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(context, "sdk_version_store");
        Intrinsics.checkNotNullParameter("db_deletion_failed", "key");
        return c3133e6M2058a.f2045a.getBoolean("db_deletion_failed", false);
    }

    /* JADX INFO: renamed from: a */
    public static final String m1313a() {
        if (TextUtils.isEmpty("")) {
            return "pr-SAND-10.8.3-20250505";
        }
        return "pr-SAND-10.8.3-20250505-";
    }

    /* JADX INFO: renamed from: a */
    public final String m1322a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(context, "sdk_version_store");
        Intrinsics.checkNotNullParameter("sdk_version", "key");
        return c3133e6M2058a.f2045a.getString("sdk_version", null);
    }

    /* JADX INFO: renamed from: a */
    public final void m1323a(Context context, String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6.m2101a(AbstractC3118d6.m2058a(context, "sdk_version_store"), "sdk_version", str, false, 4, (Object) null);
    }

    /* JADX INFO: renamed from: a */
    public final void m1324a(Context context, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6.m2102a(AbstractC3118d6.m2058a(context, "sdk_version_store"), "db_deletion_failed", z, false, 4, (Object) null);
    }
}
