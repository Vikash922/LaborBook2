package com.inmobi.media;

import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$MediationConfig;
import java.io.Serializable;
import kotlin.jvm.functions.Function2;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Ec */
/* JADX INFO: loaded from: classes6.dex */
public final class C2760Ec implements Serializable {
    private static final int APPLOVIN_AB_DEFAULT_AUDIO_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_AB_DEFAULT_AUDIO_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_AUDIO_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_AB_DEFAULT_BANNER_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_AB_DEFAULT_BANNER_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_BANNER_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_AB_DEFAULT_INTERSTITIAL_LOAD_TIMEOUT = 29500;
    private static final int APPLOVIN_AB_DEFAULT_INTERSTITIAL_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_INTERSTITIAL_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_AB_DEFAULT_NATIVE_LOAD_TIMEOUT = 14500;
    private static final int APPLOVIN_AB_DEFAULT_NATIVE_MAX_RETRIES = 3;
    private static final int APPLOVIN_AB_DEFAULT_NATIVE_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_MUTT_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_AUDIO_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_LOAD_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_MUTT_TIMEOUT = 9500;
    private static final int APPLOVIN_NONAB_DEFAULT_BANNER_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_LOAD_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_MUTT_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_INTERSTITIAL_RETRY_INTERVAL = 1000;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_LOAD_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_MAX_RETRIES = 3;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_MUTT_TIMEOUT = 14500;
    private static final int APPLOVIN_NONAB_DEFAULT_NATIVE_RETRY_INTERVAL = 1000;
    private static final int DEFAULT_AB_AUDIO_LOAD_TIMEOUT = 14500;
    private static final int DEFAULT_AB_BANNER_LOAD_TIMEOUT = 14500;
    private static final int DEFAULT_AB_INTERSTITIAL_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_AB_NATIVE_LOAD_TIMEOUT = 14500;
    private static final int DEFAULT_MAX_RETRIES = 3;
    private static final int DEFAULT_NONAB_AUDIO_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_AUDIO_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_BANNER_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_BANNER_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_INTERSTITIAL_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_INTERSTITIAL_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_NATIVE_LOAD_TIMEOUT = 29500;
    private static final int DEFAULT_NONAB_NATIVE_MUTT_TIMEOUT = 29500;
    private static final int DEFAULT_RETRY_INTERVAL = 1000;
    public static final int DEFAULT_TIMEOUT = 15000;
    public static final C2730Cc Companion = new C2730Cc();
    private static final String DEFAULT_KEY = "default";
    private static final String APPLOVIN_KEY = "c_applovin";
    private static final JSONObject defaultNonABBannerloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABBannerMuttTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABBannerMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABBannerRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultNonABIntloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABIntMuttTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABIntMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABIntRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultNonABNativeloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABNativeMuttTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABNativeMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABNativeRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultNonABAudioloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABAudioMuttTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABAudioMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABAudioRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABBannerloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 14500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultABBannerMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABBannerRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABIntloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 29500);
    private static final JSONObject defaultABIntMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABIntRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABNativeloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 14500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultABNativeMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABNativeRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABAudioloadTimeout = AbstractC2700Ac.m865a(DEFAULT_KEY, 14500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultABAudioMaxRetries = AbstractC2700Ac.m865a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABAudioRetryInterval = AbstractC2700Ac.m865a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultPreloadBannerPreloadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadBannerMuttTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadBannerLoadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 14500);
    private static final JSONObject defaultPreloadBannerMaxRetries = AbstractC3454zc.m2644a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadBannerRetryInterval = AbstractC3454zc.m2644a(DEFAULT_KEY, 1000);
    private static final JSONObject defaultPreloadIntPreloadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadIntMuttTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadIntloadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadIntMaxRetries = AbstractC3454zc.m2644a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadIntRetryInterval = AbstractC3454zc.m2644a(DEFAULT_KEY, 1000);
    private static final JSONObject defaultPreloadNativePreloadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadNativeMuttTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadNativeloadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 14500);
    private static final JSONObject defaultPreloadNativeMaxRetries = AbstractC3454zc.m2644a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadNativeRetryInterval = AbstractC3454zc.m2644a(DEFAULT_KEY, 1000);
    private static final JSONObject defaultPreloadAudioPreloadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadAudioMuttTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadAudioloadTimeout = AbstractC3454zc.m2644a(DEFAULT_KEY, 14500);
    private static final JSONObject defaultPreloadAudioMaxRetries = AbstractC3454zc.m2644a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadAudioRetryInterval = AbstractC3454zc.m2644a(DEFAULT_KEY, 1000);
    private static final Function2<JSONObject, Integer, Boolean> validator = C2715Bc.f860a;
    private int step4s = DEFAULT_TIMEOUT;
    private TimeoutConfigurations$MediationConfig mediationConfig = new TimeoutConfigurations$MediationConfig();

    /* JADX INFO: renamed from: X */
    public final TimeoutConfigurations$MediationConfig m1107X() {
        return this.mediationConfig;
    }

    /* JADX INFO: renamed from: Y */
    public final int m1108Y() {
        return this.step4s;
    }

    /* JADX INFO: renamed from: Z */
    public final boolean m1109Z() {
        return m1108Y() >= 0 && this.mediationConfig.isValid();
    }

    /* JADX INFO: renamed from: a0 */
    public final void m1110a0() {
        int i = this.step4s;
        if (i <= 0) {
            i = DEFAULT_TIMEOUT;
        }
        this.step4s = i;
    }
}
