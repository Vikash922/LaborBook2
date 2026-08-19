package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3448z6 {

    /* JADX INFO: renamed from: a */
    public final String f2791a;

    /* JADX INFO: renamed from: b */
    public final long f2792b;

    /* JADX INFO: renamed from: c */
    public final int f2793c;

    /* JADX INFO: renamed from: d */
    public final long f2794d;

    /* JADX INFO: renamed from: e */
    public final boolean f2795e;

    /* JADX INFO: renamed from: f */
    public final int f2796f;

    public C3448z6(String fileName, long j, int i, long j2, boolean z, int i2) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.f2791a = fileName;
        this.f2792b = j;
        this.f2793c = i;
        this.f2794d = j2;
        this.f2795e = z;
        this.f2796f = i2;
    }

    public /* synthetic */ C3448z6(String str, long j, int i, long j2, boolean z, int i2, int i3) {
        this(str, j, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0L : j2, (i3 & 16) != 0 ? false : z, (i3 & 32) != 0 ? 0 : i2);
    }
}
