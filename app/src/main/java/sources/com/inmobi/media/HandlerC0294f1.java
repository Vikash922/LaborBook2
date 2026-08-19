package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC0294f1 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f346a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0294f1(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        this.f346a = true;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (C0342i1.c) {
            return;
        }
        int i = msg.what;
        if (i == 1001 && this.f346a) {
            this.f346a = false;
            C0342i1.a(C0342i1.f381a, false);
            Intrinsics.checkNotNullExpressionValue(C0342i1.b(), "access$getTAG$p(...)");
        } else {
            if (i != 1002 || this.f346a) {
                return;
            }
            this.f346a = true;
            C0342i1.a(C0342i1.f381a, true);
            Intrinsics.checkNotNullExpressionValue(C0342i1.b(), "access$getTAG$p(...)");
        }
    }
}
