package com.inmobi.media;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class D8 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f99a;

    public D8(E8 controller) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        this.f99a = new WeakReference(controller);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        L8 l8;
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.what != 2) {
            super.handleMessage(msg);
            return;
        }
        E8 e8 = (E8) this.f99a.get();
        if (e8 != null) {
            L8 l82 = e8.d;
            if (l82 != null) {
                int currentPosition = l82.getCurrentPosition();
                int duration = l82.getDuration();
                if (duration != 0) {
                    e8.h.setProgress((currentPosition * 100) / duration);
                }
            }
            if (e8.e && (l8 = e8.d) != null && l8.isPlaying()) {
                Message messageObtainMessage = obtainMessage(2);
                Intrinsics.checkNotNullExpressionValue(messageObtainMessage, "obtainMessage(...)");
                sendMessageDelayed(messageObtainMessage, 200L);
            }
        }
    }
}
