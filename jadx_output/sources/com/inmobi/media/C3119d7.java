package com.inmobi.media;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.d7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3119d7 extends ContentObserver implements InterfaceC2947R6 {

    /* JADX INFO: renamed from: a */
    public final String f1996a;

    /* JADX INFO: renamed from: b */
    public final Context f1997b;

    /* JADX INFO: renamed from: c */
    public int f1998c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3149f7 f1999d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3119d7(C3149f7 c3149f7, String mJsCallbackNamespace, Context context, Handler handler) {
        super(handler);
        Intrinsics.checkNotNullParameter(mJsCallbackNamespace, "mJsCallbackNamespace");
        this.f1999d = c3149f7;
        this.f1996a = mJsCallbackNamespace;
        this.f1997b = context;
        this.f1998c = -1;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2059a(C3119d7 this$0, C3149f7 this$1, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        Context context = this$0.f1997b;
        if (context != null) {
            Object systemService = context.getSystemService("audio");
            AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
            if (audioManager != null) {
                try {
                    int streamVolume = audioManager.getStreamVolume(3);
                    if (streamVolume != this$0.f1998c) {
                        this$0.f1998c = streamVolume;
                        InterfaceC3147f5 interfaceC3147f5 = this$1.f2063b;
                        if (interfaceC3147f5 != null) {
                            ((C3162g5) interfaceC3147f5).m2147a("MraidMediaProcessor", "volume change detected - " + z);
                        }
                        String str = this$0.f1996a;
                        InterfaceC3147f5 interfaceC3147f52 = this$1.f2063b;
                        if (interfaceC3147f52 != null) {
                            ((C3162g5) interfaceC3147f52).m2152c("MraidMediaProcessor", "fireDeviceVolumeChangeEvent");
                        }
                        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this$1.f2062a;
                        if (gestureDetectorOnGestureListenerC3049Ya != null) {
                            gestureDetectorOnGestureListenerC3049Ya.m1953a(str, "fireDeviceVolumeChangeEvent(" + streamVolume + ");");
                        }
                    }
                } catch (Exception e) {
                    InterfaceC3147f5 interfaceC3147f53 = this$1.f2063b;
                    if (interfaceC3147f53 != null) {
                        ((C3162g5) interfaceC3147f53).m2148a("MraidMediaProcessor", "Unexpected error in volume listener", e);
                    }
                }
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC2947R6
    /* JADX INFO: renamed from: b */
    public final void mo1762b() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        contextM1254d.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(final boolean z) {
        super.onChange(z);
        int i = AbstractC3251m4.f2318a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue();
        final C3149f7 c3149f7 = this.f1999d;
        scheduledThreadPoolExecutor.execute(new Runnable() { // from class: com.inmobi.media.d7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3119d7.m2059a(this.f$0, c3149f7, z);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC2947R6
    /* JADX INFO: renamed from: a */
    public final void mo1761a() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        contextM1254d.getContentResolver().unregisterContentObserver(this);
    }
}
