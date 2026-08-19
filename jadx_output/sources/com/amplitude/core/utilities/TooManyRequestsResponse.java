package com.amplitude.core.utilities;

import com.amplitude.core.events.BaseEvent;
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
@Metadata(m2721d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\f\"\u0004\b\u001c\u0010\u000eR \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\f\"\u0004\b\u001f\u0010\u000e¨\u0006$"}, m2722d2 = {"Lcom/amplitude/core/utilities/TooManyRequestsResponse;", "Lcom/amplitude/core/utilities/Response;", "response", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "error", "", "getError", "()Ljava/lang/String;", "exceededDailyQuotaDevices", "", "getExceededDailyQuotaDevices", "()Ljava/util/Set;", "setExceededDailyQuotaDevices", "(Ljava/util/Set;)V", "exceededDailyQuotaUsers", "getExceededDailyQuotaUsers", "setExceededDailyQuotaUsers", "status", "Lcom/amplitude/core/utilities/HttpStatus;", "getStatus", "()Lcom/amplitude/core/utilities/HttpStatus;", "throttledDevices", "getThrottledDevices", "setThrottledDevices", "throttledEvents", "", "getThrottledEvents", "setThrottledEvents", "throttledUsers", "getThrottledUsers", "setThrottledUsers", "isEventExceedDailyQuota", "", "event", "Lcom/amplitude/core/events/BaseEvent;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class TooManyRequestsResponse implements Response {
    private final String error;
    private Set<String> exceededDailyQuotaDevices;
    private Set<String> exceededDailyQuotaUsers;
    private final HttpStatus status;
    private Set<String> throttledDevices;
    private Set<Integer> throttledEvents;
    private Set<String> throttledUsers;

    public TooManyRequestsResponse(JSONObject response) throws JSONException {
        Intrinsics.checkNotNullParameter(response, "response");
        this.status = HttpStatus.TOO_MANY_REQUESTS;
        this.error = JSONUtilKt.getStringWithDefault(response, "error", "");
        this.exceededDailyQuotaUsers = SetsKt.emptySet();
        this.exceededDailyQuotaDevices = SetsKt.emptySet();
        this.throttledEvents = SetsKt.emptySet();
        this.throttledDevices = SetsKt.emptySet();
        this.throttledUsers = SetsKt.emptySet();
        if (response.has("exceeded_daily_quota_users")) {
            Set<String> setKeySet = response.getJSONObject("exceeded_daily_quota_users").keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet, "response.getJSONObject(\"…ly_quota_users\").keySet()");
            this.exceededDailyQuotaUsers = setKeySet;
        }
        if (response.has("exceeded_daily_quota_devices")) {
            Set<String> setKeySet2 = response.getJSONObject("exceeded_daily_quota_devices").keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet2, "response.getJSONObject(\"…_quota_devices\").keySet()");
            this.exceededDailyQuotaDevices = setKeySet2;
        }
        if (response.has("throttled_events")) {
            JSONArray jSONArray = response.getJSONArray("throttled_events");
            Intrinsics.checkNotNullExpressionValue(jSONArray, "response.getJSONArray(\"throttled_events\")");
            this.throttledEvents = ArraysKt.toSet(JSONUtilKt.toIntArray(jSONArray));
        }
        if (response.has("throttled_users")) {
            Set<String> setKeySet3 = response.getJSONObject("throttled_users").keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet3, "response.getJSONObject(\"throttled_users\").keySet()");
            this.throttledUsers = setKeySet3;
        }
        if (response.has("throttled_devices")) {
            Set<String> setKeySet4 = response.getJSONObject("throttled_devices").keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet4, "response.getJSONObject(\"…ottled_devices\").keySet()");
            this.throttledDevices = setKeySet4;
        }
    }

    @Override // com.amplitude.core.utilities.Response
    public HttpStatus getStatus() {
        return this.status;
    }

    public final String getError() {
        return this.error;
    }

    public final Set<String> getExceededDailyQuotaUsers() {
        return this.exceededDailyQuotaUsers;
    }

    public final void setExceededDailyQuotaUsers(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.exceededDailyQuotaUsers = set;
    }

    public final Set<String> getExceededDailyQuotaDevices() {
        return this.exceededDailyQuotaDevices;
    }

    public final void setExceededDailyQuotaDevices(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.exceededDailyQuotaDevices = set;
    }

    public final Set<Integer> getThrottledEvents() {
        return this.throttledEvents;
    }

    public final void setThrottledEvents(Set<Integer> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.throttledEvents = set;
    }

    public final Set<String> getThrottledDevices() {
        return this.throttledDevices;
    }

    public final void setThrottledDevices(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.throttledDevices = set;
    }

    public final Set<String> getThrottledUsers() {
        return this.throttledUsers;
    }

    public final void setThrottledUsers(Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.throttledUsers = set;
    }

    public final boolean isEventExceedDailyQuota(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return (event.getUserId() != null && CollectionsKt.contains(this.exceededDailyQuotaUsers, event.getUserId())) || (event.getDeviceId() != null && CollectionsKt.contains(this.exceededDailyQuotaDevices, event.getDeviceId()));
    }
}
