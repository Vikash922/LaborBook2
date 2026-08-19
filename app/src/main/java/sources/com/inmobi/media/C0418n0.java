package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.adquality.models.AdQualityResult;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0418n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdConfig.AdQualityConfig f428a;
    public final InterfaceC0298f5 b;
    public final AtomicBoolean c;
    public final AtomicBoolean d;
    public final AtomicBoolean e;
    public final CopyOnWriteArrayList f;
    public AdQualityControl g;
    public qd h;
    public AdQualityResult i;
    public String j;
    public JSONObject k;
    public final AtomicBoolean l;

    public C0418n0(AdConfig.AdQualityConfig adQualityConfig, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(adQualityConfig, "adQualityConfig");
        this.f428a = adQualityConfig;
        this.b = interfaceC0298f5;
        this.c = new AtomicBoolean(false);
        this.d = new AtomicBoolean(false);
        this.e = new AtomicBoolean(false);
        this.f = new CopyOnWriteArrayList();
        this.h = qd.f465a;
        this.j = "";
        this.k = new JSONObject();
        this.l = new AtomicBoolean(false);
    }

    public final boolean a() {
        if (this.c.get()) {
            a("ad quality session is already in progress. skipping...");
            return false;
        }
        if (!this.f428a.getEnabled()) {
            a("config kill switch - false. ad quality will skip");
            return false;
        }
        if (this.g == null) {
            a("setup not done. skipping");
            return false;
        }
        qd qdVar = this.h;
        if (qdVar != qd.f465a && qdVar != qd.b) {
            return true;
        }
        a("ad view is not visible. skipping");
        return false;
    }

    public final void a(AdQualityResult adQualityResult, boolean z) {
        if (adQualityResult.getBeaconUrl().length() == 0) {
            a("beacon is empty");
            return;
        }
        C0570xa process = new C0570xa(adQualityResult);
        C0326h0 c0326h0 = new C0326h0(this, z);
        C0341i0 shouldProcess = C0341i0.f380a;
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
        C0277e0.a(0L, new C0261d(shouldProcess, process, c0326h0));
    }

    public final void a(final Ya ya, final long j, final boolean z, final La la) {
        a("isCapture started - " + this.l.get() + ", isReporting - " + z);
        if (this.l.get() && !z) {
            a((Exception) null, "Screenshot process already in progress... skipping...");
        } else {
            ya.post(new Runnable() { // from class: com.inmobi.media.n0$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C0418n0.a(this.f$0, ya, j, z, la);
                }
            });
        }
    }

    public static final void a(C0418n0 this$0, View adView, long j, boolean z, La la) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adView, "$adView");
        Intrinsics.checkNotNullParameter("AdQualityManager", "tag");
        Intrinsics.checkNotNullParameter("starting capture - draw", "message");
        Log.i("AdQualityManager", "starting capture - draw");
        this$0.getClass();
        Intrinsics.checkNotNullParameter(adView, "adView");
        Gb process = new Gb(adView, this$0.f428a);
        if (!z) {
            this$0.f.add(process);
        }
        C0387l0 c0387l0 = new C0387l0(this$0, process, z, la);
        C0403m0 shouldProcess = new C0403m0(this$0);
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
        C0277e0.a(j, new C0261d(shouldProcess, process, c0387l0));
        this$0.l.set(!z);
    }

    public final void a(final Activity activity, final long j, final boolean z, final La la) {
        a("isCapture started - " + this.l.get() + ", isReporting - " + z);
        if (this.l.get() && !z) {
            a((Exception) null, "Screenshot process already in progress... skipping...");
        } else {
            activity.getWindow().getDecorView().post(new Runnable() { // from class: com.inmobi.media.n0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0418n0.a(this.f$0, activity, j, z, la);
                }
            });
        }
    }

    public static final void a(C0418n0 this$0, Activity activity, long j, boolean z, La la) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        this$0.a("activity is visible");
        Window window = activity.getWindow();
        Intrinsics.checkNotNullExpressionValue(window, "getWindow(...)");
        Intrinsics.checkNotNullParameter(window, "window");
        S9 process = new S9(window, this$0.f428a);
        if (!z) {
            this$0.f.add(process);
        }
        C0387l0 c0387l0 = new C0387l0(this$0, process, z, la);
        C0403m0 shouldProcess = new C0403m0(this$0);
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
        C0277e0.a(j, new C0261d(shouldProcess, process, c0387l0));
        this$0.l.set(!z);
    }

    public final void a(String str, byte[] bArr, boolean z) {
        Context contextD = Kb.d();
        if (contextD != null) {
            Wb process = new Wb(contextD.getFilesDir().getAbsolutePath() + "/adQuality/screenshots", bArr);
            if (!z) {
                this.f.add(process);
            }
            C0357j0 c0357j0 = new C0357j0(this, z, process, str);
            C0372k0 shouldProcess = C0372k0.f399a;
            Intrinsics.checkNotNullParameter(process, "process");
            Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
            ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
            C0277e0.a(0L, new C0261d(shouldProcess, process, c0357j0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r13) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0418n0.a(boolean):void");
    }

    public final void a(String str) {
        InterfaceC0298f5 interfaceC0298f5 = this.b;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("AdQualityManager", str);
        }
    }

    public final void a(Exception exc, String str) {
        Unit unit;
        if (exc != null) {
            InterfaceC0298f5 interfaceC0298f5 = this.b;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("AdQualityManager", str, exc);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        InterfaceC0298f5 interfaceC0298f52 = this.b;
        if (interfaceC0298f52 != null) {
            ((C0314g5) interfaceC0298f52).b("AdQualityManager", AbstractC0309g0.a("Error with null exception : ", str));
            Unit unit2 = Unit.INSTANCE;
        }
    }
}
