package com.amplitude.core.platform.plugins;

import com.amplitude.core.events.BaseEvent;
import com.amplitude.eventbridge.Event;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityEventSender.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, m2722d2 = {"toBridgeEvent", "Lcom/amplitude/eventbridge/Event;", "Lcom/amplitude/core/events/BaseEvent;", "core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class IdentityEventSenderKt {
    public static final Event toBridgeEvent(BaseEvent baseEvent) {
        Intrinsics.checkNotNullParameter(baseEvent, "<this>");
        return new Event(baseEvent.getEventType(), baseEvent.getEventProperties(), baseEvent.getUserProperties(), baseEvent.getGroups(), baseEvent.getGroupProperties());
    }
}
