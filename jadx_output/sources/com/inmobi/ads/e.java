package com.inmobi.ads;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.F1;
import com.inmobi.media.I6;
import com.inmobi.media.M1;
import com.inmobi.media.P1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements PreloadManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final M1 f65a;
    public final /* synthetic */ InMobiBanner b;

    public e(InMobiBanner inMobiBanner) {
        this.b = inMobiBanner;
        this.f65a = new M1(inMobiBanner);
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void load() {
        try {
            P1 mAdManager = this.b.getMAdManager();
            if (mAdManager != null) {
                mAdManager.G();
            }
        } catch (IllegalStateException e) {
            String strAccess$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            I6.a((byte) 1, strAccess$getTAG$cp, e.getMessage());
            F1 mPubListener = this.b.getMPubListener();
            if (mPubListener != null) {
                mPubListener.a(this.b, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        }
    }

    @Override // com.inmobi.ads.PreloadManager
    public final void preload() {
        this.b.setEnableAutoRefresh(false);
        this.b.a(this.f65a, "Preload", false);
    }
}
