package com.inmobi.media;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class S6 implements R6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final R6 f241a;
    public final AtomicBoolean b;

    public S6(R6 mediaChangeReceiver) {
        Intrinsics.checkNotNullParameter(mediaChangeReceiver, "mediaChangeReceiver");
        this.f241a = mediaChangeReceiver;
        this.b = new AtomicBoolean(false);
    }

    @Override // com.inmobi.media.R6
    public final void a() {
        if (this.b.getAndSet(false)) {
            this.f241a.a();
        }
    }

    @Override // com.inmobi.media.R6
    public final void b() {
        if (this.b.getAndSet(true)) {
            return;
        }
        this.f241a.b();
    }
}
