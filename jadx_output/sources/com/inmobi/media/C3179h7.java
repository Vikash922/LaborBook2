package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3179h7 {

    /* JADX INFO: renamed from: a */
    public final ConcurrentHashMap f2146a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b */
    public final ExecutorService f2147b = Executors.newSingleThreadExecutor(new ThreadFactoryC3297p5("MultiEventBus"));

    /* JADX INFO: renamed from: a */
    public static final void m2212a(C3084b2 event, C3179h7 this$0) {
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = event.f1872a;
        this$0.m2213a(event);
    }

    /* JADX INFO: renamed from: b */
    public final void m2216b(final C3084b2 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        try {
            this.f2147b.execute(new Runnable() { // from class: com.inmobi.media.h7$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3179h7.m2212a(event, this);
                }
            });
        } catch (InternalError unused) {
            m2213a(event);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2215a(int[] eventIds, Function1 subscriber) {
        Intrinsics.checkNotNullParameter(eventIds, "eventIds");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        this.f2146a.put(new C3164g7(eventIds), new WeakReference(subscriber));
    }

    /* JADX INFO: renamed from: a */
    public final void m2214a(Function1 subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        Iterator it = this.f2146a.entrySet().iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((WeakReference) ((Map.Entry) it.next()).getValue()).get(), subscriber)) {
                it.remove();
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2213a(C3084b2 c3084b2) {
        Function1 function1;
        Set<Map.Entry> setEntrySet = this.f2146a.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        for (Map.Entry entry : setEntrySet) {
            if (((WeakReference) entry.getValue()).get() == null) {
                this.f2146a.remove(entry.getKey());
            }
        }
        Set<Map.Entry> setEntrySet2 = this.f2146a.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet2, "<get-entries>(...)");
        for (Map.Entry entry2 : setEntrySet2) {
            Intrinsics.checkNotNull(entry2);
            Function1 function12 = (Function1) entry2.getKey();
            WeakReference weakReference = (WeakReference) entry2.getValue();
            try {
                if (((Boolean) function12.invoke(c3084b2)).booleanValue() && (function1 = (Function1) weakReference.get()) != null) {
                    function1.invoke(c3084b2);
                }
            } catch (Exception e) {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            }
        }
    }
}
