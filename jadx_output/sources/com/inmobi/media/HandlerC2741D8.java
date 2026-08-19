package com.inmobi.media;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.D8 */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC2741D8 extends Handler {

    /* JADX INFO: renamed from: a */
    public final WeakReference f942a;

    public HandlerC2741D8(C2756E8 controller) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        this.f942a = new WeakReference(controller);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        C2861L8 c2861l8;
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.what != 2) {
            super.handleMessage(msg);
            return;
        }
        C2756E8 c2756e8 = (C2756E8) this.f942a.get();
        if (c2756e8 != null) {
            C2861L8 c2861l82 = c2756e8.f988d;
            if (c2861l82 != null) {
                int currentPosition = c2861l82.getCurrentPosition();
                int duration = c2861l82.getDuration();
                if (duration != 0) {
                    c2756e8.f992h.setProgress((currentPosition * 100) / duration);
                }
            }
            if (c2756e8.f989e && (c2861l8 = c2756e8.f988d) != null && c2861l8.isPlaying()) {
                Message messageObtainMessage = obtainMessage(2);
                Intrinsics.checkNotNullExpressionValue(messageObtainMessage, "obtainMessage(...)");
                sendMessageDelayed(messageObtainMessage, 200L);
            }
        }
    }
}
