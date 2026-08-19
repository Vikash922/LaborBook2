package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.A3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2691A3 {

    /* JADX INFO: renamed from: a */
    public volatile CrashConfig f818a;

    /* JADX INFO: renamed from: b */
    public final C3179h7 f819b;

    /* JADX INFO: renamed from: c */
    public final List f820c;

    public C2691A3(Context context, CrashConfig crashConfig, C3179h7 eventBus) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        this.f818a = crashConfig;
        this.f819b = eventBus;
        List listSynchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(listSynchronizedList, "synchronizedList(...)");
        this.f820c = listSynchronizedList;
        if (this.f818a.getCrashConfig().getEnabled()) {
            listSynchronizedList.add(new C3160g3(Thread.getDefaultUncaughtExceptionHandler(), this));
        }
        if (this.f818a.getAnr().getAppExitReason().getEnabled() && C2751E3.f962a.m1040z()) {
            listSynchronizedList.add(new C3068a1(context, this, this.f818a.getAnr().getAppExitReason().getIncidentWaitInterval(), this.f818a.getAnr().getAppExitReason().getMaxNumberOfLines()));
        }
        if (this.f818a.getAnr().getWatchdog().getEnabled()) {
            listSynchronizedList.add(new C3081b(this.f818a.getAnr().getWatchdog().getInterval(), this));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m833a(C3417x5 incidentEvent) {
        int i;
        Intrinsics.checkNotNullParameter(incidentEvent, "incidentEvent");
        if ((incidentEvent instanceof C3083b1) && this.f818a.getAnr().getAppExitReason().getEnabled()) {
            i = Opcodes.DCMPG;
        } else if ((incidentEvent instanceof C3175h3) && this.f818a.getCrashConfig().getEnabled()) {
            i = Opcodes.FCMPG;
        } else if (!(incidentEvent instanceof C3455zd) || !this.f818a.getAnr().getWatchdog().getEnabled()) {
            return;
        } else {
            i = Opcodes.DCMPL;
        }
        this.f819b.m2216b(new C3084b2(i, incidentEvent.f1525a, MapsKt.mapOf(TuplesKt.m2729to("data", incidentEvent))));
    }
}
