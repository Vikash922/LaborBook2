package com.inmobi.media;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h3 */
/* JADX INFO: loaded from: classes6.dex */
public class C3175h3 extends C3417x5 {

    /* JADX INFO: renamed from: g */
    public final StackTraceElement[] f2132g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3175h3(Thread thread, Throwable error) {
        super("crashReporting", "CrashEvent", AbstractC3037Xc.m1914a(thread, error));
        Intrinsics.checkNotNullParameter(thread, "thread");
        Intrinsics.checkNotNullParameter(error, "error");
        StackTraceElement[] stackTrace = error.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        this.f2132g = stackTrace;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C3175h3(String str) {
        String eventId = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(eventId, "toString(...)");
        Intrinsics.checkNotNullParameter("crashReporting", "component");
        Intrinsics.checkNotNullParameter("CatchEvent", "eventType");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        super(eventId, "crashReporting", "CatchEvent", str);
    }
}
