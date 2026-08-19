package com.inmobi.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3076a9 extends AbstractC2949R8 {

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3121d9 f1849e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3076a9(C3121d9 c3121d9) {
        super(c3121d9);
        this.f1849e = c3121d9;
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final View mo1763a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return new C2876M8(applicationContext);
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.mo1765a(view, asset, adConfig);
        if (view instanceof C2876M8) {
            C2876M8 c2876m8 = (C2876M8) view;
            this.f1849e.getClass();
            HashMap map = C3121d9.f2016c;
            C2891N8.m1400a(c2876m8, asset.f922d);
            Object obj = asset.f939u;
            if (obj instanceof Bitmap) {
                c2876m8.setPosterImage((Bitmap) obj);
            }
            c2876m8.getProgressBar().setVisibility(0);
        }
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof C2876M8) {
            C2876M8 c2876m8 = (C2876M8) view;
            c2876m8.getProgressBar().setVisibility(8);
            c2876m8.setPosterImage((Bitmap) null);
            c2876m8.getVideoView().m1306f();
            super.mo1764a(view);
        }
    }
}
