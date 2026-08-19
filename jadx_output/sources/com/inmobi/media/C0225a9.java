package com.inmobi.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0225a9 extends R8 {
    public final /* synthetic */ C0271d9 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0225a9(C0271d9 c0271d9) {
        super(c0271d9);
        this.e = c0271d9;
    }

    @Override // com.inmobi.media.R8
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return new M8(applicationContext);
    }

    @Override // com.inmobi.media.R8
    public final void a(View view, D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof M8) {
            M8 m8 = (M8) view;
            this.e.getClass();
            HashMap map = C0271d9.c;
            N8.a(m8, asset.d);
            Object obj = asset.u;
            if (obj instanceof Bitmap) {
                m8.setPosterImage((Bitmap) obj);
            }
            m8.getProgressBar().setVisibility(0);
        }
    }

    @Override // com.inmobi.media.R8
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof M8) {
            M8 m8 = (M8) view;
            m8.getProgressBar().setVisibility(8);
            m8.setPosterImage((Bitmap) null);
            m8.getVideoView().f();
            super.a(view);
        }
    }
}
