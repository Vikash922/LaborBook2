package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.listeners.BannerAdEventListener;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class G1 extends F1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BannerAdEventListener f120a;

    public G1(BannerAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f120a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, Map params) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(params, "params");
        this.f120a.onAdClicked(ad, params);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void b(Object obj, AdMetaInfo info) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f120a.onAdLoadSucceeded(ad, info);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, AdMetaInfo info) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f120a.onAdFetchSuccessful(ad, info);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.f120a.onAdImpression(ad);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, InMobiAdRequestStatus status) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullExpressionValue("F1", "getSimpleName(...)");
        this.f120a.onAdLoadFailed(ad, status);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, String data) {
        InMobiBanner ad = (InMobiBanner) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", BannerAdEventListener.class, InMobiBanner.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f120a, ad, data);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
