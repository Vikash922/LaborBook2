package com.rebuilt.app.base;

import com.facebook.internal.AnalyticsEvents;
import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/base/Logger;", "", "<init>", "()V", "TAG", "", "getCallerClassName", SvgConstants.Attributes.f3323D, "", "message", "e", "i", "w", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class Logger {
    public static final Logger INSTANCE = new Logger();
    private static final String TAG = "LBLOG";

    /* JADX INFO: renamed from: d */
    public final void m2676d(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
    }

    /* JADX INFO: renamed from: e */
    public final void m2677e(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
    }

    /* JADX INFO: renamed from: i */
    public final void m2678i(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
    }

    /* JADX INFO: renamed from: w */
    public final void m2679w(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
    }

    private Logger() {
    }

    private final String getCallerClassName() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length > 4) {
            String className = stackTrace[4].getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            return className;
        }
        return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    }
}
