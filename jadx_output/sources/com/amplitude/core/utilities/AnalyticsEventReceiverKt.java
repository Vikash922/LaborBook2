package com.amplitude.core.utilities;

import com.amplitude.core.events.BaseEvent;
import com.amplitude.eventbridge.Event;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnalyticsEventReceiver.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, m2722d2 = {"toBaseEvent", "Lcom/amplitude/core/events/BaseEvent;", "Lcom/amplitude/eventbridge/Event;", "core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AnalyticsEventReceiverKt {
    public static final BaseEvent toBaseEvent(Event event) {
        Intrinsics.checkNotNullParameter(event, "<this>");
        BaseEvent baseEvent = new BaseEvent();
        baseEvent.setEventType(event.getEventType());
        Map<String, Object> eventProperties = event.getEventProperties();
        baseEvent.setEventProperties(eventProperties == null ? null : MapsKt.toMutableMap(eventProperties));
        Map<String, Object> userProperties = event.getUserProperties();
        baseEvent.setUserProperties(userProperties == null ? null : MapsKt.toMutableMap(userProperties));
        Map<String, Object> groups = event.getGroups();
        baseEvent.setGroups(groups == null ? null : MapsKt.toMutableMap(groups));
        Map<String, Object> groupProperties = event.getGroupProperties();
        baseEvent.setGroupProperties(groupProperties != null ? MapsKt.toMutableMap(groupProperties) : null);
        return baseEvent;
    }
}
