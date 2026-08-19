package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.ads.InMobiBanner;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.N1 */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC2884N1 extends Handler {

    /* JADX INFO: renamed from: a */
    public final InMobiBanner f1290a;

    /* JADX WARN: Illegal instructions before constructor call */
    public HandlerC2884N1(InMobiBanner mInmobiBanner) {
        Intrinsics.checkNotNullParameter(mInmobiBanner, "mInmobiBanner");
        Looper looper = Looper.getMainLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getMainLooper(...)");
        Intrinsics.checkNotNullParameter(mInmobiBanner, "mInmobiBanner");
        Intrinsics.checkNotNullParameter(looper, "looper");
        super(looper);
        this.f1290a = mInmobiBanner;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.what == 1) {
            this.f1290a.refreshBanner$media_release();
        } else {
            Intrinsics.checkNotNullExpressionValue("N1", "TAG");
        }
    }
}
