package com.inmobi.media;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0284e6 {
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f340a;

    public C0284e6(Context context, String str) {
        this.f340a = context.getSharedPreferences(str, 0);
    }

    @JvmStatic
    public static final C0284e6 a(Context context, String str) {
        return AbstractC0268d6.a(context, str);
    }

    public final void b() {
        SharedPreferences.Editor editorEdit = this.f340a.edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    public final boolean a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!this.f340a.contains(key)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = this.f340a.edit();
        editorEdit.remove(key);
        editorEdit.apply();
        return true;
    }

    public static void a(C0284e6 c0284e6, String key, String str, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        c0284e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = c0284e6.f340a.edit();
        editorEdit.putString(key, str);
        if (z) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    public static /* synthetic */ void a(C0284e6 c0284e6, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        c0284e6.a(str, i, z);
    }

    public final void a(String key, int i, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = this.f340a.edit();
        editorEdit.putInt(key, i);
        if (z) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    public static /* synthetic */ void a(C0284e6 c0284e6, String str, long j, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        c0284e6.a(str, j, z);
    }

    public final void a(String key, long j, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = this.f340a.edit();
        editorEdit.putLong(key, j);
        if (z) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    public static void a(C0284e6 c0284e6, String key, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = false;
        }
        c0284e6.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor editorEdit = c0284e6.f340a.edit();
        editorEdit.putBoolean(key, z);
        if (z2) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }
}
