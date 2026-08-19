package com.amplitude.core.platform.plugins;

import com.amplitude.core.Amplitude;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.Plugin;
import com.amplitude.eventbridge.EventBridge;
import com.amplitude.eventbridge.EventBridgeContainer;
import com.amplitude.eventbridge.EventChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityEventSender.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m2722d2 = {"Lcom/amplitude/core/platform/plugins/IdentityEventSender;", "Lcom/amplitude/core/platform/Plugin;", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "eventBridge", "Lcom/amplitude/eventbridge/EventBridge;", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "execute", "Lcom/amplitude/core/events/BaseEvent;", "event", "setup", "", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class IdentityEventSender implements Plugin {
    public Amplitude amplitude;
    private EventBridge eventBridge;
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
        this.eventBridge = EventBridgeContainer.INSTANCE.getInstance(amplitude.getConfiguration().getInstanceName()).getEventBridge();
    }

    @Override // com.amplitude.core.platform.Plugin
    public BaseEvent execute(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getUserProperties() != null) {
            EventBridge eventBridge = this.eventBridge;
            if (eventBridge == null) {
                Intrinsics.throwUninitializedPropertyAccessException("eventBridge");
                eventBridge = null;
            }
            eventBridge.sendEvent(EventChannel.IDENTIFY, IdentityEventSenderKt.toBridgeEvent(event));
        }
        return event;
    }
}
