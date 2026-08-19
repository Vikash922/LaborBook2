package com.inmobi.media;

import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3391v9 extends C3241l9 {

    /* JADX INFO: renamed from: y */
    public final C3376u9 f2688y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3391v9(C3376u9 novatiqData, InterfaceC3147f5 interfaceC3147f5) {
        super(novatiqData.f2668c.getBeaconUrl(), interfaceC3147f5);
        Intrinsics.checkNotNullParameter(novatiqData, "novatiqData");
        this.f2688y = novatiqData;
        this.f2293t = false;
        this.f2294u = false;
        this.f2297x = false;
    }

    @Override // com.inmobi.media.C3241l9
    /* JADX INFO: renamed from: f */
    public final void mo1146f() {
        InterfaceC3147f5 interfaceC3147f5 = this.f2278e;
        if (interfaceC3147f5 != null) {
            StringBuilder sbAppend = new StringBuilder("preparing Novatiq request with data - hyperId - ").append(this.f2688y.f2666a).append(" - sspHost - ").append(this.f2688y.f2667b).append(" - pubId - inmobi");
            this.f2688y.getClass();
            ((C3162g5) interfaceC3147f5).m2147a("Novatiq", sbAppend.toString());
        }
        super.mo1146f();
        HashMap map = this.f2283j;
        if (map != null) {
            map.put("sptoken", this.f2688y.f2666a);
        }
        HashMap map2 = this.f2283j;
        if (map2 != null) {
            this.f2688y.getClass();
            map2.put("sspid", "i6i");
        }
        HashMap map3 = this.f2283j;
        if (map3 != null) {
            map3.put("ssphost", this.f2688y.f2667b);
        }
        HashMap map4 = this.f2283j;
        if (map4 != null) {
            this.f2688y.getClass();
            map4.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "inmobi");
        }
    }
}
