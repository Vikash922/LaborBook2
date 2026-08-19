package com.inmobi.media;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.r */
/* JADX INFO: loaded from: classes6.dex */
public final class C3321r extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC3147f5 f2474a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Context f2475b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ long f2476c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3321r(InterfaceC3147f5 interfaceC3147f5, Context context, long j) {
        super(0);
        this.f2474a = interfaceC3147f5;
        this.f2475b = context;
        this.f2476c = j;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Unit invoke() {
        if (!C3336s.f2520d.compareAndSet(false, true)) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2474a;
            if (interfaceC3147f5 == null) {
                return null;
            }
            ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Audio volume tracking is already started");
            return Unit.INSTANCE;
        }
        C3336s c3336s = C3336s.f2517a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue();
        final InterfaceC3147f5 interfaceC3147f52 = this.f2474a;
        final Context context = this.f2475b;
        final long j = this.f2476c;
        scheduledThreadPoolExecutor.execute(new Runnable() { // from class: com.inmobi.media.r$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3321r.m2359a(interfaceC3147f52, context, j);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2359a(InterfaceC3147f5 interfaceC3147f5, Context context, long j) {
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2152c("AdAudioTracker", "Starting audio volume tracking");
        }
        if (C3336s.f2518b == null) {
            Object systemService = context.getSystemService("audio");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            C3336s.f2518b = (AudioManager) systemService;
        }
        C3336s c3336s = C3336s.f2517a;
        C3336s.m2386a(j);
        C3306q c3306q = new C3306q(j);
        C3336s.f2524h = c3306q;
        C2849Kb.m1256f().m2215a(new int[]{102, 101}, c3306q);
        C3336s.f2519c = new C3261n();
        context.registerReceiver(C3336s.f2519c, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
        C3336s.m2388a(Float.valueOf(c3336s.m2396a()));
    }
}
