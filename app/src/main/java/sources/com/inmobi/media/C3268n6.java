package com.inmobi.media;

import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.n6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3268n6 extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3283o6 f2381a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3268n6(C3283o6 c3283o6) {
        super(2);
        this.f2381a = c3283o6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String trackerName = (String) obj;
        Map macros = (Map) obj2;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        C2951Ra c2951Ra = this.f2381a.f2408d;
        if (c2951Ra != null) {
            Intrinsics.checkNotNullParameter(trackerName, "trackerName");
            Intrinsics.checkNotNullParameter(macros, "macros");
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = c2951Ra.f1508a;
            if (!gestureDetectorOnGestureListenerC3049Ya.f1741e) {
                gestureDetectorOnGestureListenerC3049Ya.m1956a(trackerName, macros);
            }
        }
        return Unit.INSTANCE;
    }
}
