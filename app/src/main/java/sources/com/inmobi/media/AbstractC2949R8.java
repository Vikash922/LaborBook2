package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.LinkedList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.R8 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2949R8 {

    /* JADX INFO: renamed from: a */
    public final LinkedList f1499a = new LinkedList();

    /* JADX INFO: renamed from: b */
    public int f1500b;

    /* JADX INFO: renamed from: c */
    public int f1501c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3121d9 f1502d;

    public AbstractC2949R8(C3121d9 c3121d9) {
        this.f1502d = c3121d9;
    }

    /* JADX INFO: renamed from: a */
    public abstract View mo1763a(Context context);

    /* JADX INFO: renamed from: a */
    public void mo1764a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        HashMap map = C3121d9.f2016c;
        C2891N8.m1399a(view);
        view.setOnClickListener(null);
        this.f1499a.add(view);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f1502d.f2021a++;
    }

    public final String toString() {
        return "Size:" + this.f1499a.size() + " Miss Count:" + this.f1500b + " Hit Count:" + this.f1501c;
    }

    /* JADX INFO: renamed from: a */
    public void mo1765a(View view, C2740D7 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        view.setVisibility(asset.f940v);
        view.setOnClickListener(null);
    }
}
