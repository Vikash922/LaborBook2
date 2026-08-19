package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3132e5 {

    /* JADX INFO: renamed from: a */
    public final EnumC2709B6 f2042a;

    /* JADX INFO: renamed from: b */
    public final double f2043b;

    public C3132e5(EnumC2709B6 logLevel, double d) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.f2042a = logLevel;
        this.f2043b = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3132e5)) {
            return false;
        }
        C3132e5 c3132e5 = (C3132e5) obj;
        return this.f2042a == c3132e5.f2042a && Double.compare(this.f2043b, c3132e5.f2043b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.f2043b) + (this.f2042a.hashCode() * 31);
    }

    public final String toString() {
        return "LoggerConfiguration(logLevel=" + this.f2042a + ", samplingFactor=" + this.f2043b + ')';
    }
}
