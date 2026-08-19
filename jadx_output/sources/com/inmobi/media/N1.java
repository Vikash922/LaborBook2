package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.ads.InMobiBanner;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class N1 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InMobiBanner f187a;

    /* JADX WARN: Illegal instructions before constructor call */
    public N1(InMobiBanner mInmobiBanner) {
        Intrinsics.checkNotNullParameter(mInmobiBanner, "mInmobiBanner");
        Looper looper = Looper.getMainLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getMainLooper(...)");
        Intrinsics.checkNotNullParameter(mInmobiBanner, "mInmobiBanner");
        Intrinsics.checkNotNullParameter(looper, "looper");
        super(looper);
        this.f187a = mInmobiBanner;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.what == 1) {
            this.f187a.refreshBanner$media_release();
        } else {
            Intrinsics.checkNotNullExpressionValue("N1", "TAG");
        }
    }
}
