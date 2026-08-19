package com.amplitude.core.utilities;

import com.amplitude.android.migration.DatabaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Response.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001bÀ\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/core/utilities/ResponseHandler;", "", "handle", "", "response", "Lcom/amplitude/core/utilities/Response;", DatabaseConstants.EVENT_TABLE_NAME, "eventsString", "", "handleBadRequestResponse", "badRequestResponse", "Lcom/amplitude/core/utilities/BadRequestResponse;", "handleFailedResponse", "failedResponse", "Lcom/amplitude/core/utilities/FailedResponse;", "handlePayloadTooLargeResponse", "payloadTooLargeResponse", "Lcom/amplitude/core/utilities/PayloadTooLargeResponse;", "handleSuccessResponse", "successResponse", "Lcom/amplitude/core/utilities/SuccessResponse;", "handleTimeoutResponse", "timeoutResponse", "Lcom/amplitude/core/utilities/TimeoutResponse;", "handleTooManyRequestsResponse", "tooManyRequestsResponse", "Lcom/amplitude/core/utilities/TooManyRequestsResponse;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface ResponseHandler {
    void handleBadRequestResponse(BadRequestResponse badRequestResponse, Object events, String eventsString);

    void handleFailedResponse(FailedResponse failedResponse, Object events, String eventsString);

    void handlePayloadTooLargeResponse(PayloadTooLargeResponse payloadTooLargeResponse, Object events, String eventsString);

    void handleSuccessResponse(SuccessResponse successResponse, Object events, String eventsString);

    void handleTimeoutResponse(TimeoutResponse timeoutResponse, Object events, String eventsString);

    void handleTooManyRequestsResponse(TooManyRequestsResponse tooManyRequestsResponse, Object events, String eventsString);

    default void handle(Response response, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        if (response instanceof SuccessResponse) {
            handleSuccessResponse((SuccessResponse) response, events, eventsString);
            return;
        }
        if (response instanceof BadRequestResponse) {
            handleBadRequestResponse((BadRequestResponse) response, events, eventsString);
            return;
        }
        if (response instanceof PayloadTooLargeResponse) {
            handlePayloadTooLargeResponse((PayloadTooLargeResponse) response, events, eventsString);
            return;
        }
        if (response instanceof TooManyRequestsResponse) {
            handleTooManyRequestsResponse((TooManyRequestsResponse) response, events, eventsString);
        } else if (response instanceof TimeoutResponse) {
            handleTimeoutResponse((TimeoutResponse) response, events, eventsString);
        } else {
            handleFailedResponse((FailedResponse) response, events, eventsString);
        }
    }
}
