package com.razorpay;

import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public final class Logger {
    private static final String l$1_I$l$ = "com.razorpay.checkout";

    /* JADX INFO: renamed from: i */
    static void m2694i(String str) {
        Log.i(l$1_I$l$, str);
    }

    /* JADX INFO: renamed from: i */
    static void m2695i(String str, Throwable th) {
        Log.e(l$1_I$l$, str, th);
    }

    /* JADX INFO: renamed from: v */
    static void m2696v(String str) {
        Log.v(l$1_I$l$, str);
    }

    /* JADX INFO: renamed from: v */
    static void m2697v(String str, Throwable th) {
        Log.v(l$1_I$l$, str, th);
    }

    /* JADX INFO: renamed from: d */
    static void m2690d(String str) {
        if (ConfigDroid.DEBUG.booleanValue()) {
            Log.d(l$1_I$l$, str);
        }
    }

    /* JADX INFO: renamed from: d */
    static void m2691d(String str, Throwable th) {
        if (ConfigDroid.DEBUG.booleanValue()) {
            Log.d(l$1_I$l$, str, th);
        }
    }

    /* JADX INFO: renamed from: w */
    static void m2698w(String str) {
        Log.w(l$1_I$l$, str);
    }

    /* JADX INFO: renamed from: w */
    static void m2699w(String str, Throwable th) {
        Log.w(l$1_I$l$, str, th);
    }

    /* JADX INFO: renamed from: e */
    static void m2692e(String str) {
        Log.e(l$1_I$l$, str);
    }

    /* JADX INFO: renamed from: e */
    static void m2693e(String str, Throwable th) {
        Log.e(l$1_I$l$, str, th);
    }
}
