package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class U8 extends R8 {
    public final /* synthetic */ C0271d9 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U8(C0271d9 c0271d9) {
        super(c0271d9);
        this.e = c0271d9;
    }

    @Override // com.inmobi.media.R8
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new C0564x4(context.getApplicationContext());
    }

    @Override // com.inmobi.media.R8
    public final void a(View view, D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof C0564x4) {
            C0564x4 c0564x4 = (C0564x4) view;
            this.e.getClass();
            HashMap map = C0271d9.c;
            c0564x4.setLayoutParams(new ViewGroup.LayoutParams(N8.a(asset.d.f107a.x), N8.a(asset.d.f107a.y)));
            c0564x4.setContentMode(asset.d.g);
            Intrinsics.checkNotNull(asset, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeGifAsset");
            c0564x4.setGifImpl((InterfaceC0536v4) ((S7) asset).y.getValue());
            N8.a(c0564x4, asset.d);
        }
    }

    @Override // com.inmobi.media.R8
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof C0564x4) {
            ((C0564x4) view).setGifImpl(null);
            super.a(view);
        }
    }
}
