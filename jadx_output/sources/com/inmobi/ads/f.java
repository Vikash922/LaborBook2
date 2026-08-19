package com.inmobi.ads;

import android.content.Context;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.I6;
import com.inmobi.media.R5;
import com.inmobi.media.S5;
import com.inmobi.media.Y9;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements PreloadManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final R5 f66a;
    public final /* synthetic */ InMobiInterstitial b;

    public f(InMobiInterstitial inMobiInterstitial) {
        this.b = inMobiInterstitial;
        this.f66a = new R5(inMobiInterstitial);
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void load() {
        try {
            this.b.getMAdManager$media_release().D();
        } catch (IllegalStateException e) {
            String strAccess$getTAG$cp = InMobiInterstitial.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            I6.a((byte) 1, strAccess$getTAG$cp, e.getMessage());
            this.b.getMPubListener$media_release().a(this.b, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        }
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void preload() {
        this.b.b = true;
        this.b.d.e = "Preload";
        S5 mAdManager$media_release = this.b.getMAdManager$media_release();
        Y9 y9 = this.b.d;
        Context context = this.b.f59a;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContext");
            context = null;
        }
        S5.a(mAdManager$media_release, y9, context, false, null, 12, null);
        this.b.getMAdManager$media_release().c(this.f66a);
    }
}
