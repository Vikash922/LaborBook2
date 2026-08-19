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

/* JADX INFO: renamed from: com.inmobi.media.n0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3262n0 {

    /* JADX INFO: renamed from: a */
    public final AdConfig.AdQualityConfig f2356a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3147f5 f2357b;

    /* JADX INFO: renamed from: c */
    public final AtomicBoolean f2358c;

    /* JADX INFO: renamed from: d */
    public final AtomicBoolean f2359d;

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f2360e;

    /* JADX INFO: renamed from: f */
    public final CopyOnWriteArrayList f2361f;

    /* JADX INFO: renamed from: g */
    public AdQualityControl f2362g;

    /* JADX INFO: renamed from: h */
    public EnumC3320qd f2363h;

    /* JADX INFO: renamed from: i */
    public AdQualityResult f2364i;

    /* JADX INFO: renamed from: j */
    public String f2365j;

    /* JADX INFO: renamed from: k */
    public JSONObject f2366k;

    /* JADX INFO: renamed from: l */
    public final AtomicBoolean f2367l;

    public C3262n0(AdConfig.AdQualityConfig adQualityConfig, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(adQualityConfig, "adQualityConfig");
        this.f2356a = adQualityConfig;
        this.f2357b = interfaceC3147f5;
        this.f2358c = new AtomicBoolean(false);
        this.f2359d = new AtomicBoolean(false);
        this.f2360e = new AtomicBoolean(false);
        this.f2361f = new CopyOnWriteArrayList();
        this.f2363h = EnumC3320qd.f2470a;
        this.f2365j = "";
        this.f2366k = new JSONObject();
        this.f2367l = new AtomicBoolean(false);
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2308a() {
        if (this.f2358c.get()) {
            m2305a("ad quality session is already in progress. skipping...");
            return false;
        }
        if (!this.f2356a.getEnabled()) {
            m2305a("config kill switch - false. ad quality will skip");
            return false;
        }
        if (this.f2362g == null) {
            m2305a("setup not done. skipping");
            return false;
        }
        EnumC3320qd enumC3320qd = this.f2363h;
        if (enumC3320qd != EnumC3320qd.f2470a && enumC3320qd != EnumC3320qd.f2471b) {
            return true;
        }
        m2305a("ad view is not visible. skipping");
        return false;
    }

    /* JADX INFO: renamed from: a */
    public final void m2302a(AdQualityResult adQualityResult, boolean z) {
        if (adQualityResult.getBeaconUrl().length() == 0) {
            m2305a("beacon is empty");
            return;
        }
        C3422xa process = new C3422xa(adQualityResult);
        C3172h0 c3172h0 = new C3172h0(this, z);
        C3187i0 shouldProcess = C3187i0.f2164a;
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
        C3127e0.m2081a(0L, new C3111d(shouldProcess, process, c3172h0));
    }

    /* JADX INFO: renamed from: a */
    public final void m2303a(final GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya, final long j, final boolean z, final C2863La c2863La) {
        m2305a("isCapture started - " + this.f2367l.get() + ", isReporting - " + z);
        if (this.f2367l.get() && !z) {
            m2304a((Exception) null, "Screenshot process already in progress... skipping...");
        } else {
            gestureDetectorOnGestureListenerC3049Ya.post(new Runnable() { // from class: com.inmobi.media.n0$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3262n0.m2300a(this.f$0, gestureDetectorOnGestureListenerC3049Ya, j, z, c2863La);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2300a(C3262n0 this$0, View adView, long j, boolean z, C2863La c2863La) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adView, "$adView");
        Intrinsics.checkNotNullParameter("AdQualityManager", "tag");
        Intrinsics.checkNotNullParameter("starting capture - draw", "message");
        Log.i("AdQualityManager", "starting capture - draw");
        this$0.getClass();
        Intrinsics.checkNotNullParameter(adView, "adView");
        C2789Gb process = new C2789Gb(adView, this$0.f2356a);
        if (!z) {
            this$0.f2361f.add(process);
        }
        C3232l0 c3232l0 = new C3232l0(this$0, process, z, c2863La);
        C3247m0 shouldProcess = new C3247m0(this$0);
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
        C3127e0.m2081a(j, new C3111d(shouldProcess, process, c3232l0));
        this$0.f2367l.set(!z);
    }

    /* JADX INFO: renamed from: a */
    public final void m2301a(final Activity activity, final long j, final boolean z, final C2863La c2863La) {
        m2305a("isCapture started - " + this.f2367l.get() + ", isReporting - " + z);
        if (this.f2367l.get() && !z) {
            m2304a((Exception) null, "Screenshot process already in progress... skipping...");
        } else {
            activity.getWindow().getDecorView().post(new Runnable() { // from class: com.inmobi.media.n0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3262n0.m2299a(this.f$0, activity, j, z, c2863La);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2299a(C3262n0 this$0, Activity activity, long j, boolean z, C2863La c2863La) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        this$0.m2305a("activity is visible");
        Window window = activity.getWindow();
        Intrinsics.checkNotNullExpressionValue(window, "getWindow(...)");
        Intrinsics.checkNotNullParameter(window, "window");
        C2964S9 process = new C2964S9(window, this$0.f2356a);
        if (!z) {
            this$0.f2361f.add(process);
        }
        C3232l0 c3232l0 = new C3232l0(this$0, process, z, c2863La);
        C3247m0 shouldProcess = new C3247m0(this$0);
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
        ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
        C3127e0.m2081a(j, new C3111d(shouldProcess, process, c3232l0));
        this$0.f2367l.set(!z);
    }

    /* JADX INFO: renamed from: a */
    public final void m2306a(String str, byte[] bArr, boolean z) {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            C3022Wb process = new C3022Wb(contextM1254d.getFilesDir().getAbsolutePath() + "/adQuality/screenshots", bArr);
            if (!z) {
                this.f2361f.add(process);
            }
            C3202j0 c3202j0 = new C3202j0(this, z, process, str);
            C3217k0 shouldProcess = C3217k0.f2251a;
            Intrinsics.checkNotNullParameter(process, "process");
            Intrinsics.checkNotNullParameter(shouldProcess, "shouldProcess");
            ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
            C3127e0.m2081a(0L, new C3111d(shouldProcess, process, c3202j0));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0097  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2307a(boolean r13) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3262n0.m2307a(boolean):void");
    }

    /* JADX INFO: renamed from: a */
    public final void m2305a(String str) {
        InterfaceC3147f5 interfaceC3147f5 = this.f2357b;
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("AdQualityManager", str);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2304a(Exception exc, String str) {
        Unit unit;
        if (exc != null) {
            InterfaceC3147f5 interfaceC3147f5 = this.f2357b;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2148a("AdQualityManager", str, exc);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        InterfaceC3147f5 interfaceC3147f52 = this.f2357b;
        if (interfaceC3147f52 != null) {
            ((C3162g5) interfaceC3147f52).m2151b("AdQualityManager", AbstractC3157g0.m2142a("Error with null exception : ", str));
            Unit unit2 = Unit.INSTANCE;
        }
    }
}
