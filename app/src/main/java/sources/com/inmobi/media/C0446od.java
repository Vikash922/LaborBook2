package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.od, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0446od extends AbstractC0416md {
    public final C0511t7 e;
    public Ya f;
    public final InterfaceC0298f5 g;
    public final String h;
    public boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0446od(C0511t7 mNativeAdContainer, Ya ya, InterfaceC0298f5 interfaceC0298f5) {
        super(mNativeAdContainer);
        Intrinsics.checkNotNullParameter(mNativeAdContainer, "mNativeAdContainer");
        this.e = mNativeAdContainer;
        this.f = ya;
        this.g = interfaceC0298f5;
        this.h = "InMobi";
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(byte b) {
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(HashMap map) {
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void e() {
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View a(View view, ViewGroup parent, boolean z) {
        Context contextJ;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (this.i || (contextJ = this.e.j()) == null) {
            return null;
        }
        AdConfig adConfig = this.d;
        C0511t7 c0511t7 = this.e;
        P7 p7 = c0511t7.b;
        Intrinsics.checkNotNull(p7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeDataModel");
        this.b = new X7(contextJ, adConfig, c0511t7, p7, this.g);
        InterfaceC0298f5 interfaceC0298f5 = this.g;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).b(this.h, "Ad markup loaded into the container will be inflated into a View.");
        }
        X7 x7 = this.b;
        this.c = new WeakReference(x7 != null ? x7.a(view, parent, z, this.f) : null);
        C0511t7 c0511t72 = this.e;
        c0511t72.getClass();
        AbstractC0467q4.a(new C0364j7(c0511t72, c0511t72), "EndCardBuilderTask");
        return b();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a() {
        if (this.i) {
            return;
        }
        this.i = true;
        X7 x7 = this.b;
        if (x7 != null) {
            C0270d8 c0270d8 = x7.e;
            c0270d8.n = true;
            c0270d8.i.clear();
            c0270d8.p = null;
            InterfaceC0396l8 interfaceC0396l8 = c0270d8.j;
            if (interfaceC0396l8 != null) {
                interfaceC0396l8.destroy();
            }
            c0270d8.j = null;
            if (!x7.f279a) {
                x7.f279a = true;
            }
        }
        this.b = null;
        Ya ya = this.f;
        if (ya != null) {
            ya.b();
        }
        this.f = null;
        super.a();
    }
}
