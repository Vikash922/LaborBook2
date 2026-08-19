package com.inmobi.media;

import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class F extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ I f111a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(I i) {
        super(0);
        this.f111a = i;
    }

    public final void a() {
        I i = this.f111a;
        i.getClass();
        E3 e3 = E3.f104a;
        if (e3.A()) {
            Ya view = i.f134a;
            H windowInsetListener = i.l;
            InterfaceC0298f5 interfaceC0298f5 = i.d;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(windowInsetListener, "windowInsetListener");
            Pd listener = new Pd(null, windowInsetListener, interfaceC0298f5);
            if (e3.F()) {
                listener.c = view;
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler", "startListeningToInsets");
                }
                WeakHashMap weakHashMap = Pd.g;
                Object ld = weakHashMap.get(view);
                if (ld == null) {
                    ld = new Ld(view);
                    weakHashMap.put(view, ld);
                }
                Intrinsics.checkNotNullParameter(listener, "listener");
                ((Ld) ld).f172a.add(listener);
                if (interfaceC0298f5 != null) {
                    ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler_INSTANCE", listener + " created - " + weakHashMap.size());
                }
            } else if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("WindowInsetsHandler", "WindowInsetsHandler is not supported for this version");
            }
            i.k = listener;
        } else {
            InterfaceC0298f5 interfaceC0298f52 = i.d;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c("AdExposureTracker", "Cannot calculate curved areas for this Android OS");
            }
        }
        final I i2 = this.f111a;
        i2.j = i2.h.scheduleWithFixedDelay(new Runnable() { // from class: com.inmobi.media.F$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                F.a(i2);
            }
        }, 0L, this.f111a.b, TimeUnit.MILLISECONDS);
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* bridge */ /* synthetic */ Object invoke() {
        a();
        return Unit.INSTANCE;
    }

    public static final void a(I this$0) {
        InterfaceC0298f5 interfaceC0298f5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Throwable thM599exceptionOrNullimpl = Result.m599exceptionOrNullimpl(AbstractC0592z2.a(new E(this$0)));
        if (thM599exceptionOrNullimpl == null || (interfaceC0298f5 = this$0.d) == null) {
            return;
        }
        ((C0314g5) interfaceC0298f5).b("AdExposureTracker", "Error calculating exposure metrics - " + thM599exceptionOrNullimpl.getMessage());
    }
}
