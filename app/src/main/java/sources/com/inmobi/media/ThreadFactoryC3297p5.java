package com.inmobi.media;

import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p5 */
/* JADX INFO: loaded from: classes6.dex */
public final class ThreadFactoryC3297p5 implements ThreadFactory {

    /* JADX INFO: renamed from: a */
    public final boolean f2430a;

    /* JADX INFO: renamed from: b */
    public final String f2431b;

    public ThreadFactoryC3297p5(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f2430a = z;
        this.f2431b = AbstractC3157g0.m2142a("TIM-", name);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2340a() {
        return this.f2430a;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable r) {
        Intrinsics.checkNotNullParameter(r, "r");
        try {
            Thread thread = new Thread(r, this.f2431b);
            thread.setDaemon(this.f2430a);
            return thread;
        } catch (InternalError e) {
            e.toString();
            return null;
        }
    }

    public /* synthetic */ ThreadFactoryC3297p5(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? false : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ThreadFactoryC3297p5(String name) {
        this(name, false);
        Intrinsics.checkNotNullParameter(name, "name");
    }
}
