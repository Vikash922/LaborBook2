package com.inmobi.media;

import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class W {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f265a;
    private long b;
    private Map<String, String> c;
    private String d;
    private String e;
    private final String f;
    private String g;
    private boolean h;
    private String i;
    private String j;

    public W(String mAdType) {
        Intrinsics.checkNotNullParameter(mAdType, "mAdType");
        this.f265a = mAdType;
        this.b = Long.MIN_VALUE;
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.f = string;
        this.g = "";
        this.i = "activity";
    }

    private static /* synthetic */ void b() {
    }

    private static /* synthetic */ void c() {
    }

    public final W a(long j) {
        this.b = j;
        return this;
    }

    public final W d(String m10Context) {
        Intrinsics.checkNotNullParameter(m10Context, "m10Context");
        this.i = m10Context;
        return this;
    }

    public final W e(String str) {
        this.e = str;
        return this;
    }

    public final W a(Y placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.b = placement.g();
        this.i = placement.j();
        this.c = placement.f();
        this.g = placement.a();
        return this;
    }

    public final W b(String str) {
        this.j = str;
        return this;
    }

    public final W c(String str) {
        this.d = str;
        return this;
    }

    public final W a(String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.g = adSize;
        return this;
    }

    public final W a(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public final W a(boolean z) {
        this.h = z;
        return this;
    }

    public final Y a() throws IllegalStateException {
        String str;
        long j = this.b;
        if (j != Long.MIN_VALUE) {
            Map<String, String> map = this.c;
            if (map == null || (str = map.get("tp")) == null) {
                str = "";
            }
            Y y = new Y(j, str, this.f265a, this.e, null);
            y.d = this.d;
            y.a(this.c);
            y.a(this.g);
            y.b(this.i);
            y.g = this.f;
            y.j = this.h;
            y.k = this.j;
            return y;
        }
        throw new IllegalStateException("When the integration type is IM, IM-Plc can't be empty");
    }
}
