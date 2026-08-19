package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.commons.core.configs.AdConfig;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.pd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0461pd extends AbstractC0416md {
    public final A8 e;
    public final InterfaceC0298f5 f;
    public boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0461pd(A8 mNativeVideoAdContainer, InterfaceC0298f5 interfaceC0298f5) {
        super(mNativeVideoAdContainer);
        Intrinsics.checkNotNullParameter(mNativeVideoAdContainer, "mNativeVideoAdContainer");
        this.e = mNativeVideoAdContainer;
        this.f = interfaceC0298f5;
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
        if (this.g || (contextJ = this.e.j()) == null) {
            return null;
        }
        AdConfig adConfig = this.d;
        A8 a8 = this.e;
        P7 p7 = a8.b;
        Intrinsics.checkNotNull(p7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeDataModel");
        X7 x7 = new X7(contextJ, adConfig, a8, p7, this.f);
        this.b = x7;
        this.c = new WeakReference(x7.a(view, parent, false, null));
        A8 a82 = this.e;
        a82.getClass();
        AbstractC0467q4.a(new C0364j7(a82, a82), "EndCardBuilderTask");
        return b();
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a() {
        if (this.g) {
            return;
        }
        this.g = true;
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
        super.a();
    }
}
