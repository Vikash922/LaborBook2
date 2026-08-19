package com.inmobi.unification.sdk.model.Initialization;

import com.facebook.internal.AnalyticsEvents;
import com.inmobi.media.C2730Cc;
import com.inmobi.media.C2760Ec;
import kotlin.Metadata;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\u0006J\r\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\u0006J\r\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u0006J\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000e¨\u0006\u0012"}, m2722d2 = {"com/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$ABConfig", "", "<init>", "()V", "Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdABConfig;", "getBanner", "()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdABConfig;", "getInterstitial", "getNative", "getAudio", "", "isValid", "()Z", "banner", "Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdABConfig;", "int", AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE, "audio", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class TimeoutConfigurations$ABConfig {
    private TimeoutConfigurations$AdABConfig audio;
    private TimeoutConfigurations$AdABConfig banner;
    private TimeoutConfigurations$AdABConfig int;
    private TimeoutConfigurations$AdABConfig native;

    public TimeoutConfigurations$ABConfig() {
        C2730Cc c2730Cc = C2760Ec.Companion;
        c2730Cc.getClass();
        JSONObject jSONObject = C2760Ec.defaultABBannerloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject2 = C2760Ec.defaultABBannerRetryInterval;
        c2730Cc.getClass();
        this.banner = new TimeoutConfigurations$AdABConfig(jSONObject, jSONObject2, C2760Ec.defaultABBannerMaxRetries);
        c2730Cc.getClass();
        JSONObject jSONObject3 = C2760Ec.defaultABIntloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject4 = C2760Ec.defaultABIntRetryInterval;
        c2730Cc.getClass();
        this.int = new TimeoutConfigurations$AdABConfig(jSONObject3, jSONObject4, C2760Ec.defaultABIntMaxRetries);
        c2730Cc.getClass();
        JSONObject jSONObject5 = C2760Ec.defaultABNativeloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject6 = C2760Ec.defaultABNativeRetryInterval;
        c2730Cc.getClass();
        this.native = new TimeoutConfigurations$AdABConfig(jSONObject5, jSONObject6, C2760Ec.defaultABNativeMaxRetries);
        c2730Cc.getClass();
        JSONObject jSONObject7 = C2760Ec.defaultABAudioloadTimeout;
        c2730Cc.getClass();
        JSONObject jSONObject8 = C2760Ec.defaultABAudioRetryInterval;
        c2730Cc.getClass();
        this.audio = new TimeoutConfigurations$AdABConfig(jSONObject7, jSONObject8, C2760Ec.defaultABAudioMaxRetries);
    }

    public final TimeoutConfigurations$AdABConfig getAudio() {
        return this.audio;
    }

    public final TimeoutConfigurations$AdABConfig getBanner() {
        return this.banner;
    }

    /* JADX INFO: renamed from: getInterstitial, reason: from getter */
    public final TimeoutConfigurations$AdABConfig getInt() {
        return this.int;
    }

    public final TimeoutConfigurations$AdABConfig getNative() {
        return this.native;
    }

    public final boolean isValid() {
        return this.banner.isValid() && this.int.isValid() && this.native.isValid() && this.audio.isValid();
    }
}
