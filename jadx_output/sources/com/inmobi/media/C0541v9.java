package com.inmobi.media;

import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0541v9 extends C0397l9 {
    public final C0527u9 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0541v9(C0527u9 novatiqData, InterfaceC0298f5 interfaceC0298f5) {
        super(novatiqData.c.getBeaconUrl(), interfaceC0298f5);
        Intrinsics.checkNotNullParameter(novatiqData, "novatiqData");
        this.y = novatiqData;
        this.t = false;
        this.u = false;
        this.x = false;
    }

    @Override // com.inmobi.media.C0397l9
    public final void f() {
        InterfaceC0298f5 interfaceC0298f5 = this.e;
        if (interfaceC0298f5 != null) {
            StringBuilder sbAppend = new StringBuilder("preparing Novatiq request with data - hyperId - ").append(this.y.f501a).append(" - sspHost - ").append(this.y.b).append(" - pubId - inmobi");
            this.y.getClass();
            ((C0314g5) interfaceC0298f5).a("Novatiq", sbAppend.toString());
        }
        super.f();
        HashMap map = this.j;
        if (map != null) {
            map.put("sptoken", this.y.f501a);
        }
        HashMap map2 = this.j;
        if (map2 != null) {
            this.y.getClass();
            map2.put("sspid", "i6i");
        }
        HashMap map3 = this.j;
        if (map3 != null) {
            map3.put("ssphost", this.y.b);
        }
        HashMap map4 = this.j;
        if (map4 != null) {
            this.y.getClass();
            map4.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "inmobi");
        }
    }
}
