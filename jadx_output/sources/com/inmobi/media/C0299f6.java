package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.f6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0299f6 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0315g6 f348a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0299f6(C0315g6 c0315g6) {
        super(1);
        this.f348a = c0315g6;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0233b2 it = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f310a;
        if (i != 1 && i != 2) {
            switch (i) {
                case Opcodes.FCMPG /* 150 */:
                case Opcodes.DCMPL /* 151 */:
                case Opcodes.DCMPG /* 152 */:
                    Map map = it.c;
                    if (map != null && map.containsKey("data")) {
                        Object obj2 = it.c.get("data");
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent");
                        this.f348a.b((C0565x5) obj2);
                    }
                    break;
            }
        } else {
            C0315g6 c0315g6 = this.f348a;
            C0313g4 c0313g4 = c0315g6.b;
            if (c0313g4 != null) {
                ScheduledExecutorService scheduledExecutorService = c0313g4.h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c0313g4.h = null;
                c0313g4.e.set(false);
                c0313g4.f.set(true);
                c0313g4.g.clear();
                c0313g4.i = null;
            }
            c0315g6.b = null;
            Kb.f().a(c0315g6.d);
        }
        return Unit.INSTANCE;
    }
}
