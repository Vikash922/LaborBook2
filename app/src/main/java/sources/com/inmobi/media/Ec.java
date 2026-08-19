package com.inmobi.media;

import com.inmobi.unification.sdk.model.Initialization.TimeoutConfigurations$MediationConfig;
import java.io.Serializable;
import kotlin.jvm.functions.Function2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Ec implements Serializable {
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
    public static final Cc Companion = new Cc();
    private static final String DEFAULT_KEY = "default";
    private static final String APPLOVIN_KEY = "c_applovin";
    private static final JSONObject defaultNonABBannerloadTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABBannerMuttTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABBannerMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABBannerRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultNonABIntloadTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABIntMuttTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABIntMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABIntRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultNonABNativeloadTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABNativeMuttTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultNonABNativeMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABNativeRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultNonABAudioloadTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABAudioMuttTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultNonABAudioMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultNonABAudioRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABBannerloadTimeout = Ac.a(DEFAULT_KEY, 14500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultABBannerMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABBannerRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABIntloadTimeout = Ac.a(DEFAULT_KEY, 29500, APPLOVIN_KEY, 29500);
    private static final JSONObject defaultABIntMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABIntRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABNativeloadTimeout = Ac.a(DEFAULT_KEY, 14500, APPLOVIN_KEY, 14500);
    private static final JSONObject defaultABNativeMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABNativeRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultABAudioloadTimeout = Ac.a(DEFAULT_KEY, 14500, APPLOVIN_KEY, 9500);
    private static final JSONObject defaultABAudioMaxRetries = Ac.a(DEFAULT_KEY, 3, APPLOVIN_KEY, 3);
    private static final JSONObject defaultABAudioRetryInterval = Ac.a(DEFAULT_KEY, 1000, APPLOVIN_KEY, 1000);
    private static final JSONObject defaultPreloadBannerPreloadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadBannerMuttTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadBannerLoadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 14500);
    private static final JSONObject defaultPreloadBannerMaxRetries = AbstractC0602zc.a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadBannerRetryInterval = AbstractC0602zc.a(DEFAULT_KEY, 1000);
    private static final JSONObject defaultPreloadIntPreloadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadIntMuttTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadIntloadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadIntMaxRetries = AbstractC0602zc.a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadIntRetryInterval = AbstractC0602zc.a(DEFAULT_KEY, 1000);
    private static final JSONObject defaultPreloadNativePreloadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadNativeMuttTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadNativeloadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 14500);
    private static final JSONObject defaultPreloadNativeMaxRetries = AbstractC0602zc.a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadNativeRetryInterval = AbstractC0602zc.a(DEFAULT_KEY, 1000);
    private static final JSONObject defaultPreloadAudioPreloadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadAudioMuttTimeout = AbstractC0602zc.a(DEFAULT_KEY, 29500);
    private static final JSONObject defaultPreloadAudioloadTimeout = AbstractC0602zc.a(DEFAULT_KEY, 14500);
    private static final JSONObject defaultPreloadAudioMaxRetries = AbstractC0602zc.a(DEFAULT_KEY, 3);
    private static final JSONObject defaultPreloadAudioRetryInterval = AbstractC0602zc.a(DEFAULT_KEY, 1000);
    private static final Function2<JSONObject, Integer, Boolean> validator = Bc.f86a;
    private int step4s = DEFAULT_TIMEOUT;
    private TimeoutConfigurations$MediationConfig mediationConfig = new TimeoutConfigurations$MediationConfig();

    public final TimeoutConfigurations$MediationConfig X() {
        return this.mediationConfig;
    }

    public final int Y() {
        return this.step4s;
    }

    public final boolean Z() {
        return Y() >= 0 && this.mediationConfig.isValid();
    }

    public final void a0() {
        int i = this.step4s;
        if (i <= 0) {
            i = DEFAULT_TIMEOUT;
        }
        this.step4s = i;
    }
}
