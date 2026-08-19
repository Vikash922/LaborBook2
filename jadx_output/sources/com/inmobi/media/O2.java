package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class O2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Config f198a;
    public final J2 b;

    public O2(Config config, J2 j2) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f198a = config;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof O2)) {
            return false;
        }
        O2 o2 = (O2) obj;
        return Intrinsics.areEqual(this.f198a, o2.f198a) && Intrinsics.areEqual(this.b, o2.b);
    }

    public final int hashCode() {
        int iHashCode = this.f198a.hashCode() * 31;
        J2 j2 = this.b;
        return iHashCode + (j2 == null ? 0 : j2.hashCode());
    }

    public final String toString() {
        return "ConfigFetchInputs(config=" + this.f198a + ", listener=" + this.b + ')';
    }
}
