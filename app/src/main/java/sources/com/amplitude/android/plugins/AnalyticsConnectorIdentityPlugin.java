package com.amplitude.android.plugins;

import com.amplitude.analytics.connector.AnalyticsConnector;
import com.amplitude.analytics.connector.Identity;
import com.amplitude.core.Amplitude;
import com.amplitude.core.platform.ObservePlugin;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsConnectorIdentityPlugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m2722d2 = {"Lcom/amplitude/android/plugins/AnalyticsConnectorIdentityPlugin;", "Lcom/amplitude/core/platform/ObservePlugin;", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "connector", "Lcom/amplitude/analytics/connector/AnalyticsConnector;", "onDeviceIdChanged", "", "deviceId", "", "onUserIdChanged", "userId", "setup", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AnalyticsConnectorIdentityPlugin extends ObservePlugin {
    public Amplitude amplitude;
    private AnalyticsConnector connector;

    @Override // com.amplitude.core.platform.Plugin
    public Amplitude getAmplitude() {
        Amplitude amplitude = this.amplitude;
        if (amplitude != null) {
            return amplitude;
        }
        Intrinsics.throwUninitializedPropertyAccessException("amplitude");
        return null;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setAmplitude(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "<set-?>");
        this.amplitude = amplitude;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setup(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        super.setup(amplitude);
        AnalyticsConnector companion = AnalyticsConnector.INSTANCE.getInstance(amplitude.getConfiguration().getInstanceName());
        this.connector = companion;
        if (companion == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connector");
            companion = null;
        }
        companion.getIdentityStore().setIdentity(new Identity(amplitude.getStore().getUserId(), amplitude.getStore().getDeviceId(), null, 4, null));
    }

    @Override // com.amplitude.core.platform.ObservePlugin
    public void onUserIdChanged(String userId) {
        AnalyticsConnector analyticsConnector = this.connector;
        if (analyticsConnector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connector");
            analyticsConnector = null;
        }
        analyticsConnector.getIdentityStore().editIdentity().setUserId(userId).commit();
    }

    @Override // com.amplitude.core.platform.ObservePlugin
    public void onDeviceIdChanged(String deviceId) {
        AnalyticsConnector analyticsConnector = this.connector;
        if (analyticsConnector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connector");
            analyticsConnector = null;
        }
        analyticsConnector.getIdentityStore().editIdentity().setDeviceId(deviceId).commit();
    }
}
