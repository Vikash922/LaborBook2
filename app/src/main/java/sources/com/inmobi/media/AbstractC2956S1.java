package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.S1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2956S1 {

    /* JADX INFO: renamed from: a */
    public String f1525a;

    /* JADX INFO: renamed from: b */
    public long f1526b;

    /* JADX INFO: renamed from: c */
    public int f1527c;

    /* JADX INFO: renamed from: d */
    public String f1528d;

    public AbstractC2956S1(String eventType, String str) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f1525a = eventType;
        this.f1528d = str;
        this.f1526b = System.currentTimeMillis();
    }

    /* JADX INFO: renamed from: a */
    public final String m1776a() {
        String str = this.f1528d;
        return str == null ? "" : str;
    }
}
