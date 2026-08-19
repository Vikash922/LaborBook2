package com.amplitude.core.utilities;

import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Response.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0012\u0010\t\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002¨\u0006\u000b"}, m2722d2 = {"Lcom/amplitude/core/utilities/HttpResponse;", "", "()V", "createHttpResponse", "Lcom/amplitude/core/utilities/Response;", "code", "", "responseBody", "", "parseResponseBodyOrGetDefault", "Lorg/json/JSONObject;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class HttpResponse {
    public static final HttpResponse INSTANCE = new HttpResponse();

    private HttpResponse() {
    }

    public final Response createHttpResponse(int code, String responseBody) {
        if (code == HttpStatus.SUCCESS.getCode()) {
            return new SuccessResponse();
        }
        if (code == HttpStatus.BAD_REQUEST.getCode()) {
            return new BadRequestResponse(new JSONObject(responseBody));
        }
        if (code == HttpStatus.PAYLOAD_TOO_LARGE.getCode()) {
            return new PayloadTooLargeResponse(new JSONObject(responseBody));
        }
        if (code == HttpStatus.TOO_MANY_REQUESTS.getCode()) {
            return new TooManyRequestsResponse(new JSONObject(responseBody));
        }
        if (code == HttpStatus.TIMEOUT.getCode()) {
            return new TimeoutResponse();
        }
        return new FailedResponse(parseResponseBodyOrGetDefault(responseBody));
    }

    private final JSONObject parseResponseBodyOrGetDefault(String responseBody) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String str = responseBody;
        if (str == null || str.length() == 0) {
            return jSONObject;
        }
        try {
            return new JSONObject(responseBody);
        } catch (Exception unused) {
            jSONObject.put("error", responseBody);
            return jSONObject;
        }
    }
}
