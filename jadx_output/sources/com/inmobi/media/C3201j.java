package com.inmobi.media;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j */
/* JADX INFO: loaded from: classes6.dex */
public final class C3201j {

    /* JADX INFO: renamed from: m */
    public static final /* synthetic */ int f2202m = 0;

    /* JADX INFO: renamed from: a */
    public final int f2203a;

    /* JADX INFO: renamed from: b */
    public final String f2204b;

    /* JADX INFO: renamed from: c */
    public final String f2205c;

    /* JADX INFO: renamed from: d */
    public int f2206d;

    /* JADX INFO: renamed from: e */
    public long f2207e;

    /* JADX INFO: renamed from: f */
    public final long f2208f;

    /* JADX INFO: renamed from: g */
    public final long f2209g;

    /* JADX INFO: renamed from: h */
    public final long f2210h;

    /* JADX INFO: renamed from: i */
    public boolean f2211i;

    /* JADX INFO: renamed from: j */
    public String f2212j;

    /* JADX INFO: renamed from: k */
    public long f2213k;

    /* JADX INFO: renamed from: l */
    public byte f2214l;

    public C3201j(int i, String url, String str, int i2, long j, long j2, long j3, long j4) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f2203a = i;
        this.f2204b = url;
        this.f2205c = str;
        this.f2206d = i2;
        this.f2207e = j;
        this.f2208f = j2;
        this.f2209g = j3;
        this.f2210h = j4;
    }

    /* JADX INFO: renamed from: a */
    public final void m2252a(byte b) {
        this.f2214l = b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3201j) {
            return Intrinsics.areEqual(this.f2204b, ((C3201j) obj).f2204b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2204b.hashCode();
    }

    public final String toString() {
        return "AdAsset{url='" + this.f2204b + "'}";
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2253a() {
        return AbstractC3429y2.m2607a(this.f2205c) && new File(this.f2205c).exists();
    }
}
