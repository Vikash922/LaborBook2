package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class S8 extends R8 {
    public S8(C0271d9 c0271d9) {
        super(c0271d9);
    }

    @Override // com.inmobi.media.R8
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new J7(context.getApplicationContext());
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
}
