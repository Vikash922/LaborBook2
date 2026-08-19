package com.amplitude.core.utilities;

import com.google.android.gms.wallet.WalletConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: HttpClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, m2722d2 = {"Lcom/amplitude/core/utilities/HttpStatus;", "", "code", "", "(Ljava/lang/String;II)V", "getCode", "()I", "SUCCESS", "BAD_REQUEST", "TIMEOUT", "PAYLOAD_TOO_LARGE", "TOO_MANY_REQUESTS", "FAILED", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public enum HttpStatus {
    SUCCESS(200),
    BAD_REQUEST(400),
    TIMEOUT(408),
    PAYLOAD_TOO_LARGE(WalletConstants.ERROR_CODE_UNKNOWN),
    TOO_MANY_REQUESTS(429),
    FAILED(500);

    private final int code;

    HttpStatus(int i) {
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }
}
