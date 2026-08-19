package com.inmobi.unification.sdk.model.Initialization;

import com.facebook.internal.AnalyticsEvents;
import com.inmobi.media.C2730Cc;
import com.inmobi.media.C2760Ec;
import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\u0006J\r\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\u0006J\r\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u0006J\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, m2722d2 = {"com/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig", "", "<init>", "()V", "Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;", "getBanner", "()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;", "getInterstitial", "getNative", "getAudio", "", "isValid", "()Z", "banner", "Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;", "int", AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE, "audio", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class TimeoutConfigurations$PreloadConfig {
    private TimeoutConfigurations$AdPreloadConfig audio;
    private TimeoutConfigurations$AdPreloadConfig banner;
    private TimeoutConfigurations$AdPreloadConfig int;
    private TimeoutConfigurations$AdPreloadConfig native;

    public TimeoutConfigurations$PreloadConfig() {
        C2730Cc c2730Cc = C2760Ec.Companion;
        c2730Cc.getClass();
        JSONObject jSONObject = C2760Ec.defaultPreloadBannerPreloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject2 = C2760Ec.defaultPreloadBannerMuttTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject3 = C2760Ec.defaultPreloadBannerLoadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject4 = C2760Ec.defaultPreloadBannerRetryInterval;
        c2730Cc.getClass();
        this.banner = new TimeoutConfigurations$AdPreloadConfig(jSONObject, jSONObject2, jSONObject3, jSONObject4, C2760Ec.defaultPreloadBannerMaxRetries);
        c2730Cc.getClass();
        JSONObject jSONObject5 = C2760Ec.defaultPreloadIntPreloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject6 = C2760Ec.defaultPreloadIntMuttTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject7 = C2760Ec.defaultPreloadIntloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject8 = C2760Ec.defaultPreloadIntRetryInterval;
        c2730Cc.getClass();
        this.int = new TimeoutConfigurations$AdPreloadConfig(jSONObject5, jSONObject6, jSONObject7, jSONObject8, C2760Ec.defaultPreloadIntMaxRetries);
        c2730Cc.getClass();
        JSONObject jSONObject9 = C2760Ec.defaultPreloadNativePreloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject10 = C2760Ec.defaultPreloadNativeMuttTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject11 = C2760Ec.defaultPreloadNativeloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject12 = C2760Ec.defaultPreloadNativeRetryInterval;
        c2730Cc.getClass();
        this.native = new TimeoutConfigurations$AdPreloadConfig(jSONObject9, jSONObject10, jSONObject11, jSONObject12, C2760Ec.defaultPreloadNativeMaxRetries);
        c2730Cc.getClass();
        JSONObject jSONObject13 = C2760Ec.defaultPreloadAudioPreloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject14 = C2760Ec.defaultPreloadAudioMuttTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject15 = C2760Ec.defaultPreloadAudioloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject16 = C2760Ec.defaultPreloadAudioRetryInterval;
        c2730Cc.getClass();
        this.audio = new TimeoutConfigurations$AdPreloadConfig(jSONObject13, jSONObject14, jSONObject15, jSONObject16, C2760Ec.defaultPreloadAudioMaxRetries);
    }

    public final TimeoutConfigurations$AdPreloadConfig getAudio() {
        return this.audio;
    }

    public final TimeoutConfigurations$AdPreloadConfig getBanner() {
        return this.banner;
    }

    /* JADX INFO: renamed from: getInterstitial, reason: from getter */
    public final TimeoutConfigurations$AdPreloadConfig getInt() {
        return this.int;
    }

    public final TimeoutConfigurations$AdPreloadConfig getNative() {
        return this.native;
    }

    public final boolean isValid() {
        return this.banner.isValid() && this.int.isValid() && this.native.isValid() && this.audio.isValid();
    }
}
