package com.laborbook.ads;

import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.laborbook.base.ads.CustomAdData;
import com.laborbook.base.ads.CustomAdProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FirebaseCustomAdProvider.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m2722d2 = {"Lcom/laborbook/ads/FirebaseCustomAdProvider;", "Lcom/laborbook/base/ads/CustomAdProvider;", "<init>", "()V", "remoteConfig", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;", "getCustomAdData", "Lcom/laborbook/base/ads/CustomAdData;", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class FirebaseCustomAdProvider implements CustomAdProvider {
    private final FirebaseRemoteConfig remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);

    @Override // com.laborbook.base.ads.CustomAdProvider
    public CustomAdData getCustomAdData() {
        try {
            boolean z = this.remoteConfig.getBoolean("custom_ad_enabled");
            String string = this.remoteConfig.getString("custom_ad_image_url");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = this.remoteConfig.getString("custom_ad_redirect_url");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = this.remoteConfig.getString("custom_ad_title");
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            return new CustomAdData(z, string, string2, string3);
        } catch (Exception unused) {
            return new CustomAdData(false, "", "", "");
        }
    }
}
