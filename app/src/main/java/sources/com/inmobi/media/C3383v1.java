package com.inmobi.media;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: renamed from: com.inmobi.media.v1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3383v1 implements ReadOnlyProperty {

    /* JADX INFO: renamed from: a */
    public final Lambda f2674a;

    /* JADX INFO: renamed from: b */
    public final boolean f2675b;

    /* JADX INFO: renamed from: c */
    public volatile Object f2676c;

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f2677d;

    /* JADX INFO: renamed from: e */
    public boolean f2678e;

    public /* synthetic */ C3383v1(Integer num, Function0 function0, boolean z, int i) {
        this((Object) num, function0, (i & 4) != 0 ? false : z, false);
    }

    /* JADX INFO: renamed from: a */
    public final void m2497a() {
        if (this.f2677d.compareAndSet(false, true)) {
            this.f2678e = true;
            int i = AbstractC3251m4.f2318a;
            ((ScheduledThreadPoolExecutor) AbstractC3251m4.f2319b.getValue()).submit(new Runnable() { // from class: com.inmobi.media.v1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3383v1.m2496a(this.f$0);
                }
            });
        }
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public final Object getValue(Object obj, KProperty property) {
        Intrinsics.checkNotNullParameter(property, "property");
        if (this.f2675b || !this.f2678e) {
            m2497a();
        }
        return this.f2676c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3383v1(Object obj, Function0 refreshLogic, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(refreshLogic, "refreshLogic");
        this.f2674a = (Lambda) refreshLogic;
        this.f2675b = z;
        this.f2676c = obj;
        this.f2677d = new AtomicBoolean(false);
        if (z2) {
            m2497a();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    /* JADX INFO: renamed from: a */
    public static final void m2496a(C3383v1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f2676c = this$0.f2674a.invoke();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this$0.f2677d.set(false);
            throw th;
        }
        this$0.f2677d.set(false);
    }
}
