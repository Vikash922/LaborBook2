package com.inmobi.media;

import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.e4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0282e4 extends R1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0282e4(String tableName, String tableSchema) {
        super(tableName, tableSchema);
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Intrinsics.checkNotNullParameter(tableSchema, "tableSchema");
    }

    public final void a(ArrayList eventIdList) {
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
        a("id IN (" + ((Object) sb) + ')', null);
        Intrinsics.checkNotNullExpressionValue("e4", "TAG");
    }

    public final ArrayList b(int i) {
        Intrinsics.checkNotNullExpressionValue("e4", "TAG");
        ArrayList<S1> arrayListA = R1.a(this, null, null, null, null, "ts ASC", Integer.valueOf(i), 15);
        ArrayList arrayList = new ArrayList();
        for (S1 s1 : arrayListA) {
            if (s1 != null) {
                arrayList.add(s1);
            }
        }
        return arrayList;
    }

    public final void a(long j) {
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            C0284e6.a(AbstractC0268d6.a(contextD, "batch_processing_info"), this.f229a.concat("_last_batch_process"), j, false, 4, (Object) null);
        }
    }

    public final void a(int i) {
        ArrayList<S1> arrayListA = R1.a(this, null, null, null, null, "ts ASC", Integer.valueOf(i), 15);
        ArrayList<Integer> arrayList = new ArrayList();
        for (S1 s1 : arrayListA) {
            Intrinsics.checkNotNullExpressionValue("e4", "TAG");
            arrayList.add(s1 != null ? Integer.valueOf(s1.c) : null);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Integer num : arrayList) {
            if (num != null) {
                arrayList2.add(num);
            }
        }
        a(arrayList2);
    }
}
