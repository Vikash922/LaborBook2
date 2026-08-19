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

/* JADX INFO: renamed from: com.inmobi.media.a1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3068a1 extends AbstractC3445z3 {

    /* JADX INFO: renamed from: b */
    public final Context f1831b;

    /* JADX INFO: renamed from: c */
    public final long f1832c;

    /* JADX INFO: renamed from: d */
    public final int f1833d;

    /* JADX INFO: renamed from: e */
    public final ActivityManager f1834e;

    /* JADX INFO: renamed from: f */
    public final C3133e6 f1835f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3068a1(Context context, C2691A3 listener, long j, int i) {
        super(listener);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f1831b = context;
        this.f1832c = j;
        this.f1833d = i;
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        this.f1834e = (ActivityManager) systemService;
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        this.f1835f = AbstractC3118d6.m2058a(context, "appClose");
    }

    /* JADX INFO: renamed from: a */
    public static final void m2010a(C3068a1 this$0, ApplicationExitInfo applicationExitInfo) throws IOException {
        String string;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2691A3 c2691a3 = this$0.f2788a;
        int reason = applicationExitInfo.getReason();
        String description = applicationExitInfo.getDescription();
        InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
        int i = this$0.f1833d;
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
                                sb2.append(line).append(StringUtils.f4768LF);
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
                                sb.append(line).append(StringUtils.f4768LF);
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
        c2691a3.m833a(new C3083b1(description, reason, string));
    }

    @Override // com.inmobi.media.AbstractC3445z3
    /* JADX INFO: renamed from: b */
    public final void mo2012b() {
    }

    @Override // com.inmobi.media.AbstractC3445z3
    /* JADX INFO: renamed from: a */
    public final void mo2011a() {
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.a1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3068a1.m2009a(this.f$0);
            }
        };
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC3037Xc.f1652a.execute(runnable);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2009a(final C3068a1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<ApplicationExitInfo> historicalProcessExitReasons = this$0.f1834e.getHistoricalProcessExitReasons(this$0.f1831b.getPackageName(), 0, 10);
        Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
        C3133e6 c3133e6 = this$0.f1835f;
        c3133e6.getClass();
        Intrinsics.checkNotNullParameter("exitReasonTimestamp", "key");
        long j = c3133e6.f2045a.getLong("exitReasonTimestamp", 0L);
        long timestamp = j;
        for (final ApplicationExitInfo applicationExitInfo : historicalProcessExitReasons) {
            if (applicationExitInfo.getTimestamp() > j) {
                long j2 = this$0.f1832c;
                Runnable runnable = new Runnable() { // from class: com.inmobi.media.a1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() throws IOException {
                        C3068a1.m2010a(this.f$0, applicationExitInfo);
                    }
                };
                ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
                Intrinsics.checkNotNullParameter(runnable, "runnable");
                AbstractC3037Xc.f1652a.schedule(runnable, j2, TimeUnit.MILLISECONDS);
                if (applicationExitInfo.getTimestamp() > timestamp) {
                    timestamp = applicationExitInfo.getTimestamp();
                }
            }
        }
        C3133e6.m2100a(this$0.f1835f, "exitReasonTimestamp", timestamp, false, 4, (Object) null);
    }
}
