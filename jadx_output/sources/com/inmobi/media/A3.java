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

/* JADX INFO: loaded from: classes6.dex */
public final class A3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile CrashConfig f72a;
    public final C0333h7 b;
    public final List c;

    public A3(Context context, CrashConfig crashConfig, C0333h7 eventBus) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        this.f72a = crashConfig;
        this.b = eventBus;
        List listSynchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(listSynchronizedList, "synchronizedList(...)");
        this.c = listSynchronizedList;
        if (this.f72a.getCrashConfig().getEnabled()) {
            listSynchronizedList.add(new C0312g3(Thread.getDefaultUncaughtExceptionHandler(), this));
        }
        if (this.f72a.getAnr().getAppExitReason().getEnabled() && E3.f104a.z()) {
            listSynchronizedList.add(new C0217a1(context, this, this.f72a.getAnr().getAppExitReason().getIncidentWaitInterval(), this.f72a.getAnr().getAppExitReason().getMaxNumberOfLines()));
        }
        if (this.f72a.getAnr().getWatchdog().getEnabled()) {
            listSynchronizedList.add(new C0230b(this.f72a.getAnr().getWatchdog().getInterval(), this));
        }
    }

    public final void a(C0565x5 incidentEvent) {
        int i;
        Intrinsics.checkNotNullParameter(incidentEvent, "incidentEvent");
        if ((incidentEvent instanceof C0232b1) && this.f72a.getAnr().getAppExitReason().getEnabled()) {
            i = Opcodes.DCMPG;
        } else if ((incidentEvent instanceof C0329h3) && this.f72a.getCrashConfig().getEnabled()) {
            i = Opcodes.FCMPG;
        } else if (!(incidentEvent instanceof zd) || !this.f72a.getAnr().getWatchdog().getEnabled()) {
            return;
        } else {
            i = Opcodes.DCMPL;
        }
        this.b.b(new C0233b2(i, incidentEvent.f238a, MapsKt.mapOf(TuplesKt.to("data", incidentEvent))));
    }
}
