package com.inmobi.ads;

import android.content.Context;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.AbstractC2814I6;
import com.inmobi.media.C2946R5;
import com.inmobi.media.C2960S5;
import com.inmobi.media.C3048Y9;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.ads.f */
/* JADX INFO: loaded from: classes6.dex */
public final class C2680f implements PreloadManager {

    /* JADX INFO: renamed from: a */
    public final C2946R5 f785a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InMobiInterstitial f786b;

    public C2680f(InMobiInterstitial inMobiInterstitial) {
        this.f786b = inMobiInterstitial;
        this.f785a = new C2946R5(inMobiInterstitial);
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void load() {
        try {
            this.f786b.getMAdManager$media_release().m1791D();
        } catch (IllegalStateException e) {
            String strAccess$getTAG$cp = InMobiInterstitial.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            AbstractC2814I6.m1170a((byte) 1, strAccess$getTAG$cp, e.getMessage());
            this.f786b.getMPubListener$media_release().mo1135a(this.f786b, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
        }
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void preload() {
        this.f786b.f758b = true;
        this.f786b.f760d.f1692e = "Preload";
        C2960S5 mAdManager$media_release = this.f786b.getMAdManager$media_release();
        C3048Y9 c3048y9 = this.f786b.f760d;
        Context context = this.f786b.f757a;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContext");
            context = null;
        }
        C2960S5.m1780a(mAdManager$media_release, c3048y9, context, false, null, 12, null);
        this.f786b.getMAdManager$media_release().m1796c(this.f785a);
    }
}
