package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class K extends RuntimeException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InMobiAdRequestStatus f152a;
    public final short b;

    public K(InMobiAdRequestStatus status, short s) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.f152a = status;
        this.b = s;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f152a.getMessage();
    }
}
