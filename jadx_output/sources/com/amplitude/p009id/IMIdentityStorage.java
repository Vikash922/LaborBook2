package com.amplitude.p009id;

import kotlin.Metadata;

/* JADX INFO: compiled from: IMIdentityStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\u000f2\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0011"}, m2722d2 = {"Lcom/amplitude/id/IMIdentityStorage;", "Lcom/amplitude/id/IdentityStorage;", "()V", "deviceId", "", "getDeviceId", "()Ljava/lang/String;", "setDeviceId", "(Ljava/lang/String;)V", "userId", "getUserId", "setUserId", "load", "Lcom/amplitude/id/Identity;", "saveDeviceId", "", "saveUserId", "id"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class IMIdentityStorage implements IdentityStorage {
    private String deviceId;
    private String userId;

    public final String getUserId() {
        return this.userId;
    }

    public final void setUserId(String str) {
        this.userId = str;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final void setDeviceId(String str) {
        this.deviceId = str;
    }

    @Override // com.amplitude.p009id.IdentityStorage
    public Identity load() {
        return new Identity(this.userId, this.deviceId);
    }

    @Override // com.amplitude.p009id.IdentityStorage
    public void saveUserId(String userId) {
        this.userId = userId;
    }

    @Override // com.amplitude.p009id.IdentityStorage
    public void saveDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }
}
