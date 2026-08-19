package com.inmobi.media;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.S6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2961S6 implements InterfaceC2947R6 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2947R6 f1535a;

    /* JADX INFO: renamed from: b */
    public final AtomicBoolean f1536b;

    public C2961S6(InterfaceC2947R6 mediaChangeReceiver) {
        Intrinsics.checkNotNullParameter(mediaChangeReceiver, "mediaChangeReceiver");
        this.f1535a = mediaChangeReceiver;
        this.f1536b = new AtomicBoolean(false);
    }

    @Override // com.inmobi.media.InterfaceC2947R6
    /* JADX INFO: renamed from: a */
    public final void mo1761a() {
        if (this.f1536b.getAndSet(false)) {
            this.f1535a.mo1761a();
        }
    }

    @Override // com.inmobi.media.InterfaceC2947R6
    /* JADX INFO: renamed from: b */
    public final void mo1762b() {
        if (this.f1536b.getAndSet(true)) {
            return;
        }
        this.f1535a.mo1762b();
    }
}
