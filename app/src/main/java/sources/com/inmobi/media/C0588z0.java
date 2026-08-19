package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0588z0 implements InterfaceC0491s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A0 f541a;

    public C0588z0(A0 a0) {
        this.f541a = a0;
    }

    public static final void a(A0 this$0, byte b) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f70a.a(this$0.c, false, b == 1 ? (short) 78 : b == 2 ? (short) 79 : b == 3 ? (short) 80 : b == 4 ? (short) 81 : b == 5 ? (short) 5 : b == 6 ? (short) 77 : b == 7 ? (short) 31 : b == 8 ? (short) 27 : (short) 82);
    }

    public static final void a(A0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f70a.a(this$0.c, true, (short) 0);
    }

    @Override // com.inmobi.media.InterfaceC0491s1
    public final void a(C0371k assetBatch, final byte b) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        this.f541a.h.a(assetBatch, b);
        A0 a0 = this.f541a;
        InterfaceC0298f5 interfaceC0298f5 = a0.f;
        if (interfaceC0298f5 != null) {
            String str = a0.d;
            ((C0314g5) interfaceC0298f5).b(str, AbstractC0363j6.a(str, "access$getTAG$p(...)", "Notifying failure  to ad unit with placement ID (").append(this.f541a.c).append(')').toString());
        }
        Handler handler = new Handler(Looper.getMainLooper());
        final A0 a02 = this.f541a;
        handler.post(new Runnable() { // from class: com.inmobi.media.z0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0588z0.a(a02, b);
            }
        });
    }

    @Override // com.inmobi.media.InterfaceC0491s1
    public final void a(C0371k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        this.f541a.h.a(assetBatch);
        A0 a0 = this.f541a;
        InterfaceC0298f5 interfaceC0298f5 = a0.f;
        if (interfaceC0298f5 != null) {
            String str = a0.d;
            ((C0314g5) interfaceC0298f5).a(str, AbstractC0363j6.a(str, "access$getTAG$p(...)", "Notifying ad unit with placement ID (").append(this.f541a.c).append(')').toString());
        }
        Handler handler = new Handler(Looper.getMainLooper());
        final A0 a02 = this.f541a;
        handler.post(new Runnable() { // from class: com.inmobi.media.z0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0588z0.a(a02);
            }
        });
    }
}
