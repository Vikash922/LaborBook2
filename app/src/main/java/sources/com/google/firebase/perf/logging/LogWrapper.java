package com.google.firebase.perf.logging;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class LogWrapper {
    private static final String LOG_TAG = "FirebasePerformance";
    private static LogWrapper instance;

    public static synchronized LogWrapper getInstance() {
        if (instance == null) {
            instance = new LogWrapper();
        }
        return instance;
    }

    /* JADX INFO: renamed from: d */
    void m500d(String str) {
        Log.d(LOG_TAG, str);
    }

    /* JADX INFO: renamed from: v */
    void m503v(String str) {
        Log.v(LOG_TAG, str);
    }

    /* JADX INFO: renamed from: i */
    void m502i(String str) {
        Log.i(LOG_TAG, str);
    }

    /* JADX INFO: renamed from: w */
    void m504w(String str) {
        Log.w(LOG_TAG, str);
    }

    /* JADX INFO: renamed from: e */
    void m501e(String str) {
        Log.e(LOG_TAG, str);
    }

    private LogWrapper() {
    }
}
