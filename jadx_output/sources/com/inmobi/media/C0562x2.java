package com.inmobi.media;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0562x2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ya f519a;
    public final boolean b;
    public final boolean c;
    public final InterfaceC0298f5 d;

    public C0562x2(Ya renderView, boolean z, boolean z2, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        this.f519a = renderView;
        this.b = z;
        this.c = z2;
        this.d = interfaceC0298f5;
    }

    public final void a(final Nd insets) {
        Handler handler;
        Intrinsics.checkNotNullParameter(insets, "insets");
        final ViewGroup viewGroup = (ViewGroup) this.f519a.getRootView().findViewById(65534);
        if (viewGroup == null || (handler = viewGroup.getHandler()) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.inmobi.media.x2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0562x2.a(this.f$0, viewGroup, insets);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.media.C0562x2 r10, android.view.ViewGroup r11, com.inmobi.media.Nd r12) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0562x2.a(com.inmobi.media.x2, android.view.ViewGroup, com.inmobi.media.Nd):void");
    }

    public final Pair a() {
        float f = N3.d().c;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.inmobi.media.x2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C0562x2.a(this.f$0, view);
            }
        };
        int i = (int) (50 * f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        return TuplesKt.to(onClickListener, layoutParams);
    }

    public static final void a(C0562x2 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f519a.a();
        } catch (Exception unused) {
            I6.a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
        }
    }
}
