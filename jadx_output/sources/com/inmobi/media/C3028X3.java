package com.inmobi.media;

import android.view.ViewParent;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.X3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3028X3 extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3042Y3 f1639a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3028X3(C3042Y3 c3042y3) {
        super(2);
        this.f1639a = c3042y3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String trackerName = (String) obj;
        Map macros = (Map) obj2;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        ViewParent parent = this.f1639a.getParent();
        C2931Q3 c2931q3 = parent instanceof C2931Q3 ? (C2931Q3) parent : null;
        if (c2931q3 != null) {
            Intrinsics.checkNotNullParameter(trackerName, "trackerName");
            Intrinsics.checkNotNullParameter(macros, "macros");
            InterfaceC2972T3 interfaceC2972T3 = c2931q3.f1464d;
            if (interfaceC2972T3 != null) {
                Intrinsics.checkNotNullParameter(trackerName, "trackerName");
                Intrinsics.checkNotNullParameter(macros, "macros");
                InterfaceC3411x interfaceC3411x = ((C2902O4) interfaceC2972T3).f1333a.f1364b;
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = interfaceC3411x instanceof GestureDetectorOnGestureListenerC3049Ya ? (GestureDetectorOnGestureListenerC3049Ya) interfaceC3411x : null;
                if (gestureDetectorOnGestureListenerC3049Ya != null) {
                    gestureDetectorOnGestureListenerC3049Ya.m1956a(trackerName, macros);
                }
            }
        }
        return Unit.INSTANCE;
    }
}
