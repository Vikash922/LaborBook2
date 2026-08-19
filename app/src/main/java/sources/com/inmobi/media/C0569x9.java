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

/* JADX INFO: renamed from: com.inmobi.media.x9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0569x9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q0 f522a;

    public C0569x9(Q0 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f522a = adUnit;
    }

    public final byte[] a() {
        S sH0 = this.f522a.h0();
        HashMap mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("h-user-agent", Kb.k()));
        if (mapHashMapOf != null) {
            HashMap map = sH0.k;
            if (map != null) {
                map.putAll(mapHashMapOf);
            }
        } else {
            sH0.getClass();
        }
        sH0.f();
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a(CommonCssConstants.ROOT, Kb.b(), null);
        RootConfig rootConfig = configA instanceof RootConfig ? (RootConfig) configA : null;
        if (rootConfig != null && rootConfig.getMonetizationDisabled()) {
            throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED), (short) 2012);
        }
        if (!sH0.d) {
            throw new K(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED), (short) 2141);
        }
        byte[] bytes = sH0.c().getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }
}
