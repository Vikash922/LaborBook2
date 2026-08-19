package com.inmobi.media;

import android.util.SparseArray;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.Na */
/* JADX INFO: loaded from: classes6.dex */
public final class C2893Na extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a */
    public static final C2893Na f1317a = new C2893Na();

    public C2893Na() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String trackerName = (String) obj;
        Map macros = (Map) obj2;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        SparseArray sparseArray = InMobiAdActivity.f787k;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = InMobiAdActivity.f788l;
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            gestureDetectorOnGestureListenerC3049Ya.m1956a(trackerName, macros);
        }
        return Unit.INSTANCE;
    }
}
