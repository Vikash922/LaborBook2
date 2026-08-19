package com.amplitude.eventbridge;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventBridge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/amplitude/eventbridge/EventBridgeImpl;", "Lcom/amplitude/eventbridge/EventBridge;", "()V", "channels", "", "Lcom/amplitude/eventbridge/EventChannel;", "Lcom/amplitude/eventbridge/EventBridgeChannel;", "lock", "", "sendEvent", "", "channel", "event", "Lcom/amplitude/eventbridge/Event;", "setEventReceiver", "receiver", "Lcom/amplitude/eventbridge/EventReceiver;", "event-bridge"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class EventBridgeImpl implements EventBridge {
    private final Object lock = new Object();
    private final Map<EventChannel, EventBridgeChannel> channels = new LinkedHashMap();

    @Override // com.amplitude.eventbridge.EventBridge
    public void sendEvent(EventChannel channel, Event event) {
        EventBridgeChannel eventBridgeChannel;
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(event, "event");
        synchronized (this.lock) {
            Map<EventChannel, EventBridgeChannel> map = this.channels;
            EventBridgeChannel eventBridgeChannel2 = map.get(channel);
            if (eventBridgeChannel2 == null) {
                eventBridgeChannel2 = new EventBridgeChannel(channel);
                map.put(channel, eventBridgeChannel2);
            }
            eventBridgeChannel = eventBridgeChannel2;
        }
        eventBridgeChannel.sendEvent(event);
    }

    @Override // com.amplitude.eventbridge.EventBridge
    public void setEventReceiver(EventChannel channel, EventReceiver receiver) {
        EventBridgeChannel eventBridgeChannel;
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(receiver, "receiver");
        synchronized (this.lock) {
            Map<EventChannel, EventBridgeChannel> map = this.channels;
            EventBridgeChannel eventBridgeChannel2 = map.get(channel);
            if (eventBridgeChannel2 == null) {
                eventBridgeChannel2 = new EventBridgeChannel(channel);
                map.put(channel, eventBridgeChannel2);
            }
            eventBridgeChannel = eventBridgeChannel2;
        }
        eventBridgeChannel.setEventReceiver(receiver);
    }
}
