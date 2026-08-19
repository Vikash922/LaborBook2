package com.amplitude.core.utilities;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: compiled from: Response.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, m2722d2 = {"Lcom/amplitude/core/utilities/PayloadTooLargeResponse;", "Lcom/amplitude/core/utilities/Response;", "response", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "error", "", "getError", "()Ljava/lang/String;", "status", "Lcom/amplitude/core/utilities/HttpStatus;", "getStatus", "()Lcom/amplitude/core/utilities/HttpStatus;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class PayloadTooLargeResponse implements Response {
    private final String error;
    private final HttpStatus status;

    public PayloadTooLargeResponse(JSONObject response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.status = HttpStatus.PAYLOAD_TOO_LARGE;
        this.error = JSONUtilKt.getStringWithDefault(response, "error", "");
    }

    @Override // com.amplitude.core.utilities.Response
    public HttpStatus getStatus() {
        return this.status;
    }

    public final String getError() {
        return this.error;
    }
}
