package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3091b9 extends AbstractC2949R8 {
    public C3091b9(C3121d9 c3121d9) {
        super(c3121d9);
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final View mo1763a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return new C2819Ib(applicationContext);
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.mo1765a(view, asset, adConfig);
        HashMap map = C3121d9.f2016c;
        C2891N8.m1400a(view, asset.f922d);
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ((C2819Ib) view).f1125g = null;
        super.mo1764a(view);
    }
}
