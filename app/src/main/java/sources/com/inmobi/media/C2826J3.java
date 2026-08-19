package com.inmobi.media;

import java.io.File;

/* JADX INFO: renamed from: com.inmobi.media.J3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2826J3 {

    /* JADX INFO: renamed from: a */
    public final String f1129a;

    /* JADX INFO: renamed from: b */
    public final long[] f1130b;

    /* JADX INFO: renamed from: c */
    public boolean f1131c;

    /* JADX INFO: renamed from: d */
    public C2811I3 f1132d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2856L3 f1133e;

    public C2826J3(C2856L3 c2856l3, String str) {
        this.f1133e = c2856l3;
        this.f1129a = str;
        this.f1130b = new long[c2856l3.f1196h];
    }

    /* JADX INFO: renamed from: a */
    public final File m1191a(int i) {
        return new File(this.f1133e.f1189a, this.f1129a + "." + i);
    }

    /* JADX INFO: renamed from: b */
    public final File m1192b(int i) {
        return new File(this.f1133e.f1189a, this.f1129a + "." + i + ".tmp");
    }
}
