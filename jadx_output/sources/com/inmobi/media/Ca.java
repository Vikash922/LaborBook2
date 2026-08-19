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

/* JADX INFO: loaded from: classes6.dex */
public final class Ca {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f90a;
    public final long b;
    public final int c;
    public boolean d;
    public final D6 e;
    public final Fb f;
    public final List g;
    public final ConcurrentHashMap h;
    public final AtomicBoolean i;
    public String j;
    public final AtomicInteger k;

    public Ca(Context context, double d, B6 logLevel, long j, int i, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.f90a = context;
        this.b = j;
        this.c = i;
        this.d = z;
        this.e = new D6(logLevel);
        this.f = new Fb(d);
        this.g = Collections.synchronizedList(new ArrayList());
        this.h = new ConcurrentHashMap();
        this.i = new AtomicBoolean(false);
        this.j = "";
        this.k = new AtomicInteger(0);
    }

    public final void a(final B6 logLevel, String tag, String message) throws JSONException {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (this.i.get()) {
            return;
        }
        SimpleDateFormat simpleDateFormat = E6.f106a;
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        final JSONObject jSONObject = new JSONObject();
        jSONObject.put("scope", logLevel.name());
        jSONObject.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, E6.f106a.format(new Date()));
        jSONObject.put("tag", tag);
        jSONObject.put("data", message);
        ScheduledExecutorService scheduledExecutorService = M6.f179a;
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ca$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Ca.a(this.f$0, logLevel, jSONObject);
            }
        };
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        M6.f179a.submit(runnable);
    }

    public final void b() {
        Objects.toString(this.i);
        if ((this.d || this.f.a()) && !this.i.getAndSet(true)) {
            ScheduledExecutorService scheduledExecutorService = M6.f179a;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ca$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Ca.b(this.f$0);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            M6.f179a.submit(runnable);
        }
    }

    public final String c() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        synchronized (this.h) {
            for (Map.Entry entry : this.h.entrySet()) {
                jSONObject2.put((String) entry.getKey(), entry.getValue());
            }
            Unit unit = Unit.INSTANCE;
        }
        jSONObject.put("vitals", jSONObject2);
        jSONObject.put("log", d());
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final JSONArray d() {
        JSONArray jSONArray = new JSONArray();
        List logData = this.g;
        Intrinsics.checkNotNullExpressionValue(logData, "logData");
        synchronized (logData) {
            List logData2 = this.g;
            Intrinsics.checkNotNullExpressionValue(logData2, "logData");
            Iterator it = logData2.iterator();
            while (it.hasNext()) {
                jSONArray.put((JSONObject) it.next());
            }
            Unit unit = Unit.INSTANCE;
        }
        return jSONArray;
    }

    public static final void b(Ca this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Objects.toString(this$0.i);
        ScheduledExecutorService scheduledExecutorService = M6.f179a;
        if (Result.m599exceptionOrNullimpl(L6.a(new Ba(this$0, true))) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m596constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m596constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    public static final void a(Ca this$0, B6 eventLogLevel, JSONObject data) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eventLogLevel, "$logLevel");
        Intrinsics.checkNotNullParameter(data, "$data");
        try {
            D6 d6 = this$0.e;
            d6.getClass();
            Intrinsics.checkNotNullParameter(eventLogLevel, "eventLogLevel");
            int iOrdinal = d6.f97a.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        if (iOrdinal != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (eventLogLevel != B6.d) {
                            return;
                        }
                    } else if (eventLogLevel != B6.c && eventLogLevel != B6.d) {
                        return;
                    }
                } else if (eventLogLevel != B6.b && eventLogLevel != B6.c && eventLogLevel != B6.d) {
                    return;
                }
            }
            this$0.g.add(data);
        } catch (Exception e) {
            this$0.getClass();
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void a() {
        Objects.toString(this.i);
        if ((this.d || this.f.a()) && !this.i.get()) {
            ScheduledExecutorService scheduledExecutorService = M6.f179a;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.Ca$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Ca.a(this.f$0);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            M6.f179a.submit(runnable);
        }
    }

    public static final void a(Ca this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.getAndIncrement();
        Objects.toString(this$0.i);
        ScheduledExecutorService scheduledExecutorService = M6.f179a;
        if (Result.m599exceptionOrNullimpl(L6.a(new Ba(this$0, false))) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m596constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m596constructorimpl(ResultKt.createFailure(th));
            }
        }
    }
}
