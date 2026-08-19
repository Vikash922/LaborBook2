package com.inmobi.media;

import com.inmobi.ads.rendering.InMobiAdActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.Ma */
/* JADX INFO: loaded from: classes6.dex */
public final class C2878Ma extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C2878Ma f1266a = new C2878Ma();

    public C2878Ma() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = InMobiAdActivity.f788l;
        if (gestureDetectorOnGestureListenerC3049Ya != null) {
            gestureDetectorOnGestureListenerC3049Ya.m1978m();
        }
        return Unit.INSTANCE;
    }
}
