package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.nd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0431nd extends AbstractC0416md {
    public final Ya e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0431nd(Ya mRenderView) {
        super(mRenderView);
        Intrinsics.checkNotNullParameter(mRenderView, "mRenderView");
        this.e = mRenderView;
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(byte b) {
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(HashMap map) {
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View d() {
        this.c = new WeakReference(this.e);
        return this.e;
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void e() {
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(Context context, byte b) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final void a(View childView) {
        Intrinsics.checkNotNullParameter(childView, "childView");
    }

    @Override // com.inmobi.media.AbstractC0416md
    public final View a(View view, ViewGroup parent, boolean z) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return d();
    }
}
