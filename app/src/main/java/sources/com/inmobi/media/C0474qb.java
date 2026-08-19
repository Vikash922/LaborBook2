package com.inmobi.media;

import java.util.Map;

/* JADX INFO: renamed from: com.inmobi.media.qb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0474qb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0350i9 f463a;
    public Map b;
    public byte[] c;
    public Integer d;
    public int e;

    public final String toString() {
        return "STATUS_CODE:" + this.d + " | ERROR:" + this.f463a + " | HEADERS:" + this.b + " | RESPONSE: " + AbstractC0366j9.a(this.c);
    }
}
