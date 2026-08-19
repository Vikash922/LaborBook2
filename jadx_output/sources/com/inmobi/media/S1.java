package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class S1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f238a;
    public long b;
    public int c;
    public String d;

    public S1(String eventType, String str) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f238a = eventType;
        this.d = str;
        this.b = System.currentTimeMillis();
    }

    public final String a() {
        String str = this.d;
        return str == null ? "" : str;
    }
}
