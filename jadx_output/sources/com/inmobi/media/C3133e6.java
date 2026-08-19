package com.inmobi.media;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3133e6 {

    /* JADX INFO: renamed from: b */
    public static final ConcurrentHashMap f2044b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a */
    public final SharedPreferences f2045a;

    public C3133e6(Context context, String str) {
        this.f2045a = context.getSharedPreferences(str, 0);
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final C3133e6 m2097a(Context context, String str) {
        return AbstractC3118d6.m2058a(context, str);
    }

    /* JADX INFO: renamed from: b */
    public final void m2106b() {
        SharedPreferences.Editor editorEdit = this.f2045a.edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2105a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!this.f2045a.contains(key)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = this.f2045a.edit();
        editorEdit.remove(key);
        editorEdit.apply();
        return true;
    }

    /* JADX INFO: renamed from: a */
    public static void m2101a(C3133e6 c3133e6, String key, String str, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        c3133e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = c3133e6.f2045a.edit();
        editorEdit.putString(key, str);
        if (z) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m2099a(C3133e6 c3133e6, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        c3133e6.m2103a(str, i, z);
    }

    /* JADX INFO: renamed from: a */
    public final void m2103a(String key, int i, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = this.f2045a.edit();
        editorEdit.putInt(key, i);
        if (z) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m2100a(C3133e6 c3133e6, String str, long j, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        c3133e6.m2104a(str, j, z);
    }

    /* JADX INFO: renamed from: a */
    public final void m2104a(String key, long j, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = this.f2045a.edit();
        editorEdit.putLong(key, j);
        if (z) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2102a(C3133e6 c3133e6, String key, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = false;
        }
        c3133e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = c3133e6.f2045a.edit();
        editorEdit.putBoolean(key, z);
        if (z2) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }
}
