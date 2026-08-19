package com.inmobi.media;

import java.lang.Thread;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.g3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3160g3 extends AbstractC3445z3 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: b */
    public final Thread.UncaughtExceptionHandler f2087b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3160g3(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C2691A3 listener) {
        super(listener);
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f2087b = uncaughtExceptionHandler;
    }

    @Override // com.inmobi.media.AbstractC3445z3
    /* JADX INFO: renamed from: a */
    public final void mo2011a() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // com.inmobi.media.AbstractC3445z3
    /* JADX INFO: renamed from: b */
    public final void mo2012b() {
        Thread.setDefaultUncaughtExceptionHandler(this.f2087b);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread t, Throwable e) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(e, "e");
        this.f2788a.m833a(new C3175h3(t, e));
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f2087b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(t, e);
        }
    }
}
