package com.amplitude.id;

import kotlin.Metadata;

/* JADX INFO: compiled from: IdentityManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/amplitude/id/IdentityListener;", "", "onDeviceIdChange", "", "deviceId", "", "onIdentityChanged", "identity", "Lcom/amplitude/id/Identity;", "updateType", "Lcom/amplitude/id/IdentityUpdateType;", "onUserIdChange", "userId", "id"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface IdentityListener {
    void onDeviceIdChange(String deviceId);

    void onIdentityChanged(Identity identity, IdentityUpdateType updateType);

    void onUserIdChange(String userId);
}
