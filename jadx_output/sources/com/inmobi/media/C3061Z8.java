package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Z8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3061Z8 extends AbstractC2949R8 {

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3121d9 f1820e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3061Z8(C3121d9 c3121d9) {
        super(c3121d9);
        this.f1820e = c3121d9;
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final View mo1763a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new C3360t8(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.mo1765a(view, asset, adConfig);
        if (view instanceof C3360t8) {
            this.f1820e.getClass();
            C3121d9.m2074a((C3360t8) view, asset);
        }
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof C3360t8) {
            super.mo1764a(view);
        }
    }
}
