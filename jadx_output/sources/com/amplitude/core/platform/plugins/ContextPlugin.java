package com.amplitude.core.platform.plugins;

import com.amplitude.core.Amplitude;
import com.amplitude.core.Configuration;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.IngestionMetadata;
import com.amplitude.core.events.Plan;
import com.amplitude.core.platform.Plugin;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContextPlugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, m2722d2 = {"Lcom/amplitude/core/platform/plugins/ContextPlugin;", "Lcom/amplitude/core/platform/Plugin;", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "applyContextData", "", "event", "Lcom/amplitude/core/events/BaseEvent;", "execute", "initializeDeviceId", "configuration", "Lcom/amplitude/core/Configuration;", "setDeviceId", "deviceId", "", "setup", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class ContextPlugin implements Plugin {
    public Amplitude amplitude;
    private final Plugin.Type type = Plugin.Type.Before;

    @Override // com.amplitude.core.platform.Plugin
    public Plugin.Type getType() {
        return this.type;
    }

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
        initializeDeviceId(amplitude.getConfiguration());
    }

    protected void setDeviceId(String deviceId) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        getAmplitude().setDeviceId(deviceId);
    }

    private final void initializeDeviceId(Configuration configuration) {
        String deviceId = configuration.getDeviceId();
        if (deviceId != null) {
            setDeviceId(deviceId);
        }
    }

    private final void applyContextData(BaseEvent event) {
        IngestionMetadata ingestionMetadata;
        Plan plan;
        String partnerId;
        if (event.getTimestamp() == null) {
            event.setTimestamp(Long.valueOf(System.currentTimeMillis()));
        }
        if (event.getInsertId() == null) {
            event.setInsertId(UUID.randomUUID().toString());
        }
        if (event.getLibrary() == null) {
            event.setLibrary("amplitude-kotlin/0.0.1");
        }
        if (event.getUserId() == null) {
            event.setUserId(getAmplitude().getStore().getUserId());
        }
        if (event.getDeviceId() == null) {
            event.setDeviceId(getAmplitude().getStore().getDeviceId());
        }
        if (event.getPartnerId() == null && (partnerId = getAmplitude().getConfiguration().getPartnerId()) != null) {
            event.setPartnerId(partnerId);
        }
        if (event.getIp() == null) {
            event.setIp("$remote");
        }
        if (event.getPlan() == null && (plan = getAmplitude().getConfiguration().getPlan()) != null) {
            event.setPlan(plan.clone());
        }
        if (event.getIngestionMetadata() != null || (ingestionMetadata = getAmplitude().getConfiguration().getIngestionMetadata()) == null) {
            return;
        }
        event.setIngestionMetadata(ingestionMetadata.clone());
    }

    @Override // com.amplitude.core.platform.Plugin
    public BaseEvent execute(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        applyContextData(event);
        return event;
    }
}
