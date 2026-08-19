package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.U8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2991U8 extends AbstractC2949R8 {

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3121d9 f1568e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2991U8(C3121d9 c3121d9) {
        super(c3121d9);
        this.f1568e = c3121d9;
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final View mo1763a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new C3416x4(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.mo1765a(view, asset, adConfig);
        if (view instanceof C3416x4) {
            C3416x4 c3416x4 = (C3416x4) view;
            this.f1568e.getClass();
            HashMap map = C3121d9.f2016c;
            c3416x4.setLayoutParams(new ViewGroup.LayoutParams(C2891N8.m1396a(asset.f922d.f974a.x), C2891N8.m1396a(asset.f922d.f974a.y)));
            c3416x4.setContentMode(asset.f922d.f980g);
            Intrinsics.checkNotNull(asset, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeGifAsset");
            c3416x4.setGifImpl((InterfaceC3386v4) ((C2962S7) asset).f1538y.getValue());
            C2891N8.m1400a(c3416x4, asset.f922d);
        }
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof C3416x4) {
            ((C3416x4) view).setGifImpl(null);
            super.mo1764a(view);
        }
    }
}
