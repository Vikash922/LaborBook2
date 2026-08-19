package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.listeners.NativeAdEventListener;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0539v7 extends AbstractC0525u7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NativeAdEventListener f507a;

    public C0539v7(NativeAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f507a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, AdMetaInfo info) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f507a.onAdFetchSuccessful(ad, info);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void b(Object obj, AdMetaInfo info) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f507a.onAdLoadSucceeded(ad, info);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.f507a.onAdImpression(ad);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, InMobiAdRequestStatus status) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f507a.onAdLoadFailed(ad, status);
    }

    @Override // com.inmobi.media.AbstractC0587z
    public final void a(Object obj, String data) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", NativeAdEventListener.class, InMobiNative.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f507a, ad, data);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
