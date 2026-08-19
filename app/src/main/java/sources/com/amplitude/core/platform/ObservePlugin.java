package com.amplitude.core.platform;

import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.Plugin;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Plugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\bJ\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH&J\u0012\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\rH&R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/amplitude/core/platform/ObservePlugin;", "Lcom/amplitude/core/platform/Plugin;", "()V", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "execute", "Lcom/amplitude/core/events/BaseEvent;", "event", "onDeviceIdChanged", "", "deviceId", "", "onUserIdChanged", "userId", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public abstract class ObservePlugin implements Plugin {
    private final Plugin.Type type = Plugin.Type.Observe;

    @Override // com.amplitude.core.platform.Plugin
    public final BaseEvent execute(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return null;
    }

    public abstract void onDeviceIdChanged(String deviceId);

    public abstract void onUserIdChanged(String userId);

    @Override // com.amplitude.core.platform.Plugin
    public Plugin.Type getType() {
        return this.type;
    }
}
