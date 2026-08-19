package com.inmobi.media;

import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.W */
/* JADX INFO: loaded from: classes6.dex */
public final class C3010W {

    /* JADX INFO: renamed from: a */
    private final String f1600a;

    /* JADX INFO: renamed from: b */
    private long f1601b;

    /* JADX INFO: renamed from: c */
    private Map<String, String> f1602c;

    /* JADX INFO: renamed from: d */
    private String f1603d;

    /* JADX INFO: renamed from: e */
    private String f1604e;

    /* JADX INFO: renamed from: f */
    private final String f1605f;

    /* JADX INFO: renamed from: g */
    private String f1606g;

    /* JADX INFO: renamed from: h */
    private boolean f1607h;

    /* JADX INFO: renamed from: i */
    private String f1608i;

    /* JADX INFO: renamed from: j */
    private String f1609j;

    public C3010W(String mAdType) {
        Intrinsics.checkNotNullParameter(mAdType, "mAdType");
        this.f1600a = mAdType;
        this.f1601b = Long.MIN_VALUE;
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        this.f1605f = string;
        this.f1606g = "";
        this.f1608i = "activity";
    }

    /* JADX INFO: renamed from: b */
    private static /* synthetic */ void m1877b() {
    }

    /* JADX INFO: renamed from: c */
    private static /* synthetic */ void m1878c() {
    }

    /* JADX INFO: renamed from: a */
    public final C3010W m1879a(long j) {
        this.f1601b = j;
        return this;
    }

    /* JADX INFO: renamed from: d */
    public final C3010W m1887d(String m10Context) {
        Intrinsics.checkNotNullParameter(m10Context, "m10Context");
        this.f1608i = m10Context;
        return this;
    }

    /* JADX INFO: renamed from: e */
    public final C3010W m1888e(String str) {
        this.f1604e = str;
        return this;
    }

    /* JADX INFO: renamed from: a */
    public final C3010W m1880a(C3038Y placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.f1601b = placement.m1934g();
        this.f1608i = placement.m1937j();
        this.f1602c = placement.m1933f();
        this.f1606g = placement.m1926a();
        return this;
    }

    /* JADX INFO: renamed from: b */
    public final C3010W m1885b(String str) {
        this.f1609j = str;
        return this;
    }

    /* JADX INFO: renamed from: c */
    public final C3010W m1886c(String str) {
        this.f1603d = str;
        return this;
    }

    /* JADX INFO: renamed from: a */
    public final C3010W m1881a(String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.f1606g = adSize;
        return this;
    }

    /* JADX INFO: renamed from: a */
    public final C3010W m1882a(Map<String, String> map) {
        this.f1602c = map;
        return this;
    }

    /* JADX INFO: renamed from: a */
    public final C3010W m1883a(boolean z) {
        this.f1607h = z;
        return this;
    }

    /* JADX INFO: renamed from: a */
    public final C3038Y m1884a() throws IllegalStateException {
        String str;
        long j = this.f1601b;
        if (j != Long.MIN_VALUE) {
            Map<String, String> map = this.f1602c;
            if (map == null || (str = map.get("tp")) == null) {
                str = "";
            }
            C3038Y c3038y = new C3038Y(j, str, this.f1600a, this.f1604e, null);
            c3038y.f1656d = this.f1603d;
            c3038y.m1928a(this.f1602c);
            c3038y.m1927a(this.f1606g);
            c3038y.m1930b(this.f1608i);
            c3038y.f1659g = this.f1605f;
            c3038y.f1662j = this.f1607h;
            c3038y.f1663k = this.f1609j;
            return c3038y;
        }
        throw new IllegalStateException("When the integration type is IM, IM-Plc can't be empty");
    }
}
