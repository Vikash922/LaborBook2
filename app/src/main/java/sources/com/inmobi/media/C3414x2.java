package com.inmobi.media;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3414x2 {

    /* JADX INFO: renamed from: a */
    public final GestureDetectorOnGestureListenerC3049Ya f2733a;

    /* JADX INFO: renamed from: b */
    public final boolean f2734b;

    /* JADX INFO: renamed from: c */
    public final boolean f2735c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC3147f5 f2736d;

    public C3414x2(GestureDetectorOnGestureListenerC3049Ya renderView, boolean z, boolean z2, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        this.f2733a = renderView;
        this.f2734b = z;
        this.f2735c = z2;
        this.f2736d = interfaceC3147f5;
    }

    /* JADX INFO: renamed from: a */
    public final void m2591a(final C2896Nd insets) {
        Handler handler;
        Intrinsics.checkNotNullParameter(insets, "insets");
        final ViewGroup viewGroup = (ViewGroup) this.f2733a.getRootView().findViewById(65534);
        if (viewGroup == null || (handler = viewGroup.getHandler()) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.inmobi.media.x2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3414x2.m2589a(this.f$0, viewGroup, insets);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0097  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m2589a(com.inmobi.media.C3414x2 r10, android.view.ViewGroup r11, com.inmobi.media.C2896Nd r12) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3414x2.m2589a(com.inmobi.media.x2, android.view.ViewGroup, com.inmobi.media.Nd):void");
    }

    /* JADX INFO: renamed from: a */
    public final Pair m2590a() {
        float f = AbstractC2886N3.m1388d().f1332c;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.inmobi.media.x2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3414x2.m2588a(this.f$0, view);
            }
        };
        int i = (int) (50 * f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        return TuplesKt.m2729to(onClickListener, layoutParams);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2588a(C3414x2 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f2733a.mo1950a();
        } catch (Exception unused) {
            AbstractC2814I6.m1170a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
        }
    }
}
