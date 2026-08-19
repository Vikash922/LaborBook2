package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.mb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0414mb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f425a;
    public final EnumC0368jb b;
    public final HashMap c;
    public final HashMap d;
    public final String e;
    public final EnumC0383kb f;
    public final boolean g;
    public final C0399lb h;
    public final int i;
    public final int j;
    public final boolean k;
    public C0381k9 l;
    public int m;

    public C0414mb(C0352ib c0352ib) {
        Intrinsics.checkNotNullExpressionValue("mb", "getSimpleName(...)");
        this.f425a = c0352ib.f387a;
        this.b = c0352ib.b;
        this.c = c0352ib.c;
        this.d = c0352ib.d;
        String str = c0352ib.e;
        this.e = str == null ? "" : str;
        this.f = EnumC0383kb.f406a;
        Boolean bool = c0352ib.f;
        this.g = bool != null ? bool.booleanValue() : true;
        this.h = c0352ib.g;
        Integer num = c0352ib.h;
        this.i = num != null ? num.intValue() : 60000;
        Integer num2 = c0352ib.i;
        this.j = num2 != null ? num2.intValue() : 60000;
        Boolean bool2 = c0352ib.j;
        this.k = bool2 != null ? bool2.booleanValue() : false;
    }

    public final String toString() {
        return "URL:" + AbstractC0366j9.a(this.f425a, this.d) + " | TAG:null | METHOD:" + this.b + " | PAYLOAD:" + this.e + " | HEADERS:" + this.c + " | RETRY_POLICY:" + this.h;
    }
}
