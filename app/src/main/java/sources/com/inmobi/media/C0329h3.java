package com.inmobi.media;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public class C0329h3 extends C0565x5 {
    public final StackTraceElement[] g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0329h3(Thread thread, Throwable error) {
        super("crashReporting", "CrashEvent", Xc.a(thread, error));
        Intrinsics.checkNotNullParameter(thread, "thread");
        Intrinsics.checkNotNullParameter(error, "error");
        StackTraceElement[] stackTrace = error.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        this.g = stackTrace;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C0329h3(String str) {
        String eventId = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(eventId, "toString(...)");
        Intrinsics.checkNotNullParameter("crashReporting", "component");
        Intrinsics.checkNotNullParameter("CatchEvent", "eventType");
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        super(eventId, "crashReporting", "CatchEvent", str);
    }
}
