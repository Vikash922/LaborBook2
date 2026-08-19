package com.amplitude.core.platform;

import com.amplitude.core.events.BaseEvent;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventPipeline.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, m2722d2 = {"Lcom/amplitude/core/platform/WriteQueueMessage;", "", "type", "Lcom/amplitude/core/platform/WriteQueueMessageType;", "event", "Lcom/amplitude/core/events/BaseEvent;", "(Lcom/amplitude/core/platform/WriteQueueMessageType;Lcom/amplitude/core/events/BaseEvent;)V", "getEvent", "()Lcom/amplitude/core/events/BaseEvent;", "getType", "()Lcom/amplitude/core/platform/WriteQueueMessageType;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class WriteQueueMessage {
    private final BaseEvent event;
    private final WriteQueueMessageType type;

    public static /* synthetic */ WriteQueueMessage copy$default(WriteQueueMessage writeQueueMessage, WriteQueueMessageType writeQueueMessageType, BaseEvent baseEvent, int i, Object obj) {
        if ((i & 1) != 0) {
            writeQueueMessageType = writeQueueMessage.type;
        }
        if ((i & 2) != 0) {
            baseEvent = writeQueueMessage.event;
        }
        return writeQueueMessage.copy(writeQueueMessageType, baseEvent);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final WriteQueueMessageType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BaseEvent getEvent() {
        return this.event;
    }

    public final WriteQueueMessage copy(WriteQueueMessageType type, BaseEvent event) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new WriteQueueMessage(type, event);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WriteQueueMessage)) {
            return false;
        }
        WriteQueueMessage writeQueueMessage = (WriteQueueMessage) other;
        return this.type == writeQueueMessage.type && Intrinsics.areEqual(this.event, writeQueueMessage.event);
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        BaseEvent baseEvent = this.event;
        return iHashCode + (baseEvent == null ? 0 : baseEvent.hashCode());
    }

    public String toString() {
        return "WriteQueueMessage(type=" + this.type + ", event=" + this.event + ')';
    }

    public WriteQueueMessage(WriteQueueMessageType type, BaseEvent baseEvent) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.event = baseEvent;
    }

    public final WriteQueueMessageType getType() {
        return this.type;
    }

    public final BaseEvent getEvent() {
        return this.event;
    }
}
