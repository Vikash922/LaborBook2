package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.LinkedList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class R8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedList f234a = new LinkedList();
    public int b;
    public int c;
    public final /* synthetic */ C0271d9 d;

    public R8(C0271d9 c0271d9) {
        this.d = c0271d9;
    }

    public abstract View a(Context context);

    public void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        HashMap map = C0271d9.c;
        N8.a(view);
        view.setOnClickListener(null);
        this.f234a.add(view);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.d.f333a++;
    }

    public final String toString() {
        return "Size:" + this.f234a.size() + " Miss Count:" + this.b + " Hit Count:" + this.c;
    }

    public void a(View view, D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        view.setVisibility(asset.v);
        view.setOnClickListener(null);
    }
}
