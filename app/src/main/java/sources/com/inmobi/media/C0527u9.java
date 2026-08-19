package com.inmobi.media;

import com.inmobi.commons.core.configs.SignalsConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.u9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0527u9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f501a;
    public final String b;
    public final SignalsConfig.NovatiqConfig c;

    public C0527u9(String hyperId, String spHost, SignalsConfig.NovatiqConfig novatiqConfig) {
        Intrinsics.checkNotNullParameter(hyperId, "hyperId");
        Intrinsics.checkNotNullParameter("i6i", "sspId");
        Intrinsics.checkNotNullParameter(spHost, "spHost");
        Intrinsics.checkNotNullParameter("inmobi", "pubId");
        Intrinsics.checkNotNullParameter(novatiqConfig, "novatiqConfig");
        this.f501a = hyperId;
        this.b = spHost;
        this.c = novatiqConfig;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0527u9)) {
            return false;
        }
        C0527u9 c0527u9 = (C0527u9) obj;
        return Intrinsics.areEqual(this.f501a, c0527u9.f501a) && Intrinsics.areEqual("i6i", "i6i") && Intrinsics.areEqual(this.b, c0527u9.b) && Intrinsics.areEqual("inmobi", "inmobi") && Intrinsics.areEqual(this.c, c0527u9.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((((this.b.hashCode() + (((this.f501a.hashCode() * 31) + 102684) * 31)) * 31) - 1183962098) * 31);
    }

    public final String toString() {
        return "NovatiqData(hyperId=" + this.f501a + ", sspId=i6i, spHost=" + this.b + ", pubId=inmobi, novatiqConfig=" + this.c + ')';
    }
}
