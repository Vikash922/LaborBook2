package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.nd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3275nd extends AbstractC3260md {

    /* JADX INFO: renamed from: e */
    public final GestureDetectorOnGestureListenerC3049Ya f2389e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3275nd(GestureDetectorOnGestureListenerC3049Ya mRenderView) {
        super(mRenderView);
        Intrinsics.checkNotNullParameter(mRenderView, "mRenderView");
        this.f2389e = mRenderView;
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo958a(byte b) {
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo961a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo962a(HashMap map) {
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: d */
    public final View mo964d() {
        this.f2354c = new WeakReference(this.f2389e);
        return this.f2389e;
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: e */
    public final void mo965e() {
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo959a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final void mo960a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC3260md
    /* JADX INFO: renamed from: a */
    public final View mo956a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return mo964d();
    }
}
