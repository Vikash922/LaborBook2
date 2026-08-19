package com.inmobi.media;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class r extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0298f5 f466a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ long c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(InterfaceC0298f5 interfaceC0298f5, Context context, long j) {
        super(0);
        this.f466a = interfaceC0298f5;
        this.b = context;
        this.c = j;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Unit invoke() {
        if (!C0489s.d.compareAndSet(false, true)) {
            InterfaceC0298f5 interfaceC0298f5 = this.f466a;
            if (interfaceC0298f5 == null) {
                return null;
            }
            ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Audio volume tracking is already started");
            return Unit.INSTANCE;
        }
        C0489s c0489s = C0489s.f476a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue();
        final InterfaceC0298f5 interfaceC0298f52 = this.f466a;
        final Context context = this.b;
        final long j = this.c;
        scheduledThreadPoolExecutor.execute(new Runnable() { // from class: com.inmobi.media.r$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                r.a(interfaceC0298f52, context, j);
            }
        });
        return Unit.INSTANCE;
    }

    public static final void a(InterfaceC0298f5 interfaceC0298f5, Context context, long j) {
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).c("AdAudioTracker", "Starting audio volume tracking");
        }
        if (C0489s.b == null) {
            Object systemService = context.getSystemService("audio");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            C0489s.b = (AudioManager) systemService;
        }
        C0489s c0489s = C0489s.f476a;
        C0489s.a(j);
        C0462q c0462q = new C0462q(j);
        C0489s.h = c0462q;
        Kb.f().a(new int[]{102, 101}, c0462q);
        C0489s.c = new C0417n();
        context.registerReceiver(C0489s.c, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
        C0489s.a(Float.valueOf(c0489s.a()));
    }
}
