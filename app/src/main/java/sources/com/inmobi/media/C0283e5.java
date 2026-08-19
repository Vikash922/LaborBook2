package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0283e5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final B6 f339a;
    public final double b;

    public C0283e5(B6 logLevel, double d) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.f339a = logLevel;
        this.b = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0283e5)) {
            return false;
        }
        C0283e5 c0283e5 = (C0283e5) obj;
        return this.f339a == c0283e5.f339a && Double.compare(this.b, c0283e5.b) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.b) + (this.f339a.hashCode() * 31);
    }

    public final String toString() {
        return "LoggerConfiguration(logLevel=" + this.f339a + ", samplingFactor=" + this.b + ')';
    }
}
