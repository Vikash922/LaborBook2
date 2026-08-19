package com.itextpdf.commons.exceptions;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class AggregatedException extends ITextException {
    private static final String AGGREGATED_MESSAGE = "Aggregated message";
    public static final String ERROR_DURING_EVENT_PROCESSING = "Error during event processing";
    private final List<RuntimeException> aggregatedExceptions;

    public AggregatedException(List<RuntimeException> list) {
        super("");
        this.aggregatedExceptions = new ArrayList(list);
    }

    public AggregatedException(String str, List<RuntimeException> list) {
        super(str);
        this.aggregatedExceptions = new ArrayList(list);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (message == null || message.isEmpty()) {
            message = AGGREGATED_MESSAGE;
        }
        StringBuilder sb = new StringBuilder(message);
        sb.append(":\n");
        for (int i = 0; i < this.aggregatedExceptions.size(); i++) {
            RuntimeException runtimeException = this.aggregatedExceptions.get(i);
            if (runtimeException != null) {
                sb.append(i).append(") ").append(runtimeException.getMessage()).append('\n');
            }
        }
        return sb.toString();
    }

    public List<Exception> getAggregatedExceptions() {
        return Collections.unmodifiableList(this.aggregatedExceptions);
    }
}
