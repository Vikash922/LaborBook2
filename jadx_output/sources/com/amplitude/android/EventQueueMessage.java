package com.amplitude.android;

import com.amplitude.core.events.BaseEvent;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Timeline.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, m2722d2 = {"Lcom/amplitude/android/EventQueueMessage;", "", "event", "Lcom/amplitude/core/events/BaseEvent;", "(Lcom/amplitude/core/events/BaseEvent;)V", "getEvent", "()Lcom/amplitude/core/events/BaseEvent;", "component1", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class EventQueueMessage {
    private final BaseEvent event;

    public static /* synthetic */ EventQueueMessage copy$default(EventQueueMessage eventQueueMessage, BaseEvent baseEvent, int i, Object obj) {
        if ((i & 1) != 0) {
            baseEvent = eventQueueMessage.event;
        }
        return eventQueueMessage.copy(baseEvent);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final BaseEvent getEvent() {
        return this.event;
    }

    public final EventQueueMessage copy(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return new EventQueueMessage(event);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof EventQueueMessage) && Intrinsics.areEqual(this.event, ((EventQueueMessage) other).event);
    }

    public int hashCode() {
        return this.event.hashCode();
    }

    public String toString() {
        return "EventQueueMessage(event=" + this.event + ')';
    }

    public EventQueueMessage(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.event = event;
    }

    public final BaseEvent getEvent() {
        return this.event;
    }
}
