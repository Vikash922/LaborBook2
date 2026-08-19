package com.iab.omid.library.inmobi;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class Omid {
    private static C2624b INSTANCE = new C2624b();

    private Omid() {
    }

    public static void activate(Context context) {
        INSTANCE.m562a(context.getApplicationContext());
    }

    public static String getVersion() {
        return INSTANCE.m561a();
    }

    public static boolean isActive() {
        return INSTANCE.m564b();
    }

    public static void updateLastActivity() {
        INSTANCE.m565c();
    }
}
