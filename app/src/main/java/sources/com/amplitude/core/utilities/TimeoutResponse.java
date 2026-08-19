package com.amplitude.core.utilities;

import kotlin.Metadata;

/* JADX INFO: compiled from: Response.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m2722d2 = {"Lcom/amplitude/core/utilities/TimeoutResponse;", "Lcom/amplitude/core/utilities/Response;", "()V", "status", "Lcom/amplitude/core/utilities/HttpStatus;", "getStatus", "()Lcom/amplitude/core/utilities/HttpStatus;", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class TimeoutResponse implements Response {
    private final HttpStatus status = HttpStatus.TIMEOUT;

    @Override // com.amplitude.core.utilities.Response
    public HttpStatus getStatus() {
        return this.status;
    }
}
