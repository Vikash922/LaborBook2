package com.amplitude.p009id;

import com.amplitude.p009id.IdentityManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0006H\u0016J\b\u0010\u0016\u001a\u00020\nH\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rH\u0016J\u0018\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m2722d2 = {"Lcom/amplitude/id/IdentityManagerImpl;", "Lcom/amplitude/id/IdentityManager;", "identityStorage", "Lcom/amplitude/id/IdentityStorage;", "(Lcom/amplitude/id/IdentityStorage;)V", "identity", "Lcom/amplitude/id/Identity;", "identityLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "initialized", "", "listeners", "", "Lcom/amplitude/id/IdentityListener;", "listenersLock", "", "addIdentityListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "editIdentity", "Lcom/amplitude/id/IdentityManager$Editor;", "getIdentity", "isInitialized", "removeIdentityListener", "setIdentity", "updateType", "Lcom/amplitude/id/IdentityUpdateType;", "id"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class IdentityManagerImpl implements IdentityManager {
    private Identity identity;
    private final ReentrantReadWriteLock identityLock;
    private final IdentityStorage identityStorage;
    private boolean initialized;
    private final Set<IdentityListener> listeners;
    private final Object listenersLock;

    public IdentityManagerImpl(IdentityStorage identityStorage) {
        Intrinsics.checkNotNullParameter(identityStorage, "identityStorage");
        this.identityStorage = identityStorage;
        this.identityLock = new ReentrantReadWriteLock(true);
        this.identity = new Identity(null, null, 3, null);
        this.listenersLock = new Object();
        this.listeners = new LinkedHashSet();
        setIdentity(identityStorage.load(), IdentityUpdateType.Initialized);
    }

    @Override // com.amplitude.p009id.IdentityManager
    public IdentityManager.Editor editIdentity() {
        return new IdentityManager.Editor(this) { // from class: com.amplitude.id.IdentityManagerImpl.editIdentity.1
            private String deviceId;
            final /* synthetic */ IdentityManagerImpl this$0;
            private String userId;

            {
                this.this$0 = this;
                this.userId = this.$originalIdentity.getUserId();
                this.deviceId = this.$originalIdentity.getDeviceId();
            }

            @Override // com.amplitude.id.IdentityManager.Editor
            public IdentityManager.Editor setUserId(String userId) {
                this.userId = userId;
                return this;
            }

            @Override // com.amplitude.id.IdentityManager.Editor
            public IdentityManager.Editor setDeviceId(String deviceId) {
                this.deviceId = deviceId;
                return this;
            }

            @Override // com.amplitude.id.IdentityManager.Editor
            public void commit() {
                IdentityManager.setIdentity$default(this.this$0, new Identity(this.userId, this.deviceId), null, 2, null);
            }
        };
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.amplitude.p009id.IdentityManager
    public void setIdentity(Identity identity, IdentityUpdateType updateType) {
        Set<IdentityListener> set;
        Intrinsics.checkNotNullParameter(identity, "identity");
        Intrinsics.checkNotNullParameter(updateType, "updateType");
        Identity identity2 = getIdentity();
        ReentrantReadWriteLock reentrantReadWriteLock = this.identityLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            this.identity = identity;
            if (updateType == IdentityUpdateType.Initialized) {
                this.initialized = true;
            }
            Unit unit = Unit.INSTANCE;
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            if (Intrinsics.areEqual(identity, identity2)) {
                return;
            }
            synchronized (this.listenersLock) {
                set = CollectionsKt.toSet(this.listeners);
            }
            if (updateType != IdentityUpdateType.Initialized) {
                if (!Intrinsics.areEqual(identity.getUserId(), identity2.getUserId())) {
                    this.identityStorage.saveUserId(identity.getUserId());
                }
                if (!Intrinsics.areEqual(identity.getDeviceId(), identity2.getDeviceId())) {
                    this.identityStorage.saveDeviceId(identity.getDeviceId());
                }
            }
            for (IdentityListener identityListener : set) {
                if (!Intrinsics.areEqual(identity.getUserId(), identity2.getUserId())) {
                    identityListener.onUserIdChange(identity.getUserId());
                }
                if (!Intrinsics.areEqual(identity.getDeviceId(), identity2.getDeviceId())) {
                    identityListener.onDeviceIdChange(identity.getDeviceId());
                }
                identityListener.onIdentityChanged(identity, updateType);
            }
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }

    @Override // com.amplitude.p009id.IdentityManager
    public Identity getIdentity() {
        ReentrantReadWriteLock.ReadLock lock = this.identityLock.readLock();
        lock.lock();
        try {
            return this.identity;
        } finally {
            lock.unlock();
        }
    }

    @Override // com.amplitude.p009id.IdentityManager
    public void addIdentityListener(IdentityListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.listenersLock) {
            this.listeners.add(listener);
        }
    }

    @Override // com.amplitude.p009id.IdentityManager
    public void removeIdentityListener(IdentityListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.listenersLock) {
            this.listeners.remove(listener);
        }
    }

    @Override // com.amplitude.p009id.IdentityManager
    /* JADX INFO: renamed from: isInitialized, reason: from getter */
    public boolean getInitialized() {
        return this.initialized;
    }
}
