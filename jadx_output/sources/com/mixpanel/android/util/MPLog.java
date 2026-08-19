package com.mixpanel.android.util;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class MPLog {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int NONE = Integer.MAX_VALUE;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int sMinLevel = 5;

    public static void setLevel(int i) {
        sMinLevel = i;
    }

    public static int getLevel() {
        return sMinLevel;
    }

    /* JADX INFO: renamed from: v */
    public static void m2686v(String str, String str2) {
        if (shouldLog(2)) {
            Log.v(str, str2);
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m2687v(String str, String str2, Throwable th) {
        if (shouldLog(2)) {
            Log.v(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m2680d(String str, String str2) {
        if (shouldLog(3)) {
            Log.d(str, str2);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m2681d(String str, String str2, Throwable th) {
        if (shouldLog(3)) {
            Log.d(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m2684i(String str, String str2) {
        if (shouldLog(4)) {
            Log.i(str, str2);
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m2685i(String str, String str2, Throwable th) {
        if (shouldLog(4)) {
            Log.i(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m2688w(String str, String str2) {
        if (shouldLog(5)) {
            Log.w(str, str2);
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m2689w(String str, String str2, Throwable th) {
        if (shouldLog(5)) {
            Log.w(str, str2, th);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m2682e(String str, String str2) {
        if (shouldLog(6)) {
            Log.e(str, str2);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m2683e(String str, String str2, Throwable th) {
        if (shouldLog(6)) {
            Log.e(str, str2, th);
        }
    }

    private static boolean shouldLog(int i) {
        return sMinLevel <= i;
    }
}
