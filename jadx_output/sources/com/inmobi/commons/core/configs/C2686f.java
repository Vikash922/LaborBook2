package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.AbstractC3363tb;
import com.inmobi.media.C2934Q6;
import com.inmobi.media.C2952Rb;
import com.inmobi.media.C2966Sb;
import com.inmobi.media.C2980Tb;
import com.inmobi.media.C2988U5;
import com.inmobi.media.C2994Ub;
import com.inmobi.media.C3008Vb;
import com.inmobi.media.C3378ub;
import com.inmobi.media.C3388v6;

/* JADX INFO: renamed from: com.inmobi.commons.core.configs.f */
/* JADX INFO: loaded from: classes6.dex */
public final class C2686f {
    /* JADX INFO: renamed from: a */
    public static C2988U5 m824a() {
        return new C2988U5().m1842a(new C3378ub("carrierNames", SignalsConfig.NovatiqConfig.class), (AbstractC3363tb) new C3388v6(new C2952Rb(), String.class)).m1842a(new C3378ub("control", SignalsConfig.SessionConfig.class), (AbstractC3363tb) new C3388v6(new C2966Sb(), Integer.TYPE)).m1842a(new C3378ub("generalKeys", SignalsConfig.PublisherConfig.class), (AbstractC3363tb) new C2934Q6(new C2980Tb(), String.class)).m1842a(new C3378ub("adSpecificKeys", SignalsConfig.PublisherConfig.class), (AbstractC3363tb) new C2934Q6(new C2994Ub(), String.class)).m1842a(new C3378ub("versionList", SignalsConfig.Purchases.class), (AbstractC3363tb) new C3388v6(new C3008Vb(), String.class));
    }
}
