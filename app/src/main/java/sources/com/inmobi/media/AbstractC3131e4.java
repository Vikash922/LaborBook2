package com.inmobi.media;

import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3131e4 extends AbstractC2942R1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC3131e4(String tableName, String tableSchema) {
        super(tableName, tableSchema);
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Intrinsics.checkNotNullParameter(tableSchema, "tableSchema");
    }

    /* JADX INFO: renamed from: a */
    public final void m2095a(ArrayList eventIdList) {
        Intrinsics.checkNotNullParameter(eventIdList, "eventIdList");
        if (eventIdList.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        int size = eventIdList.size() - 1;
        for (int i = 0; i < size; i++) {
            sb.append(eventIdList.get(i)).append(",");
        }
        sb.append(eventIdList.get(eventIdList.size() - 1));
        m1752a("id IN (" + ((Object) sb) + ')', null);
        Intrinsics.checkNotNullExpressionValue("e4", "TAG");
    }

    /* JADX INFO: renamed from: b */
    public final ArrayList m2096b(int i) {
        Intrinsics.checkNotNullExpressionValue("e4", "TAG");
        ArrayList<AbstractC2956S1> arrayListM1751a = AbstractC2942R1.m1751a(this, null, null, null, null, "ts ASC", Integer.valueOf(i), 15);
        ArrayList arrayList = new ArrayList();
        for (AbstractC2956S1 abstractC2956S1 : arrayListM1751a) {
            if (abstractC2956S1 != null) {
                arrayList.add(abstractC2956S1);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: a */
    public final void m2094a(long j) {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6.m2100a(AbstractC3118d6.m2058a(contextM1254d, "batch_processing_info"), this.f1489a.concat("_last_batch_process"), j, false, 4, (Object) null);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2093a(int i) {
        ArrayList<AbstractC2956S1> arrayListM1751a = AbstractC2942R1.m1751a(this, null, null, null, null, "ts ASC", Integer.valueOf(i), 15);
        ArrayList<Integer> arrayList = new ArrayList();
        for (AbstractC2956S1 abstractC2956S1 : arrayListM1751a) {
            Intrinsics.checkNotNullExpressionValue("e4", "TAG");
            arrayList.add(abstractC2956S1 != null ? Integer.valueOf(abstractC2956S1.f1527c) : null);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Integer num : arrayList) {
            if (num != null) {
                arrayList2.add(num);
            }
        }
        m2095a(arrayList2);
    }
}
