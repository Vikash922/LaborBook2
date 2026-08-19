package com.inmobi.media;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Lb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lb f171a = new Lb();
    public static String b = null;
    public static String c = "dir";

    public static final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c = str;
    }

    @JvmStatic
    public static /* synthetic */ void b() {
    }

    @JvmStatic
    public static final String c() {
        return "10.8.3";
    }

    public static final String d() {
        return c;
    }

    @JvmStatic
    public static /* synthetic */ void e() {
    }

    public static final String f() {
        return b;
    }

    @JvmStatic
    public static /* synthetic */ void g() {
    }

    public static final void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b = str;
    }

    public final boolean b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6 c0284e6A = AbstractC0268d6.a(context, "sdk_version_store");
        Intrinsics.checkNotNullParameter("db_deletion_failed", "key");
        return c0284e6A.f340a.getBoolean("db_deletion_failed", false);
    }

    public static final String a() {
        if (TextUtils.isEmpty("")) {
            return "pr-SAND-10.8.3-20250505";
        }
        return "pr-SAND-10.8.3-20250505-";
    }

    public final String a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6 c0284e6A = AbstractC0268d6.a(context, "sdk_version_store");
        Intrinsics.checkNotNullParameter("sdk_version", "key");
        return c0284e6A.f340a.getString("sdk_version", null);
    }

    public final void a(Context context, String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6.a(AbstractC0268d6.a(context, "sdk_version_store"), "sdk_version", str, false, 4, (Object) null);
    }

    public final void a(Context context, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6.a(AbstractC0268d6.a(context, "sdk_version_store"), "db_deletion_failed", z, false, 4, (Object) null);
    }
}
