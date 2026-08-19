package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.AbstractC0515tb;
import com.inmobi.media.C0503t;
import com.inmobi.media.C0517u;
import com.inmobi.media.C0529ub;
import com.inmobi.media.C0531v;
import com.inmobi.media.C0538v6;
import com.inmobi.media.Q6;
import com.inmobi.media.U5;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    public static U5 a() {
        return new U5().a(new C0529ub("cache", AdConfig.class), (AbstractC0515tb) new Q6(new a(), AdConfig.CacheConfig.class)).a(new C0529ub("allowedContentType", AdConfig.VastVideoConfig.class), (AbstractC0515tb) new C0538v6(new C0503t(), String.class)).a(new C0529ub("gestures", AdConfig.RenderingConfig.class), (AbstractC0515tb) new C0538v6(new C0517u(), Integer.TYPE)).a(new C0529ub("skipFields", AdConfig.ContextualDataConfig.class), (AbstractC0515tb) new C0538v6(new C0531v(), String.class));
    }
}
