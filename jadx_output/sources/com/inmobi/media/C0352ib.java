package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ib, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0352ib {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f387a;
    public final EnumC0368jb b;
    public HashMap c;
    public HashMap d;
    public String e;
    public Boolean f;
    public C0399lb g;
    public Integer h;
    public Integer i;
    public Boolean j;

    public C0352ib(String url, EnumC0368jb method) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        this.f387a = url;
        this.b = method;
    }
}
