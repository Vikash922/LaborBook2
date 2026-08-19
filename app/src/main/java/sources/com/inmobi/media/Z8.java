package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Z8 extends R8 {
    public final /* synthetic */ C0271d9 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z8(C0271d9 c0271d9) {
        super(c0271d9);
        this.e = c0271d9;
    }

    @Override // com.inmobi.media.R8
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new C0512t8(context.getApplicationContext());
    }

    @Override // com.inmobi.media.R8
    public final void a(View view, D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof C0512t8) {
            this.e.getClass();
            C0271d9.a((C0512t8) view, asset);
        }
    }

    @Override // com.inmobi.media.R8
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof C0512t8) {
            super.a(view);
        }
    }
}
