package com.inmobi.media;

import java.util.concurrent.FutureTask;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class A2 extends FutureTask implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile V9 f71a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A2(Runnable runnable, V9 priority) {
        super(runnable, null);
        Intrinsics.checkNotNullParameter(priority, "priority");
        this.f71a = priority;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        A2 other = (A2) obj;
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.compare(this.f71a.f264a, other.f71a.f264a);
    }
}
