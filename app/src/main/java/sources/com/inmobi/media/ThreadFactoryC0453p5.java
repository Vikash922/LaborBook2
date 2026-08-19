package com.inmobi.media;

import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class ThreadFactoryC0453p5 implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f453a;
    public final String b;

    public ThreadFactoryC0453p5(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f453a = z;
        this.b = AbstractC0309g0.a("TIM-", name);
    }

    public final boolean a() {
        return this.f453a;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable r) {
        Intrinsics.checkNotNullParameter(r, "r");
        try {
            Thread thread = new Thread(r, this.b);
            thread.setDaemon(this.f453a);
            return thread;
        } catch (InternalError e) {
            e.toString();
            return null;
        }
    }

    public /* synthetic */ ThreadFactoryC0453p5(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? false : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ThreadFactoryC0453p5(String name) {
        this(name, false);
        Intrinsics.checkNotNullParameter(name, "name");
    }
}
