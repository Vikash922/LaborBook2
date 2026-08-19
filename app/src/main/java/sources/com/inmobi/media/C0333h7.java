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

/* JADX INFO: renamed from: com.inmobi.media.h7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0333h7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f372a = new ConcurrentHashMap();
    public final ExecutorService b = Executors.newSingleThreadExecutor(new ThreadFactoryC0453p5("MultiEventBus"));

    public static final void a(C0233b2 event, C0333h7 this$0) {
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i = event.f310a;
        this$0.a(event);
    }

    public final void b(final C0233b2 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        try {
            this.b.execute(new Runnable() { // from class: com.inmobi.media.h7$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0333h7.a(event, this);
                }
            });
        } catch (InternalError unused) {
            a(event);
        }
    }

    public final void a(int[] eventIds, Function1 subscriber) {
        Intrinsics.checkNotNullParameter(eventIds, "eventIds");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        this.f372a.put(new C0318g7(eventIds), new WeakReference(subscriber));
    }

    public final void a(Function1 subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        Iterator it = this.f372a.entrySet().iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((WeakReference) ((Map.Entry) it.next()).getValue()).get(), subscriber)) {
                it.remove();
            }
        }
    }

    public final void a(C0233b2 c0233b2) {
        Function1 function1;
        Set<Map.Entry> setEntrySet = this.f372a.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        for (Map.Entry entry : setEntrySet) {
            if (((WeakReference) entry.getValue()).get() == null) {
                this.f372a.remove(entry.getKey());
            }
        }
        Set<Map.Entry> setEntrySet2 = this.f372a.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet2, "<get-entries>(...)");
        for (Map.Entry entry2 : setEntrySet2) {
            Intrinsics.checkNotNull(entry2);
            Function1 function12 = (Function1) entry2.getKey();
            WeakReference weakReference = (WeakReference) entry2.getValue();
            try {
                if (((Boolean) function12.invoke(c0233b2)).booleanValue() && (function1 = (Function1) weakReference.get()) != null) {
                    function1.invoke(c0233b2);
                }
            } catch (Exception e) {
                C0551w5 c0551w5 = C0551w5.f513a;
                C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            }
        }
    }
}
