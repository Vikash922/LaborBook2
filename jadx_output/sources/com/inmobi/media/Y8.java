package com.inmobi.media;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Y8 extends R8 {
    public final /* synthetic */ C0271d9 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y8(C0271d9 c0271d9) {
        super(c0271d9);
        this.e = c0271d9;
    }

    @Override // com.inmobi.media.R8
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new P8(context.getApplicationContext());
    }

    @Override // com.inmobi.media.R8
    public final void a(View view, D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof TextView) {
            C0271d9.a(this.e, (TextView) view, asset);
        }
    }

    @Override // com.inmobi.media.R8
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof TextView) {
            HashMap map = C0271d9.c;
            TextView textView = (TextView) view;
            textView.setTypeface(Typeface.DEFAULT, 0);
            textView.setPaintFlags(textView.getPaintFlags() & (-17));
            textView.setPaintFlags(textView.getPaintFlags() & (-9));
            super.a(view);
        }
    }
}
