package com.amplitude.core.utilities;

import com.amplitude.common.Logger;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoggerExtensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¨\u0006\b"}, m2722d2 = {"logWithStackTrace", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "logger", "Lcom/amplitude/common/Logger;", "message", "", "core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class LoggerExtensionsKt {
    public static final void logWithStackTrace(Exception exc, Logger logger, String message) {
        Intrinsics.checkNotNullParameter(exc, "<this>");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(message, "message");
        String message2 = exc.getMessage();
        if (message2 != null) {
            logger.error(message + ": " + message2);
        }
        if (exc.getStackTrace() == null) {
            return;
        }
        logger.error(Intrinsics.stringPlus("Stack trace: ", ExceptionsKt.stackTraceToString(exc)));
    }
}
