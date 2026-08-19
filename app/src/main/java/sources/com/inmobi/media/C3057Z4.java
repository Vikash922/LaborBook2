package com.inmobi.media;

import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.controllers.PublisherCallbacks;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.Z4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3057Z4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InMobiBanner f1802a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ PublisherCallbacks f1803b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f1804c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3057Z4(InMobiBanner inMobiBanner, PublisherCallbacks publisherCallbacks, boolean z) {
        super(0);
        this.f1802a = inMobiBanner;
        this.f1803b = publisherCallbacks;
        this.f1804c = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C2914P1 mAdManager;
        this.f1802a.m806a();
        if (InMobiBanner.access$checkForRefreshRate(this.f1802a) && (mAdManager = this.f1802a.getMAdManager()) != null) {
            mAdManager.m1446a(this.f1803b, this.f1802a.getFrameSizeString(), this.f1804c);
        }
        return Unit.INSTANCE;
    }
}
