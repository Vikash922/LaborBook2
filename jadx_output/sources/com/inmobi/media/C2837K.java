package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.K */
/* JADX INFO: loaded from: classes6.dex */
public final class C2837K extends RuntimeException {

    /* JADX INFO: renamed from: a */
    public final InMobiAdRequestStatus f1142a;

    /* JADX INFO: renamed from: b */
    public final short f1143b;

    public C2837K(InMobiAdRequestStatus status, short s) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.f1142a = status;
        this.f1143b = s;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f1142a.getMessage();
    }
}
