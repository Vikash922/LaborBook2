package com.inmobi.media;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.T8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2977T8 extends AbstractC2949R8 {

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3121d9 f1549e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2977T8(C3121d9 c3121d9) {
        super(c3121d9);
        this.f1549e = c3121d9;
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final View mo1763a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new Button(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.mo1765a(view, asset, adConfig);
        if (view instanceof Button) {
            C3121d9.m2070a(this.f1549e, (Button) view, asset);
        }
    }

    @Override // com.inmobi.media.AbstractC2949R8
    /* JADX INFO: renamed from: a */
    public final void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof Button) {
            HashMap map = C3121d9.f2016c;
            TextView textView = (TextView) view;
            textView.setTypeface(Typeface.DEFAULT, 0);
            textView.setPaintFlags(textView.getPaintFlags() & (-17));
            textView.setPaintFlags(textView.getPaintFlags() & (-9));
            super.mo1764a(view);
        }
    }
}
