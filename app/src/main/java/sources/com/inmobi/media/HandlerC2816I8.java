package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.I8 */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC2816I8 extends Handler {

    /* JADX INFO: renamed from: a */
    public final WeakReference f1113a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC2816I8(C2861L8 videoView) {
        super(Looper.getMainLooper());
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        this.f1113a = new WeakReference(videoView);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        InterfaceC2786G8 playbackEventListener;
        Intrinsics.checkNotNullParameter(msg, "msg");
        C2861L8 c2861l8 = (C2861L8) this.f1113a.get();
        if (c2861l8 != null && msg.what == 1) {
            int duration = c2861l8.getDuration();
            int currentPosition = c2861l8.getCurrentPosition();
            if (duration != -1 && currentPosition != 0) {
                Object tag = c2861l8.getTag();
                C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
                if (c2726c8 != null) {
                    Object obj = c2726c8.f938t.get("didCompleteQ1");
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                    if (!((Boolean) obj).booleanValue() && (currentPosition * 4) - duration >= 0) {
                        c2726c8.f938t.put("didCompleteQ1", Boolean.TRUE);
                        InterfaceC2801H8 quartileCompletedListener = c2861l8.getQuartileCompletedListener();
                        Intrinsics.checkNotNull(quartileCompletedListener);
                        ((C3060Z7) quartileCompletedListener).m2004a((byte) 0);
                    }
                    Object obj2 = c2726c8.f938t.get("didCompleteQ2");
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                    if (!((Boolean) obj2).booleanValue() && (currentPosition * 2) - duration >= 0) {
                        c2726c8.f938t.put("didCompleteQ2", Boolean.TRUE);
                        InterfaceC2801H8 quartileCompletedListener2 = c2861l8.getQuartileCompletedListener();
                        if (quartileCompletedListener2 != null) {
                            ((C3060Z7) quartileCompletedListener2).m2004a((byte) 1);
                        }
                    }
                    Object obj3 = c2726c8.f938t.get("didCompleteQ3");
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                    if (!((Boolean) obj3).booleanValue() && (currentPosition * 4) - (duration * 3) >= 0) {
                        c2726c8.f938t.put("didCompleteQ3", Boolean.TRUE);
                        InterfaceC2801H8 quartileCompletedListener3 = c2861l8.getQuartileCompletedListener();
                        if (quartileCompletedListener3 != null) {
                            ((C3060Z7) quartileCompletedListener3).m2004a((byte) 2);
                        }
                    }
                    if ((currentPosition / duration) * 100 > c2726c8.f888D) {
                        Object obj4 = c2726c8.f938t.get("didQ4Fire");
                        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Boolean");
                        if (!((Boolean) obj4).booleanValue() && (playbackEventListener = c2861l8.getPlaybackEventListener()) != null) {
                            ((C3075a8) playbackEventListener).m2017a((byte) 5);
                        }
                    }
                }
            }
            sendEmptyMessageDelayed(1, 1000L);
        }
        super.handleMessage(msg);
    }
}
