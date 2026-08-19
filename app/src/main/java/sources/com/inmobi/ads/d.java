package com.inmobi.ads;

import com.inmobi.media.C0314g5;
import com.inmobi.media.InterfaceC0298f5;
import com.inmobi.media.P1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ InMobiBanner f64a;
    public final /* synthetic */ byte[] b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InMobiBanner inMobiBanner, byte[] bArr) {
        super(0);
        this.f64a = inMobiBanner;
        this.b = bArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        InterfaceC0298f5 interfaceC0298f5P;
        P1 mAdManager = this.f64a.getMAdManager();
        if (mAdManager != null && (interfaceC0298f5P = mAdManager.p()) != null) {
            String strAccess$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5P).c(strAccess$getTAG$cp, "load with response");
        }
        P1 mAdManager2 = this.f64a.getMAdManager();
        if (mAdManager2 != null) {
            mAdManager2.a(this.b, this.f64a.e);
        }
        return Unit.INSTANCE;
    }
}
