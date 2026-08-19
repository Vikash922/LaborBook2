package com.razorpay;

import android.content.Context;
import java.lang.Thread;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
class RazorpayExceptionHandler implements Thread.UncaughtExceptionHandler {
    Context context;
    Thread.UncaughtExceptionHandler existingHandler;

    RazorpayExceptionHandler(Context context, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.existingHandler = uncaughtExceptionHandler;
        this.context = context;
    }

    static void register(Context context) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler instanceof RazorpayExceptionHandler) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new RazorpayExceptionHandler(context, defaultUncaughtExceptionHandler));
    }

    static void unregister() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler instanceof RazorpayExceptionHandler) {
            Thread.setDefaultUncaughtExceptionHandler(((RazorpayExceptionHandler) defaultUncaughtExceptionHandler).existingHandler);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(final Thread thread, final Throwable th) {
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.razorpay.RazorpayExceptionHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.l$1_I$l$(th, thread);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l$1_I$l$(Throwable th, Thread thread) {
        AnalyticsUtil.reportUncaughtException(th, thread, this.context.getApplicationContext());
        Lumberjack.saveEventsToPreferences(this.context.getApplicationContext());
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.existingHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
