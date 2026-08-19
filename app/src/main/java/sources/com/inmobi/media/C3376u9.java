package com.inmobi.media;

import com.inmobi.commons.core.configs.SignalsConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3376u9 {

    /* JADX INFO: renamed from: a */
    public final String f2666a;

    /* JADX INFO: renamed from: b */
    public final String f2667b;

    /* JADX INFO: renamed from: c */
    public final SignalsConfig.NovatiqConfig f2668c;

    public C3376u9(String hyperId, String spHost, SignalsConfig.NovatiqConfig novatiqConfig) {
        Intrinsics.checkNotNullParameter(hyperId, "hyperId");
        Intrinsics.checkNotNullParameter("i6i", "sspId");
        Intrinsics.checkNotNullParameter(spHost, "spHost");
        Intrinsics.checkNotNullParameter("inmobi", "pubId");
        Intrinsics.checkNotNullParameter(novatiqConfig, "novatiqConfig");
        this.f2666a = hyperId;
        this.f2667b = spHost;
        this.f2668c = novatiqConfig;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3376u9)) {
            return false;
        }
        C3376u9 c3376u9 = (C3376u9) obj;
        return Intrinsics.areEqual(this.f2666a, c3376u9.f2666a) && Intrinsics.areEqual("i6i", "i6i") && Intrinsics.areEqual(this.f2667b, c3376u9.f2667b) && Intrinsics.areEqual("inmobi", "inmobi") && Intrinsics.areEqual(this.f2668c, c3376u9.f2668c);
    }

    public final int hashCode() {
        return this.f2668c.hashCode() + ((((this.f2667b.hashCode() + (((this.f2666a.hashCode() * 31) + 102684) * 31)) * 31) - 1183962098) * 31);
    }

    public final String toString() {
        return "NovatiqData(hyperId=" + this.f2666a + ", sspId=i6i, spHost=" + this.f2667b + ", pubId=inmobi, novatiqConfig=" + this.f2668c + ')';
    }
}
