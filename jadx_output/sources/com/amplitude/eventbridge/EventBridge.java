package com.amplitude.eventbridge;

import kotlin.Metadata;

/* JADX INFO: compiled from: EventBridge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/eventbridge/EventBridge;", "", "sendEvent", "", "channel", "Lcom/amplitude/eventbridge/EventChannel;", "event", "Lcom/amplitude/eventbridge/Event;", "setEventReceiver", "receiver", "Lcom/amplitude/eventbridge/EventReceiver;", "event-bridge"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface EventBridge {
    void sendEvent(EventChannel channel, Event event);

    void setEventReceiver(EventChannel channel, EventReceiver receiver);
}
