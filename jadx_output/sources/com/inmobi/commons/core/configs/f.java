package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.AbstractC0515tb;
import com.inmobi.media.C0529ub;
import com.inmobi.media.C0538v6;
import com.inmobi.media.Q6;
import com.inmobi.media.Rb;
import com.inmobi.media.Sb;
import com.inmobi.media.Tb;
import com.inmobi.media.U5;
import com.inmobi.media.Ub;
import com.inmobi.media.Vb;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    public static U5 a() {
        return new U5().a(new C0529ub("carrierNames", SignalsConfig.NovatiqConfig.class), (AbstractC0515tb) new C0538v6(new Rb(), String.class)).a(new C0529ub("control", SignalsConfig.SessionConfig.class), (AbstractC0515tb) new C0538v6(new Sb(), Integer.TYPE)).a(new C0529ub("generalKeys", SignalsConfig.PublisherConfig.class), (AbstractC0515tb) new Q6(new Tb(), String.class)).a(new C0529ub("adSpecificKeys", SignalsConfig.PublisherConfig.class), (AbstractC0515tb) new Q6(new Ub(), String.class)).a(new C0529ub("versionList", SignalsConfig.Purchases.class), (AbstractC0515tb) new C0538v6(new Vb(), String.class));
    }
}
