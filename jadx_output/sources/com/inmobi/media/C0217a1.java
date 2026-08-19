package com.inmobi.media;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: renamed from: com.inmobi.media.a1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0217a1 extends AbstractC0593z3 {
    public final Context b;
    public final long c;
    public final int d;
    public final ActivityManager e;
    public final C0284e6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0217a1(Context context, A3 listener, long j, int i) {
        super(listener);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.b = context;
        this.c = j;
        this.d = i;
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        this.e = (ActivityManager) systemService;
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        this.f = AbstractC0268d6.a(context, "appClose");
    }

    public static final void a(C0217a1 this$0, ApplicationExitInfo applicationExitInfo) throws IOException {
        String string;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        A3 a3 = this$0.f543a;
        int reason = applicationExitInfo.getReason();
        String description = applicationExitInfo.getDescription();
        InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
        int i = this$0.d;
        Intrinsics.checkNotNullParameter("\"main\"", "startMarker");
        Intrinsics.checkNotNullParameter("ZygoteInit.java", "endMarker");
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        if (traceInputStream != null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(traceInputStream));
                int i2 = i;
                boolean z = false;
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            if (i > 0 && !z) {
                                sb2.append(line).append(StringUtils.LF);
                                i--;
                            }
                            int i3 = i;
                            boolean z2 = z;
                            if (StringsKt.startsWith$default(line, "\"main\"", false, 2, (Object) null)) {
                                StringsKt.clear(sb2);
                                z = true;
                            } else {
                                z = z2;
                            }
                            if (z) {
                                i2--;
                                sb.append(line).append(StringUtils.LF);
                            }
                            if (StringsKt.contains$default((CharSequence) line, (CharSequence) "ZygoteInit.java", false, 2, (Object) null) || i2 <= 0) {
                                break;
                            } else {
                                i = i3;
                            }
                        } else {
                            break;
                        }
                    } catch (Throwable th) {
                        bufferedReader.close();
                        throw th;
                    }
                }
                bufferedReader.close();
            } catch (IOException e) {
                Log.e("CommonExt", "Error reading from input stream", e);
            }
        }
        if (sb.length() == 0) {
            string = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        } else {
            string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        }
        a3.a(new C0232b1(description, reason, string));
    }

    @Override // com.inmobi.media.AbstractC0593z3
    public final void b() {
    }

    @Override // com.inmobi.media.AbstractC0593z3
    public final void a() {
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.a1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0217a1.a(this.f$0);
            }
        };
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Xc.f282a.execute(runnable);
    }

    public static final void a(final C0217a1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<ApplicationExitInfo> historicalProcessExitReasons = this$0.e.getHistoricalProcessExitReasons(this$0.b.getPackageName(), 0, 10);
        Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
        C0284e6 c0284e6 = this$0.f;
        c0284e6.getClass();
        Intrinsics.checkNotNullParameter("exitReasonTimestamp", "key");
        long j = c0284e6.f340a.getLong("exitReasonTimestamp", 0L);
        long timestamp = j;
        for (final ApplicationExitInfo applicationExitInfo : historicalProcessExitReasons) {
            if (applicationExitInfo.getTimestamp() > j) {
                long j2 = this$0.c;
                Runnable runnable = new Runnable() { // from class: com.inmobi.media.a1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() throws IOException {
                        C0217a1.a(this.f$0, applicationExitInfo);
                    }
                };
                ScheduledExecutorService scheduledExecutorService = Xc.f282a;
                Intrinsics.checkNotNullParameter(runnable, "runnable");
                Xc.f282a.schedule(runnable, j2, TimeUnit.MILLISECONDS);
                if (applicationExitInfo.getTimestamp() > timestamp) {
                    timestamp = applicationExitInfo.getTimestamp();
                }
            }
        }
        C0284e6.a(this$0.f, "exitReasonTimestamp", timestamp, false, 4, (Object) null);
    }
}
