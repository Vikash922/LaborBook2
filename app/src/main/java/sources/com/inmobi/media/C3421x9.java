package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.RootConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: com.inmobi.media.x9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3421x9 {

    /* JADX INFO: renamed from: a */
    public final AbstractC2928Q0 f2744a;

    public C3421x9(AbstractC2928Q0 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f2744a = adUnit;
    }

    /* JADX INFO: renamed from: a */
    public final byte[] m2596a() {
        C2954S c2954sM1677h0 = this.f2744a.m1677h0();
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("h-user-agent", C2849Kb.m1259k()));
        if (mapHashMapOf != null) {
            HashMap map = c2954sM1677h0.f2284k;
            if (map != null) {
                map.putAll(mapHashMapOf);
            }
        } else {
            c2954sM1677h0.getClass();
        }
        c2954sM1677h0.mo1146f();
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a(CommonCssConstants.ROOT, C2849Kb.m1248b(), null);
        RootConfig rootConfig = configM1161a instanceof RootConfig ? (RootConfig) configM1161a : null;
        if (rootConfig != null && rootConfig.getMonetizationDisabled()) {
            throw new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED), (short) 2012);
        }
        if (!c2954sM1677h0.f2277d) {
            throw new C2837K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED), (short) 2141);
        }
        byte[] bytes = c2954sM1677h0.m2288c().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }
}
