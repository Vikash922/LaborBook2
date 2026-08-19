package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.listeners.NativeAdEventListener;
import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3389v7 extends AbstractC3374u7 {

    /* JADX INFO: renamed from: a */
    public final NativeAdEventListener f2684a;

    public C3389v7(NativeAdEventListener adEventListener) {
        Intrinsics.checkNotNullParameter(adEventListener, "adEventListener");
        this.f2684a = adEventListener;
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1134a(Object obj, AdMetaInfo info) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f2684a.onAdFetchSuccessful(ad, info);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: b */
    public final void mo1138b(Object obj, AdMetaInfo info) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(info, "info");
        this.f2684a.onAdLoadSucceeded(ad, info);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1133a(Object obj) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.f2684a.onAdImpression(ad);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1135a(Object obj, InMobiAdRequestStatus status) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f2684a.onAdLoadFailed(ad, status);
    }

    @Override // com.inmobi.media.AbstractC3441z
    /* JADX INFO: renamed from: a */
    public final void mo1136a(Object obj, String data) {
        InMobiNative ad = (InMobiNative) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            Class<?> cls = Class.forName("IMraidLog");
            Method declaredMethod = cls.getDeclaredMethod("imraidLog", NativeAdEventListener.class, InMobiNative.class, String.class);
            Intrinsics.checkNotNullExpressionValue(declaredMethod, "getDeclaredMethod(...)");
            declaredMethod.invoke(cls.newInstance(), this.f2684a, ad, data);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
