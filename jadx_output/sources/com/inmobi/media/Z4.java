package com.inmobi.media;

import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.controllers.PublisherCallbacks;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class Z4 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InMobiBanner f294a;
    public final /* synthetic */ PublisherCallbacks b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Z4(InMobiBanner inMobiBanner, PublisherCallbacks publisherCallbacks, boolean z) {
        super(0);
        this.f294a = inMobiBanner;
        this.b = publisherCallbacks;
        this.c = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        P1 mAdManager;
        this.f294a.a();
        if (InMobiBanner.access$checkForRefreshRate(this.f294a) && (mAdManager = this.f294a.getMAdManager()) != null) {
            mAdManager.a(this.b, this.f294a.getFrameSizeString(), this.c);
        }
        return Unit.INSTANCE;
    }
}
