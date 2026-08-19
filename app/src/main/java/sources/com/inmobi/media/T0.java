package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class T0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f244a = "T0";
    public String b;
    public Boolean c;

    public T0() {
        Intrinsics.checkNotNull("T0");
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.f244a;
    }

    public final Boolean c() {
        return this.c;
    }

    public final void a(String str) {
        this.b = str;
    }

    public final void a(boolean z) {
        Intrinsics.checkNotNull(this.f244a);
        this.c = Boolean.valueOf(z);
    }
}
