package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0240b9 extends R8 {
    public C0240b9(C0271d9 c0271d9) {
        super(c0271d9);
    }

    @Override // com.inmobi.media.R8
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return new Ib(applicationContext);
    }

    @Override // com.inmobi.media.R8
    public final void a(View view, D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        HashMap map = C0271d9.c;
        N8.a(view, asset.d);
    }

    @Override // com.inmobi.media.R8
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ((Ib) view).g = null;
        super.a(view);
    }
}
