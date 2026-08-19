package com.inmobi.ads;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.AbstractC2764F1;
import com.inmobi.media.AbstractC2814I6;
import com.inmobi.media.C2869M1;
import com.inmobi.media.C2914P1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.ads.e */
/* JADX INFO: loaded from: classes6.dex */
public final class C2679e implements PreloadManager {

    /* JADX INFO: renamed from: a */
    public final C2869M1 f783a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InMobiBanner f784b;

    public C2679e(InMobiBanner inMobiBanner) {
        this.f784b = inMobiBanner;
        this.f783a = new C2869M1(inMobiBanner);
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void load() {
        try {
            C2914P1 mAdManager = this.f784b.getMAdManager();
            if (mAdManager != null) {
                mAdManager.m1439G();
            }
        } catch (IllegalStateException e) {
            String strAccess$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            AbstractC2814I6.m1170a((byte) 1, strAccess$getTAG$cp, e.getMessage());
            AbstractC2764F1 mPubListener = this.f784b.getMPubListener();
            if (mPubListener != null) {
                mPubListener.mo1135a(this.f784b, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        }
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void preload() {
        this.f784b.setEnableAutoRefresh(false);
        this.f784b.m808a(this.f783a, "Preload", false);
    }
}
