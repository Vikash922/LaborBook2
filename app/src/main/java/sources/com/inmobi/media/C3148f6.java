package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.f6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3148f6 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3163g6 f2061a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3148f6(C3163g6 c3163g6) {
        super(1);
        this.f2061a = c3163g6;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C3084b2 it = (C3084b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f1872a;
        if (i != 1 && i != 2) {
            switch (i) {
                case Opcodes.FCMPG /* 150 */:
                case Opcodes.DCMPL /* 151 */:
                case Opcodes.DCMPG /* 152 */:
                    Map map = it.f1874c;
                    if (map != null && map.containsKey("data")) {
                        Object obj2 = it.f1874c.get("data");
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent");
                        this.f2061a.m2161b((C3417x5) obj2);
                    }
                    break;
            }
        } else {
            C3163g6 c3163g6 = this.f2061a;
            C3161g4 c3161g4 = c3163g6.f2100b;
            if (c3161g4 != null) {
                ScheduledExecutorService scheduledExecutorService = c3161g4.f2095h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c3161g4.f2095h = null;
                c3161g4.f2092e.set(false);
                c3161g4.f2093f.set(true);
                c3161g4.f2094g.clear();
                c3161g4.f2096i = null;
            }
            c3163g6.f2100b = null;
            C2849Kb.m1256f().m2214a(c3163g6.f2102d);
        }
        return Unit.INSTANCE;
    }
}
