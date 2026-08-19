package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.O2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2900O2 {

    /* JADX INFO: renamed from: a */
    public final Config f1328a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2825J2 f1329b;

    public C2900O2(Config config, InterfaceC2825J2 interfaceC2825J2) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f1328a = config;
        this.f1329b = interfaceC2825J2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2900O2)) {
            return false;
        }
        C2900O2 c2900o2 = (C2900O2) obj;
        return Intrinsics.areEqual(this.f1328a, c2900o2.f1328a) && Intrinsics.areEqual(this.f1329b, c2900o2.f1329b);
    }

    public final int hashCode() {
        int iHashCode = this.f1328a.hashCode() * 31;
        InterfaceC2825J2 interfaceC2825J2 = this.f1329b;
        return iHashCode + (interfaceC2825J2 == null ? 0 : interfaceC2825J2.hashCode());
    }

    public final String toString() {
        return "ConfigFetchInputs(config=" + this.f1328a + ", listener=" + this.f1329b + ')';
    }
}
