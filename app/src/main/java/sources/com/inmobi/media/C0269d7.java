package com.inmobi.media;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.d7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0269d7 extends ContentObserver implements R6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f331a;
    public final Context b;
    public int c;
    public final /* synthetic */ C0300f7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0269d7(C0300f7 c0300f7, String mJsCallbackNamespace, Context context, Handler handler) {
        super(handler);
        Intrinsics.checkNotNullParameter(mJsCallbackNamespace, "mJsCallbackNamespace");
        this.d = c0300f7;
        this.f331a = mJsCallbackNamespace;
        this.b = context;
        this.c = -1;
    }

    public static final void a(C0269d7 this$0, C0300f7 this$1, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        Context context = this$0.b;
        if (context != null) {
            Object systemService = context.getSystemService("audio");
            AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
            if (audioManager != null) {
                try {
                    int streamVolume = audioManager.getStreamVolume(3);
                    if (streamVolume != this$0.c) {
                        this$0.c = streamVolume;
                        InterfaceC0298f5 interfaceC0298f5 = this$1.b;
                        if (interfaceC0298f5 != null) {
                            ((C0314g5) interfaceC0298f5).a("MraidMediaProcessor", "volume change detected - " + z);
                        }
                        String str = this$0.f331a;
                        InterfaceC0298f5 interfaceC0298f52 = this$1.b;
                        if (interfaceC0298f52 != null) {
                            ((C0314g5) interfaceC0298f52).c("MraidMediaProcessor", "fireDeviceVolumeChangeEvent");
                        }
                        Ya ya = this$1.f349a;
                        if (ya != null) {
                            ya.a(str, "fireDeviceVolumeChangeEvent(" + streamVolume + ");");
                        }
                    }
                } catch (Exception e) {
                    InterfaceC0298f5 interfaceC0298f53 = this$1.b;
                    if (interfaceC0298f53 != null) {
                        ((C0314g5) interfaceC0298f53).a("MraidMediaProcessor", "Unexpected error in volume listener", e);
                    }
                }
            }
        }
    }

    @Override // com.inmobi.media.R6
    public final void b() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        contextD.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(final boolean z) {
        super.onChange(z);
        int i = AbstractC0407m4.f421a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC0407m4.b.getValue();
        final C0300f7 c0300f7 = this.d;
        scheduledThreadPoolExecutor.execute(new Runnable() { // from class: com.inmobi.media.d7$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0269d7.a(this.f$0, c0300f7, z);
            }
        });
    }

    @Override // com.inmobi.media.R6
    public final void a() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        contextD.getContentResolver().unregisterContentObserver(this);
    }
}
