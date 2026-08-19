package com.amplitude.core.utilities;

import com.amplitude.core.events.BaseEvent;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Response.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001eJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR\u0014\u0010\u0019\u001a\u00020\u001aX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006#"}, m2722d2 = {"Lcom/amplitude/core/utilities/BadRequestResponse;", "Lcom/amplitude/core/utilities/Response;", "response", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "error", "", "getError", "()Ljava/lang/String;", "eventsWithInvalidFields", "", "", "getEventsWithInvalidFields", "()Ljava/util/Set;", "setEventsWithInvalidFields", "(Ljava/util/Set;)V", "eventsWithMissingFields", "getEventsWithMissingFields", "setEventsWithMissingFields", "silencedDevices", "getSilencedDevices", "setSilencedDevices", "silencedEvents", "getSilencedEvents", "setSilencedEvents", "status", "Lcom/amplitude/core/utilities/HttpStatus;", "getStatus", "()Lcom/amplitude/core/utilities/HttpStatus;", "getEventIndicesToDrop", "", "isEventSilenced", "", "event", "Lcom/amplitude/core/events/BaseEvent;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class BadRequestResponse implements Response {
    private final String error;
    private Set<Integer> eventsWithInvalidFields;
    private Set<Integer> eventsWithMissingFields;
    private Set<String> silencedDevices;
    private Set<Integer> silencedEvents;
    private final HttpStatus status;

    public BadRequestResponse(JSONObject response) throws JSONException {
        Intrinsics.checkNotNullParameter(response, "response");
        this.status = HttpStatus.BAD_REQUEST;
        this.error = JSONUtilKt.getStringWithDefault(response, "error", "");
        this.eventsWithInvalidFields = SetsKt.emptySet();
        this.eventsWithMissingFields = SetsKt.emptySet();
        this.silencedEvents = SetsKt.emptySet();
        this.silencedDevices = SetsKt.emptySet();
        if (response.has("events_with_invalid_fields")) {
            JSONObject jSONObject = response.getJSONObject("events_with_invalid_fields");
            Intrinsics.checkNotNullExpressionValue(jSONObject, "response.getJSONObject(\"…nts_with_invalid_fields\")");
            this.eventsWithInvalidFields = JSONUtilKt.collectIndices(jSONObject);
        }
        if (response.has("events_with_missing_fields")) {
            JSONObject jSONObject2 = response.getJSONObject("events_with_missing_fields");
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "response.getJSONObject(\"…nts_with_missing_fields\")");
            this.eventsWithMissingFields = JSONUtilKt.collectIndices(jSONObject2);
        }
        if (response.has("silenced_devices")) {
            Object jSONArray = response.getJSONArray("silenced_devices");
            Intrinsics.checkNotNullExpressionValue(jSONArray, "response.getJSONArray(\"silenced_devices\")");
            this.silencedDevices = CollectionsKt.toSet((Iterable) jSONArray);
        }
        if (response.has("silenced_events")) {
            JSONArray jSONArray2 = response.getJSONArray("silenced_events");
            Intrinsics.checkNotNullExpressionValue(jSONArray2, "response.getJSONArray(\"silenced_events\")");
            this.silencedEvents = ArraysKt.toSet(JSONUtilKt.toIntArray(jSONArray2));
        }
    }

    @Override // com.amplitude.core.utilities.Response
    public HttpStatus getStatus() {
        return this.status;
    }

    public final String getError() {
        return this.error;
    }

    public final Set<Integer> getEventsWithInvalidFields() {
        return this.eventsWithInvalidFields;
    }

    public final void setEventsWithInvalidFields(Set<Integer> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.eventsWithInvalidFields = set;
    }

    public final Set<Integer> getEventsWithMissingFields() {
        return this.eventsWithMissingFields;
    }

    public final void setEventsWithMissingFields(Set<Integer> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.eventsWithMissingFields = set;
    }

    public final Set<Integer> getSilencedEvents() {
        return this.silencedEvents;
    }

    public final void setSilencedEvents(Set<Integer> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.silencedEvents = set;
    }

    public final Set<String> getSilencedDevices() {
        return this.silencedDevices;
    }

    public final void setSilencedDevices(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.silencedDevices = set;
    }

    public final Set<Integer> getEventIndicesToDrop() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(this.eventsWithInvalidFields);
        linkedHashSet.addAll(this.eventsWithMissingFields);
        linkedHashSet.addAll(this.silencedEvents);
        return linkedHashSet;
    }

    public final boolean isEventSilenced(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String deviceId = event.getDeviceId();
        if (deviceId == null) {
            return false;
        }
        return getSilencedDevices().contains(deviceId);
    }
}
