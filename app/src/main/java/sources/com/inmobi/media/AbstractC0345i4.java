package com.inmobi.media;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.i4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0345i4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f383a = LazyKt.lazy(C0330h4.f369a);

    public static final void a(C0397l9 mRequest, C0313g4 listener, C0297f4 eventPayload, int i, String str, int i2, long j, Kc kc, boolean z) {
        Intrinsics.checkNotNullParameter(mRequest, "$request");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(eventPayload, "$eventPayload");
        Intrinsics.checkNotNullParameter(mRequest, "mRequest");
        C0412m9 c0412m9B = mRequest.b();
        if (c0412m9B.b()) {
            boolean z2 = C0457p9.f457a;
            C0350i9 c0350i9 = c0412m9B.c;
            EnumC0250c4 enumC0250c4 = c0350i9 != null ? c0350i9.f385a : null;
            if (C0457p9.f457a && (enumC0250c4 == EnumC0250c4.q || enumC0250c4 == EnumC0250c4.p || enumC0250c4 == EnumC0250c4.o || enumC0250c4 == EnumC0250c4.n || enumC0250c4 == EnumC0250c4.r)) {
                listener.a(eventPayload, false);
                return;
            } else {
                if (i <= 1) {
                    listener.a(eventPayload, true);
                    return;
                }
                Intrinsics.checkNotNullExpressionValue("i4", "TAG");
                c0412m9B.a();
                a(eventPayload, str, i2, i - 1, j, kc, listener, z);
                return;
            }
        }
        listener.getClass();
        Intrinsics.checkNotNullParameter(eventPayload, "eventPayload");
        String TAG = listener.d;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        listener.f356a.a(eventPayload.f347a);
        listener.f356a.a(System.currentTimeMillis());
        if (listener.c != null) {
            ArrayList eventIds = eventPayload.f347a;
            Intrinsics.checkNotNullParameter(eventIds, "eventIds");
            Integer num = AbstractC0430nc.c;
            if (num != null && eventIds.contains(Integer.valueOf(num.intValue()))) {
                AbstractC0430nc.b = 0;
                C0284e6 c0284e6 = AbstractC0430nc.f437a;
                if (c0284e6 != null) {
                    C0284e6.a(c0284e6, "count", 0, false, 4, (Object) null);
                }
                AbstractC0430nc.c = null;
            }
        }
        listener.e.set(false);
    }

    public static void a(final C0297f4 c0297f4, final String str, final int i, final int i2, final long j, final Kc kc, final C0313g4 c0313g4, final boolean z) {
        long j2;
        HashMap mapHashMapOf;
        HashMap map;
        Intrinsics.checkNotNullExpressionValue("i4", "TAG");
        boolean z2 = C0457p9.f457a;
        if (C0457p9.a(false) == null && Kb.m()) {
            final C0397l9 c0397l9 = new C0397l9("POST", str, kc, false, (InterfaceC0298f5) null, (String) null, 104);
            HashMap mapHashMapOf2 = MapsKt.hashMapOf(TuplesKt.to("payload", c0297f4.b));
            if (mapHashMapOf2 != null && (map = c0397l9.k) != null) {
                map.putAll(mapHashMapOf2);
            }
            int i3 = i - i2;
            if (i3 > 0 && (mapHashMapOf = MapsKt.hashMapOf(TuplesKt.to("X-im-retry-count", String.valueOf(i3)))) != null) {
                c0397l9.i.putAll(mapHashMapOf);
            }
            c0397l9.x = false;
            c0397l9.t = false;
            c0397l9.u = false;
            if (z) {
                long jPow = i2 != i ? ((long) Math.pow(2.0d, i3)) * j : 0L;
                j2 = jPow;
                Object value = f383a.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
                ((ScheduledExecutorService) value).schedule(new Runnable() { // from class: com.inmobi.media.i4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC0345i4.a(c0397l9, c0313g4, c0297f4, i2, str, i, j, kc, z);
                    }
                }, j2, TimeUnit.SECONDS);
                return;
            }
            if (i2 != i) {
                j2 = j;
                Object value2 = f383a.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "getValue(...)");
                ((ScheduledExecutorService) value2).schedule(new Runnable() { // from class: com.inmobi.media.i4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC0345i4.a(c0397l9, c0313g4, c0297f4, i2, str, i, j, kc, z);
                    }
                }, j2, TimeUnit.SECONDS);
                return;
            }
            j2 = jPow;
            Object value22 = f383a.getValue();
            Intrinsics.checkNotNullExpressionValue(value22, "getValue(...)");
            ((ScheduledExecutorService) value22).schedule(new Runnable() { // from class: com.inmobi.media.i4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC0345i4.a(c0397l9, c0313g4, c0297f4, i2, str, i, j, kc, z);
                }
            }, j2, TimeUnit.SECONDS);
            return;
        }
        Intrinsics.checkNotNullExpressionValue("i4", "TAG");
        c0313g4.a(c0297f4, false);
    }
}
