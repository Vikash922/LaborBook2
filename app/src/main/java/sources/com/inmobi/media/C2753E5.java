package com.inmobi.media;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.E5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2753E5 {

    /* JADX INFO: renamed from: a */
    public final long f972a;

    public C2753E5(long j) {
        this.f972a = j;
    }

    /* JADX INFO: renamed from: a */
    public final void m1042a(final String message, final String exitData, final int i, final long j) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(exitData, "exitData");
        ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.E5$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C2753E5.m1041a(this.f$0, j, message, i, exitData);
            }
        };
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC2874M6.f1257a.submit(runnable);
    }

    /* JADX INFO: renamed from: a */
    public static final void m1041a(C2753E5 c2753e5, long j, String message, int i, String exitData) throws JSONException {
        Object objM3325constructorimpl;
        Object objM3325constructorimpl2;
        C2753E5 this$0 = c2753e5;
        long j2 = j;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(exitData, "$exitData");
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3207j5.f2221a;
        ArrayList arrayList2 = new ArrayList();
        C2723C5 c2723c5 = new C2723C5();
        ArrayList arrayList3 = new ArrayList();
        C2694A6 c2694a6M969d = AbstractC2744Db.m969d();
        ArrayList arrayListM1751a = AbstractC2942R1.m1751a(c2694a6M969d, "hasLoggerFinished=0", null, null, null, null, Integer.valueOf(AbstractC2942R1.m1750a((AbstractC2942R1) c2694a6M969d)), 30);
        C2708B5 action = new C2708B5(c2723c5, arrayList3);
        Intrinsics.checkNotNullParameter(arrayListM1751a, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Iterator it = CollectionsKt.filterNotNull(arrayListM1751a).iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
        C3177h5 action2 = new C3177h5(arrayList2);
        Intrinsics.checkNotNullParameter(arrayList3, "<this>");
        Intrinsics.checkNotNullParameter(action2, "action");
        Iterator it2 = CollectionsKt.filterNotNull(arrayList3).iterator();
        while (it2.hasNext()) {
            action2.invoke(it2.next());
        }
        arrayList.addAll(arrayList2);
        Iterator it3 = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it3, "iterator(...)");
        while (it3.hasNext()) {
            Object next = it3.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            C2798H5 c2798h5 = (C2798H5) next;
            c2753e5.getClass();
            long j3 = c2798h5.f1072a.f917c.f2792b;
            if (j2 >= j3 && j2 - j3 <= this$0.f972a) {
                String message2 = "Message - " + message + ", Reason - " + i + ", Timestamp - " + j2 + ", Data - " + exitData;
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", "tag");
                Intrinsics.checkNotNullParameter(message2, "message");
                try {
                    JSONArray jSONArray = c2798h5.f1072a.f916b;
                    EnumC2709B6 logLevel = EnumC2709B6.f853c;
                    SimpleDateFormat simpleDateFormat = AbstractC2754E6.f973a;
                    Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                    Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", "tag");
                    Intrinsics.checkNotNullParameter(message2, "message");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("scope", "ERROR");
                    jSONObject.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, AbstractC2754E6.f973a.format(new Date()));
                    jSONObject.put("tag", "IncompleteLogFinalizer");
                    jSONObject.put("data", message2);
                    jSONArray.put(jSONObject);
                } catch (Exception unused) {
                }
                String value = String.valueOf(i);
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", "tag");
                Intrinsics.checkNotNullParameter("exitReason", "key");
                Intrinsics.checkNotNullParameter(value, "value");
                try {
                    c2798h5.f1072a.f915a.put("exitReason", value);
                } catch (Exception unused2) {
                }
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", "tag");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    JSONObject jSONObject2 = c2798h5.f1072a.f915a;
                    Intrinsics.checkNotNullParameter(jSONObject2, "<this>");
                    if (!Intrinsics.areEqual(jSONObject2.toString(), "{}") && !AbstractC3429y2.m2608a(c2798h5.f1072a.f916b)) {
                        ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
                        AbstractC2859L6.m1289a(new C2783G5(c2798h5));
                    }
                    objM3325constructorimpl = Result.m3325constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3325constructorimpl = Result.m3325constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM3328exceptionOrNullimpl = Result.m3328exceptionOrNullimpl(objM3325constructorimpl);
                if (thM3328exceptionOrNullimpl != null) {
                    try {
                        Result.Companion companion3 = Result.INSTANCE;
                        C3114d2 event = new C3114d2(thM3328exceptionOrNullimpl);
                        C3402w5 c3402w5 = C3402w5.f2709a;
                        Intrinsics.checkNotNullParameter(event, "event");
                        C3402w5.f2712d.m2158a(event);
                        try {
                            ScheduledExecutorService scheduledExecutorService2 = AbstractC2874M6.f1257a;
                            objM3325constructorimpl2 = Result.m3325constructorimpl(Result.m3324boximpl(AbstractC2859L6.m1289a(new C2768F5(c2798h5))));
                        } catch (Throwable th2) {
                            Result.Companion companion4 = Result.INSTANCE;
                            objM3325constructorimpl2 = Result.m3325constructorimpl(ResultKt.createFailure(th2));
                        }
                        Throwable thM3328exceptionOrNullimpl2 = Result.m3328exceptionOrNullimpl(objM3325constructorimpl2);
                        if (thM3328exceptionOrNullimpl2 != null) {
                            try {
                                Result.Companion companion5 = Result.INSTANCE;
                                C3114d2 event2 = new C3114d2(thM3328exceptionOrNullimpl2);
                                C3402w5 c3402w52 = C3402w5.f2709a;
                                Intrinsics.checkNotNullParameter(event2, "event");
                                C3402w5.f2712d.m2158a(event2);
                                objM3325constructorimpl2 = Result.m3325constructorimpl(Unit.INSTANCE);
                            } catch (Throwable th3) {
                                Result.Companion companion6 = Result.INSTANCE;
                                objM3325constructorimpl2 = Result.m3325constructorimpl(ResultKt.createFailure(th3));
                            }
                        }
                        Result.m3325constructorimpl(Result.m3324boximpl(objM3325constructorimpl2));
                    } catch (Throwable th4) {
                        Result.Companion companion7 = Result.INSTANCE;
                        Result.m3325constructorimpl(ResultKt.createFailure(th4));
                    }
                }
            }
            this$0 = c2753e5;
            j2 = j;
        }
    }
}
