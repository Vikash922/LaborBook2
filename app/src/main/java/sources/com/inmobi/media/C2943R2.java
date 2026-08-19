package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: renamed from: com.inmobi.media.R2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2943R2 {
    /* JADX INFO: renamed from: a */
    public static final Pair m1757a(TreeMap treeMap) {
        if (treeMap.isEmpty()) {
            return TuplesKt.m2729to(CollectionsKt.emptyList(), CollectionsKt.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C2870M2 c2870m2 = new C2870M2();
        for (Map.Entry entry : treeMap.entrySet()) {
            String str = (String) entry.getKey();
            long jM1332a = c2870m2.m1332a(str, ((Config) entry.getValue()).getAccountId$media_release());
            arrayList.add(str);
            arrayList2.add(Long.valueOf(jM1332a));
        }
        return TuplesKt.m2729to(arrayList, arrayList2);
    }
}
