package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.V8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3005V8 extends AbstractC2949R8 {

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3121d9 f1595e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3005V8(C3121d9 c3121d9) {
        super(c3121d9);
        this.f1595e = c3121d9;
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final View mo1763a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new ImageView(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.mo1765a(view, asset, adConfig);
        if (view instanceof ImageView) {
            C3121d9.m2071a(this.f1595e, (ImageView) view, asset);
        }
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof ImageView) {
            ((ImageView) view).setImageDrawable(null);
            super.mo1764a(view);
        }
    }
}
