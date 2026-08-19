package com.inmobi.media;

import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.F */
/* JADX INFO: loaded from: classes6.dex */
public final class C2762F extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2807I f1014a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2762F(C2807I c2807i) {
        super(0);
        this.f1014a = c2807i;
    }

    /* JADX INFO: renamed from: a */
    public final void m1113a() {
        C2807I c2807i = this.f1014a;
        c2807i.getClass();
        C2751E3 c2751e3 = C2751E3.f962a;
        if (c2751e3.m1007A()) {
            GestureDetectorOnGestureListenerC3049Ya view = c2807i.f1089a;
            C2792H windowInsetListener = c2807i.f1100l;
            InterfaceC3147f5 interfaceC3147f5 = c2807i.f1092d;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(windowInsetListener, "windowInsetListener");
            C2926Pd listener = new C2926Pd(null, windowInsetListener, interfaceC3147f5);
            if (c2751e3.m1012F()) {
                listener.f1412c = view;
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler", "startListeningToInsets");
                }
                WeakHashMap weakHashMap = C2926Pd.f1409g;
                Object c2866Ld = weakHashMap.get(view);
                if (c2866Ld == null) {
                    c2866Ld = new C2866Ld(view);
                    weakHashMap.put(view, c2866Ld);
                }
                Intrinsics.checkNotNullParameter(listener, "listener");
                ((C2866Ld) c2866Ld).f1240a.add(listener);
                if (interfaceC3147f5 != null) {
                    ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler_INSTANCE", listener + " created - " + weakHashMap.size());
                }
            } else if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("WindowInsetsHandler", "WindowInsetsHandler is not supported for this version");
            }
            c2807i.f1099k = listener;
        } else {
            InterfaceC3147f5 interfaceC3147f52 = c2807i.f1092d;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c("AdExposureTracker", "Cannot calculate curved areas for this Android OS");
            }
        }
        final C2807I c2807i2 = this.f1014a;
        c2807i2.f1098j = c2807i2.f1096h.scheduleWithFixedDelay(new Runnable() { // from class: com.inmobi.media.F$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2762F.m1112a(c2807i2);
            }
        }, 0L, this.f1014a.f1090b, TimeUnit.MILLISECONDS);
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* bridge */ /* synthetic */ Object invoke() {
        m1113a();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1112a(C2807I this$0) {
        InterfaceC3147f5 interfaceC3147f5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(AbstractC3444z2.m2631a(new C2747E(this$0)));
        if (thM3328exceptionOrNullimpl == null || (interfaceC3147f5 = this$0.f1092d) == null) {
            return;
        }
        ((C3162g5) interfaceC3147f5).m2151b("AdExposureTracker", "Error calculating exposure metrics - " + thM3328exceptionOrNullimpl.getMessage());
    }
}
