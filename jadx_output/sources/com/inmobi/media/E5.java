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

/* JADX INFO: loaded from: classes6.dex */
public final class E5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f105a;

    public E5(long j) {
        this.f105a = j;
    }

    public final void a(final String message, final String exitData, final int i, final long j) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(exitData, "exitData");
        ScheduledExecutorService scheduledExecutorService = M6.f179a;
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.E5$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                E5.a(this.f$0, j, message, i, exitData);
            }
        };
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        M6.f179a.submit(runnable);
    }

    public static final void a(E5 e5, long j, String message, int i, String exitData) throws JSONException {
        Object objM596constructorimpl;
        Object objM596constructorimpl2;
        E5 this$0 = e5;
        long j2 = j;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(exitData, "$exitData");
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC0362j5.f392a;
        ArrayList arrayList2 = new ArrayList();
        C5 c5 = new C5();
        ArrayList arrayList3 = new ArrayList();
        A6 a6D = Db.d();
        ArrayList arrayListA = R1.a(a6D, "hasLoggerFinished=0", null, null, null, null, Integer.valueOf(R1.a((R1) a6D)), 30);
        B5 action = new B5(c5, arrayList3);
        Intrinsics.checkNotNullParameter(arrayListA, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Iterator it = CollectionsKt.filterNotNull(arrayListA).iterator();
        while (it.hasNext()) {
            action.invoke(it.next());
        }
        C0331h5 action2 = new C0331h5(arrayList2);
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
            H5 h5 = (H5) next;
            e5.getClass();
            long j3 = h5.f130a.c.b;
            if (j2 >= j3 && j2 - j3 <= this$0.f105a) {
                String message2 = "Message - " + message + ", Reason - " + i + ", Timestamp - " + j2 + ", Data - " + exitData;
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", "tag");
                Intrinsics.checkNotNullParameter(message2, "message");
                try {
                    JSONArray jSONArray = h5.f130a.b;
                    B6 logLevel = B6.c;
                    SimpleDateFormat simpleDateFormat = E6.f106a;
                    Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                    Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", "tag");
                    Intrinsics.checkNotNullParameter(message2, "message");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("scope", "ERROR");
                    jSONObject.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, E6.f106a.format(new Date()));
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
                    h5.f130a.f96a.put("exitReason", value);
                } catch (Exception unused2) {
                }
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", "tag");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    JSONObject jSONObject2 = h5.f130a.f96a;
                    Intrinsics.checkNotNullParameter(jSONObject2, "<this>");
                    if (!Intrinsics.areEqual(jSONObject2.toString(), "{}") && !AbstractC0576y2.a(h5.f130a.b)) {
                        ScheduledExecutorService scheduledExecutorService = M6.f179a;
                        L6.a(new G5(h5));
                    }
                    objM596constructorimpl = Result.m596constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM596constructorimpl = Result.m596constructorimpl(ResultKt.createFailure(th));
                }
                Throwable thM599exceptionOrNullimpl = Result.m599exceptionOrNullimpl(objM596constructorimpl);
                if (thM599exceptionOrNullimpl != null) {
                    try {
                        Result.Companion companion3 = Result.INSTANCE;
                        C0264d2 event = new C0264d2(thM599exceptionOrNullimpl);
                        C0551w5 c0551w5 = C0551w5.f513a;
                        Intrinsics.checkNotNullParameter(event, "event");
                        C0551w5.d.a(event);
                        try {
                            ScheduledExecutorService scheduledExecutorService2 = M6.f179a;
                            objM596constructorimpl2 = Result.m596constructorimpl(Result.m595boximpl(L6.a(new F5(h5))));
                        } catch (Throwable th2) {
                            Result.Companion companion4 = Result.INSTANCE;
                            objM596constructorimpl2 = Result.m596constructorimpl(ResultKt.createFailure(th2));
                        }
                        Throwable thM599exceptionOrNullimpl2 = Result.m599exceptionOrNullimpl(objM596constructorimpl2);
                        if (thM599exceptionOrNullimpl2 != null) {
                            try {
                                Result.Companion companion5 = Result.INSTANCE;
                                C0264d2 event2 = new C0264d2(thM599exceptionOrNullimpl2);
                                C0551w5 c0551w52 = C0551w5.f513a;
                                Intrinsics.checkNotNullParameter(event2, "event");
                                C0551w5.d.a(event2);
                                objM596constructorimpl2 = Result.m596constructorimpl(Unit.INSTANCE);
                            } catch (Throwable th3) {
                                Result.Companion companion6 = Result.INSTANCE;
                                objM596constructorimpl2 = Result.m596constructorimpl(ResultKt.createFailure(th3));
                            }
                        }
                        Result.m596constructorimpl(Result.m595boximpl(objM596constructorimpl2));
                    } catch (Throwable th4) {
                        Result.Companion companion7 = Result.INSTANCE;
                        Result.m596constructorimpl(ResultKt.createFailure(th4));
                    }
                }
            }
            this$0 = e5;
            j2 = j;
        }
    }
}
