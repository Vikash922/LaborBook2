package com.inmobi.media;

import java.util.Map;

/* JADX INFO: renamed from: com.inmobi.media.qb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3318qb {

    /* JADX INFO: renamed from: a */
    public C3196i9 f2464a;

    /* JADX INFO: renamed from: b */
    public Map f2465b;

    /* JADX INFO: renamed from: c */
    public byte[] f2466c;

    /* JADX INFO: renamed from: d */
    public Integer f2467d;

    /* JADX INFO: renamed from: e */
    public int f2468e;

    public final String toString() {
        return "STATUS_CODE:" + this.f2467d + " | ERROR:" + this.f2464a + " | HEADERS:" + this.f2465b + " | RESPONSE: " + AbstractC3211j9.m2263a(this.f2466c);
    }
}
