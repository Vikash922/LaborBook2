package com.amplitude.core.utilities;

import com.amplitude.core.State;
import com.amplitude.p009id.Identity;
import com.amplitude.p009id.IdentityListener;
import com.amplitude.p009id.IdentityUpdateType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsIdentityListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m2722d2 = {"Lcom/amplitude/core/utilities/AnalyticsIdentityListener;", "Lcom/amplitude/id/IdentityListener;", "state", "Lcom/amplitude/core/State;", "(Lcom/amplitude/core/State;)V", "onDeviceIdChange", "", "deviceId", "", "onIdentityChanged", "identity", "Lcom/amplitude/id/Identity;", "updateType", "Lcom/amplitude/id/IdentityUpdateType;", "onUserIdChange", "userId", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AnalyticsIdentityListener implements IdentityListener {
    private final State state;

    public AnalyticsIdentityListener(State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
    }

    @Override // com.amplitude.p009id.IdentityListener
    public void onUserIdChange(String userId) {
        this.state.setUserId(userId);
    }

    @Override // com.amplitude.p009id.IdentityListener
    public void onDeviceIdChange(String deviceId) {
        this.state.setDeviceId(deviceId);
    }

    @Override // com.amplitude.p009id.IdentityListener
    public void onIdentityChanged(Identity identity, IdentityUpdateType updateType) {
        Intrinsics.checkNotNullParameter(identity, "identity");
        Intrinsics.checkNotNullParameter(updateType, "updateType");
        if (updateType == IdentityUpdateType.Initialized) {
            this.state.setUserId(identity.getUserId());
            this.state.setDeviceId(identity.getDeviceId());
        }
    }
}
