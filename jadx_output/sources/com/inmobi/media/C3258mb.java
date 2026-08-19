package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.mb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3258mb {

    /* JADX INFO: renamed from: a */
    public final String f2336a;

    /* JADX INFO: renamed from: b */
    public final EnumC3213jb f2337b;

    /* JADX INFO: renamed from: c */
    public final HashMap f2338c;

    /* JADX INFO: renamed from: d */
    public final HashMap f2339d;

    /* JADX INFO: renamed from: e */
    public final String f2340e;

    /* JADX INFO: renamed from: f */
    public final EnumC3228kb f2341f;

    /* JADX INFO: renamed from: g */
    public final boolean f2342g;

    /* JADX INFO: renamed from: h */
    public final C3243lb f2343h;

    /* JADX INFO: renamed from: i */
    public final int f2344i;

    /* JADX INFO: renamed from: j */
    public final int f2345j;

    /* JADX INFO: renamed from: k */
    public final boolean f2346k;

    /* JADX INFO: renamed from: l */
    public C3226k9 f2347l;

    /* JADX INFO: renamed from: m */
    public int f2348m;

    public C3258mb(C3198ib c3198ib) {
        Intrinsics.checkNotNullExpressionValue("mb", "getSimpleName(...)");
        this.f2336a = c3198ib.f2183a;
        this.f2337b = c3198ib.f2184b;
        this.f2338c = c3198ib.f2185c;
        this.f2339d = c3198ib.f2186d;
        String str = c3198ib.f2187e;
        this.f2340e = str == null ? "" : str;
        this.f2341f = EnumC3228kb.f2260a;
        Boolean bool = c3198ib.f2188f;
        this.f2342g = bool != null ? bool.booleanValue() : true;
        this.f2343h = c3198ib.f2189g;
        Integer num = c3198ib.f2190h;
        this.f2344i = num != null ? num.intValue() : 60000;
        Integer num2 = c3198ib.f2191i;
        this.f2345j = num2 != null ? num2.intValue() : 60000;
        Boolean bool2 = c3198ib.f2192j;
        this.f2346k = bool2 != null ? bool2.booleanValue() : false;
    }

    public final String toString() {
        return "URL:" + AbstractC3211j9.m2262a(this.f2336a, this.f2339d) + " | TAG:null | METHOD:" + this.f2337b + " | PAYLOAD:" + this.f2340e + " | HEADERS:" + this.f2338c + " | RETRY_POLICY:" + this.f2343h;
    }
}
