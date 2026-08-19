package com.inmobi.media;

import android.content.Context;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Ca */
/* JADX INFO: loaded from: classes6.dex */
public final class C2728Ca {

    /* JADX INFO: renamed from: a */
    public final Context f894a;

    /* JADX INFO: renamed from: b */
    public final long f895b;

    /* JADX INFO: renamed from: c */
    public final int f896c;

    /* JADX INFO: renamed from: d */
    public boolean f897d;

    /* JADX INFO: renamed from: e */
    public final C2739D6 f898e;

    /* JADX INFO: renamed from: f */
    public final C2774Fb f899f;

    /* JADX INFO: renamed from: g */
    public final List f900g;

    /* JADX INFO: renamed from: h */
    public final ConcurrentHashMap f901h;

    /* JADX INFO: renamed from: i */
    public final AtomicBoolean f902i;

    /* JADX INFO: renamed from: j */
    public String f903j;

    /* JADX INFO: renamed from: k */
    public final AtomicInteger f904k;

    public C2728Ca(Context context, double d, EnumC2709B6 logLevel, long j, int i, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.f894a = context;
        this.f895b = j;
        this.f896c = i;
        this.f897d = z;
        this.f898e = new C2739D6(logLevel);
        this.f899f = new C2774Fb(d);
        this.f900g = Collections.synchronizedList(new ArrayList());
        this.f901h = new ConcurrentHashMap();
        this.f902i = new AtomicBoolean(false);
        this.f903j = "";
        this.f904k = new AtomicInteger(0);
    }

    /* JADX INFO: renamed from: a */
    public final void m928a(final EnumC2709B6 logLevel, String tag, String message) throws JSONException {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (this.f902i.get()) {
            return;
        }
        SimpleDateFormat simpleDateFormat = AbstractC2754E6.f973a;
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        final JSONObject jSONObject = new JSONObject();
        jSONObject.put("scope", logLevel.name());
        jSONObject.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, AbstractC2754E6.f973a.format(new Date()));
        jSONObject.put("tag", tag);
        jSONObject.put("data", message);
        ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ca$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2728Ca.m925a(this.f$0, logLevel, jSONObject);
            }
        };
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC2874M6.f1257a.submit(runnable);
    }

    /* JADX INFO: renamed from: b */
    public final void m929b() {
        Objects.toString(this.f902i);
        if ((this.f897d || this.f899f.m1122a()) && !this.f902i.getAndSet(true)) {
            ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ca$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C2728Ca.m926b(this.f$0);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC2874M6.f1257a.submit(runnable);
        }
    }

    /* JADX INFO: renamed from: c */
    public final String m930c() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        synchronized (this.f901h) {
            for (Map.Entry entry : this.f901h.entrySet()) {
                jSONObject2.put((String) entry.getKey(), entry.getValue());
            }
            Unit unit = Unit.INSTANCE;
        }
        jSONObject.put("vitals", jSONObject2);
        jSONObject.put("log", m931d());
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: renamed from: d */
    public final JSONArray m931d() {
        JSONArray jSONArray = new JSONArray();
        List logData = this.f900g;
        Intrinsics.checkNotNullExpressionValue(logData, "logData");
        synchronized (logData) {
            List logData2 = this.f900g;
            Intrinsics.checkNotNullExpressionValue(logData2, "logData");
            Iterator it = logData2.iterator();
            while (it.hasNext()) {
                jSONArray.put((JSONObject) it.next());
            }
            Unit unit = Unit.INSTANCE;
        }
        return jSONArray;
    }

    /* JADX INFO: renamed from: b */
    public static final void m926b(C2728Ca this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Objects.toString(this$0.f902i);
        ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
        if (Result.m3328exceptionOrNullimpl(AbstractC2859L6.m1289a(new C2713Ba(this$0, true))) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m3325constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m3325constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m925a(C2728Ca this$0, EnumC2709B6 eventLogLevel, JSONObject data) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eventLogLevel, "$logLevel");
        Intrinsics.checkNotNullParameter(data, "$data");
        try {
            C2739D6 c2739d6 = this$0.f898e;
            c2739d6.getClass();
            Intrinsics.checkNotNullParameter(eventLogLevel, "eventLogLevel");
            int iOrdinal = c2739d6.f918a.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        if (iOrdinal != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (eventLogLevel != EnumC2709B6.f854d) {
                            return;
                        }
                    } else if (eventLogLevel != EnumC2709B6.f853c && eventLogLevel != EnumC2709B6.f854d) {
                        return;
                    }
                } else if (eventLogLevel != EnumC2709B6.f852b && eventLogLevel != EnumC2709B6.f853c && eventLogLevel != EnumC2709B6.f854d) {
                    return;
                }
            }
            this$0.f900g.add(data);
        } catch (Exception e) {
            this$0.getClass();
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m927a() {
        Objects.toString(this.f902i);
        if ((this.f897d || this.f899f.m1122a()) && !this.f902i.get()) {
            ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ca$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C2728Ca.m924a(this.f$0);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC2874M6.f1257a.submit(runnable);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m924a(C2728Ca this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f904k.getAndIncrement();
        Objects.toString(this$0.f902i);
        ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
        if (Result.m3328exceptionOrNullimpl(AbstractC2859L6.m1289a(new C2713Ba(this$0, false))) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m3325constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m3325constructorimpl(ResultKt.createFailure(th));
            }
        }
    }
}
