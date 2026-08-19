package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3070a3 implements InterfaceC2825J2 {
    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        List<String> listEmptyList;
        AdConfig.ContextualDataConfig contextualData;
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this) {
            C3100c3 c3100c3 = C3100c3.f1911a;
            Intrinsics.checkNotNullExpressionValue("c3", "<get-TAG>(...)");
            C3100c3.f1915e = (AdConfig) config;
            String str = C3100c3.f1917g;
            AdConfig adConfig = C3100c3.f1915e;
            if (adConfig == null || (contextualData = adConfig.getContextualData()) == null || (listEmptyList = contextualData.getSkipFields()) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(C3115d3.f1975j);
            arrayList.removeAll(listEmptyList);
            String strJoinToString$default = CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
            C3100c3.f1917g = strJoinToString$default;
            if (!Intrinsics.areEqual(strJoinToString$default, str)) {
                c3100c3.m2044e();
            }
            C3100c3.m2039a();
            Unit unit = Unit.INSTANCE;
        }
    }
}
