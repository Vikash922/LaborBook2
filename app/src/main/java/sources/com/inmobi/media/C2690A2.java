package com.inmobi.media;

import java.util.concurrent.FutureTask;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.A2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2690A2 extends FutureTask implements Comparable {

    /* JADX INFO: renamed from: a */
    public volatile EnumC3006V9 f817a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2690A2(Runnable runnable, EnumC3006V9 priority) {
        super(runnable, null);
        Intrinsics.checkNotNullParameter(priority, "priority");
        this.f817a = priority;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2690A2 other = (C2690A2) obj;
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.compare(this.f817a.f1599a, other.f817a.f1599a);
    }
}
