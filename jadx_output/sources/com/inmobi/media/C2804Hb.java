package com.inmobi.media;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.inmobi.ads.viewsv2.NativeRecyclerViewAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Hb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2804Hb extends AbstractC3225k8 {

    /* JADX INFO: renamed from: b */
    public RecyclerView f1083b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2804Hb(Context context) {
        super(context, (byte) 1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.AbstractC3225k8
    /* JADX INFO: renamed from: a */
    public final void mo1152a(C2800H7 scrollableContainerAsset, InterfaceC3240l8 dataSource, int i, int i2, C3120d8 c3120d8) {
        Intrinsics.checkNotNullParameter(scrollableContainerAsset, "scrollableContainerAsset");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        RecyclerView recyclerView = new RecyclerView(getContext());
        this.f1083b = recyclerView;
        recyclerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.setAdapter(dataSource instanceof NativeRecyclerViewAdapter ? (NativeRecyclerViewAdapter) dataSource : null);
        addView(this.f1083b);
    }
}
