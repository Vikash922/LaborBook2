package com.amplitude.eventbridge;

import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventBridge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bJ\u0010\u0010\u000e\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m2722d2 = {"Lcom/amplitude/eventbridge/EventBridgeChannel;", "", "channel", "Lcom/amplitude/eventbridge/EventChannel;", "(Lcom/amplitude/eventbridge/EventChannel;)V", "lock", "queue", "Ljava/util/concurrent/ArrayBlockingQueue;", "Lcom/amplitude/eventbridge/Event;", "receiver", "Lcom/amplitude/eventbridge/EventReceiver;", "sendEvent", "", "event", "setEventReceiver", "Companion", "event-bridge"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class EventBridgeChannel {
    public static final int QUEUE_CAPACITY = 512;
    private final EventChannel channel;
    private final Object lock;
    private final ArrayBlockingQueue<Event> queue;
    private EventReceiver receiver;

    public EventBridgeChannel(EventChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.channel = channel;
        this.lock = new Object();
        this.queue = new ArrayBlockingQueue<>(512);
    }

    public final void sendEvent(Event event) {
        EventReceiver eventReceiver;
        Intrinsics.checkNotNullParameter(event, "event");
        synchronized (this.lock) {
            if (this.receiver == null) {
                this.queue.offer(event);
            }
            eventReceiver = this.receiver;
        }
        if (eventReceiver == null) {
            return;
        }
        eventReceiver.receive(this.channel, event);
    }

    public final void setEventReceiver(EventReceiver receiver) {
        synchronized (this.lock) {
            if (this.receiver != null) {
                return;
            }
            this.receiver = receiver;
            ArrayList<Event> arrayList = new ArrayList();
            this.queue.drainTo(arrayList);
            for (Event event : arrayList) {
                if (receiver != null) {
                    receiver.receive(this.channel, event);
                }
            }
        }
    }
}
