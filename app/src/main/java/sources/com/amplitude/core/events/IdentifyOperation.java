package com.amplitude.core.events;

import com.amplitude.analytics.connector.IdentityStoreKt;
import kotlin.Metadata;

/* JADX INFO: compiled from: Identify.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, m2722d2 = {"Lcom/amplitude/core/events/IdentifyOperation;", "", "operationType", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getOperationType", "()Ljava/lang/String;", "SET", "SET_ONCE", "ADD", "APPEND", "CLEAR_ALL", "PREPEND", "UNSET", "PRE_INSERT", "POST_INSERT", "REMOVE", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public enum IdentifyOperation {
    SET(IdentityStoreKt.ID_OP_SET),
    SET_ONCE("$setOnce"),
    ADD("$add"),
    APPEND("$append"),
    CLEAR_ALL(IdentityStoreKt.ID_OP_CLEAR_ALL),
    PREPEND("$prepend"),
    UNSET(IdentityStoreKt.ID_OP_UNSET),
    PRE_INSERT("$preInsert"),
    POST_INSERT("$postInsert"),
    REMOVE("$remove");

    private final String operationType;

    IdentifyOperation(String str) {
        this.operationType = str;
    }

    public final String getOperationType() {
        return this.operationType;
    }
}
