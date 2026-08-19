package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.AbstractC3363tb;
import com.inmobi.media.C2934Q6;
import com.inmobi.media.C2988U5;
import com.inmobi.media.C3351t;
import com.inmobi.media.C3366u;
import com.inmobi.media.C3378ub;
import com.inmobi.media.C3381v;
import com.inmobi.media.C3388v6;

/* JADX INFO: renamed from: com.inmobi.commons.core.configs.b */
/* JADX INFO: loaded from: classes6.dex */
public final class C2682b {
    /* JADX INFO: renamed from: a */
    public static C2988U5 m823a() {
        return new C2988U5().m1842a(new C3378ub("cache", AdConfig.class), (AbstractC3363tb) new C2934Q6(new C2681a(), AdConfig.CacheConfig.class)).m1842a(new C3378ub("allowedContentType", AdConfig.VastVideoConfig.class), (AbstractC3363tb) new C3388v6(new C3351t(), String.class)).m1842a(new C3378ub("gestures", AdConfig.RenderingConfig.class), (AbstractC3363tb) new C3388v6(new C3366u(), Integer.TYPE)).m1842a(new C3378ub("skipFields", AdConfig.ContextualDataConfig.class), (AbstractC3363tb) new C3388v6(new C3381v(), String.class));
    }
}
