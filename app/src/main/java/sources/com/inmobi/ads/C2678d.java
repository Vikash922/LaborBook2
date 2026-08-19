package com.inmobi.ads;

import com.inmobi.media.C2914P1;
import com.inmobi.media.C3162g5;
import com.inmobi.media.InterfaceC3147f5;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.ads.d */
/* JADX INFO: loaded from: classes6.dex */
public final class C2678d extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InMobiBanner f781a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ byte[] f782b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2678d(InMobiBanner inMobiBanner, byte[] bArr) {
        super(0);
        this.f781a = inMobiBanner;
        this.f782b = bArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        InterfaceC3147f5 interfaceC3147f5M1367p;
        C2914P1 mAdManager = this.f781a.getMAdManager();
        if (mAdManager != null && (interfaceC3147f5M1367p = mAdManager.m1367p()) != null) {
            String strAccess$getTAG$cp = InMobiBanner.access$getTAG$cp();
            Intrinsics.checkNotNullExpressionValue(strAccess$getTAG$cp, "access$getTAG$cp(...)");
            ((C3162g5) interfaceC3147f5M1367p).m2152c(strAccess$getTAG$cp, "load with response");
        }
        C2914P1 mAdManager2 = this.f781a.getMAdManager();
        if (mAdManager2 != null) {
            mAdManager2.mo880a(this.f782b, this.f781a.f746e);
        }
        return Unit.INSTANCE;
    }
}
