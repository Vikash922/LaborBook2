package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f1 */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC3143f1 extends Handler {

    /* JADX INFO: renamed from: a */
    public boolean f2058a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3143f1(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        this.f2058a = true;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (C3188i1.f2167c) {
            return;
        }
        int i = msg.what;
        if (i == 1001 && this.f2058a) {
            this.f2058a = false;
            C3188i1.m2235a(C3188i1.f2165a, false);
            Intrinsics.checkNotNullExpressionValue(C3188i1.m2238b(), "access$getTAG$p(...)");
        } else {
            if (i != 1002 || this.f2058a) {
                return;
            }
            this.f2058a = true;
            C3188i1.m2235a(C3188i1.f2165a, true);
            Intrinsics.checkNotNullExpressionValue(C3188i1.m2238b(), "access$getTAG$p(...)");
        }
    }
}
