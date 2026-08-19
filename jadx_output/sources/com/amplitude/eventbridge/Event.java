package com.amplitude.eventbridge;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventBridge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005\u0012\u0018\b\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005\u0012\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005\u0012\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u0019\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005HÆ\u0003J\u0019\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005HÆ\u0003J\u0019\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005HÆ\u0003J\u0019\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005HÆ\u0003J{\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0018\b\u0002\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00052\u0018\b\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00052\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00052\u0018\b\u0002\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR*\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\u0010R!\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000bR!\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000b¨\u0006\u001f"}, m2722d2 = {"Lcom/amplitude/eventbridge/Event;", "", "eventType", "", "eventProperties", "", "userProperties", "groups", "groupProperties", "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "getEventProperties", "()Ljava/util/Map;", "getEventType", "()Ljava/lang/String;", "getGroupProperties", "setGroupProperties", "(Ljava/util/Map;)V", "getGroups", "getUserProperties", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "event-bridge"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class Event {
    private final Map<String, Object> eventProperties;
    private final String eventType;
    private Map<String, ? extends Object> groupProperties;
    private final Map<String, Object> groups;
    private final Map<String, Object> userProperties;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Event copy$default(Event event, String str, Map map, Map map2, Map map3, Map map4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = event.eventType;
        }
        if ((i & 2) != 0) {
            map = event.eventProperties;
        }
        Map map5 = map;
        if ((i & 4) != 0) {
            map2 = event.userProperties;
        }
        Map map6 = map2;
        if ((i & 8) != 0) {
            map3 = event.groups;
        }
        Map map7 = map3;
        if ((i & 16) != 0) {
            map4 = event.groupProperties;
        }
        return event.copy(str, map5, map6, map7, map4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEventType() {
        return this.eventType;
    }

    public final Map<String, Object> component2() {
        return this.eventProperties;
    }

    public final Map<String, Object> component3() {
        return this.userProperties;
    }

    public final Map<String, Object> component4() {
        return this.groups;
    }

    public final Map<String, Object> component5() {
        return this.groupProperties;
    }

    public final Event copy(String eventType, Map<String, ? extends Object> eventProperties, Map<String, ? extends Object> userProperties, Map<String, ? extends Object> groups, Map<String, ? extends Object> groupProperties) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return new Event(eventType, eventProperties, userProperties, groups, groupProperties);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Event)) {
            return false;
        }
        Event event = (Event) other;
        return Intrinsics.areEqual(this.eventType, event.eventType) && Intrinsics.areEqual(this.eventProperties, event.eventProperties) && Intrinsics.areEqual(this.userProperties, event.userProperties) && Intrinsics.areEqual(this.groups, event.groups) && Intrinsics.areEqual(this.groupProperties, event.groupProperties);
    }

    public int hashCode() {
        int iHashCode = this.eventType.hashCode() * 31;
        Map<String, Object> map = this.eventProperties;
        int iHashCode2 = (iHashCode + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, Object> map2 = this.userProperties;
        int iHashCode3 = (iHashCode2 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, Object> map3 = this.groups;
        int iHashCode4 = (iHashCode3 + (map3 == null ? 0 : map3.hashCode())) * 31;
        Map<String, ? extends Object> map4 = this.groupProperties;
        return iHashCode4 + (map4 != null ? map4.hashCode() : 0);
    }

    public String toString() {
        return "Event(eventType=" + this.eventType + ", eventProperties=" + this.eventProperties + ", userProperties=" + this.userProperties + ", groups=" + this.groups + ", groupProperties=" + this.groupProperties + ')';
    }

    public Event(String eventType, Map<String, ? extends Object> map, Map<String, ? extends Object> map2, Map<String, ? extends Object> map3, Map<String, ? extends Object> map4) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.eventType = eventType;
        this.eventProperties = map;
        this.userProperties = map2;
        this.groups = map3;
        this.groupProperties = map4;
    }

    public /* synthetic */ Event(String str, Map map, Map map2, Map map3, Map map4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : map, (i & 4) != 0 ? null : map2, (i & 8) != 0 ? null : map3, (i & 16) != 0 ? null : map4);
    }

    public final String getEventType() {
        return this.eventType;
    }

    public final Map<String, Object> getEventProperties() {
        return this.eventProperties;
    }

    public final Map<String, Object> getUserProperties() {
        return this.userProperties;
    }

    public final Map<String, Object> getGroups() {
        return this.groups;
    }

    public final Map<String, Object> getGroupProperties() {
        return this.groupProperties;
    }

    public final void setGroupProperties(Map<String, ? extends Object> map) {
        this.groupProperties = map;
    }
}
