package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0219a3 implements J2 {
    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        List<String> listEmptyList;
        AdConfig.ContextualDataConfig contextualData;
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this) {
            C0249c3 c0249c3 = C0249c3.f318a;
            Intrinsics.checkNotNullExpressionValue("c3", "<get-TAG>(...)");
            C0249c3.e = (AdConfig) config;
            String str = C0249c3.g;
            AdConfig adConfig = C0249c3.e;
            if (adConfig == null || (contextualData = adConfig.getContextualData()) == null || (listEmptyList = contextualData.getSkipFields()) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(C0265d3.j);
            arrayList.removeAll(listEmptyList);
            String strJoinToString$default = CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
            C0249c3.g = strJoinToString$default;
            if (!Intrinsics.areEqual(strJoinToString$default, str)) {
                c0249c3.e();
            }
            C0249c3.a();
            Unit unit = Unit.INSTANCE;
        }
    }
}
