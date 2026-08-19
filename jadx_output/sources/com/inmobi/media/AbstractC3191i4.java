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

/* JADX INFO: renamed from: com.inmobi.media.i4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3191i4 {

    /* JADX INFO: renamed from: a */
    public static final Lazy f2178a = LazyKt.lazy(C3176h4.f2133a);

    /* JADX INFO: renamed from: a */
    public static final void m2243a(C3241l9 mRequest, C3161g4 listener, C3146f4 eventPayload, int i, String str, int i2, long j, C2850Kc c2850Kc, boolean z) {
        Intrinsics.checkNotNullParameter(mRequest, "$request");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(eventPayload, "$eventPayload");
        Intrinsics.checkNotNullParameter(mRequest, "mRequest");
        C3256m9 c3256m9M2287b = mRequest.m2287b();
        if (c3256m9M2287b.m2297b()) {
            boolean z2 = C3301p9.f2439a;
            C3196i9 c3196i9 = c3256m9M2287b.f2333c;
            EnumC3101c4 enumC3101c4 = c3196i9 != null ? c3196i9.f2180a : null;
            if (C3301p9.f2439a && (enumC3101c4 == EnumC3101c4.f1934q || enumC3101c4 == EnumC3101c4.f1933p || enumC3101c4 == EnumC3101c4.f1932o || enumC3101c4 == EnumC3101c4.f1931n || enumC3101c4 == EnumC3101c4.f1935r)) {
                listener.m2145a(eventPayload, false);
                return;
            } else {
                if (i <= 1) {
                    listener.m2145a(eventPayload, true);
                    return;
                }
                Intrinsics.checkNotNullExpressionValue("i4", "TAG");
                c3256m9M2287b.m2296a();
                m2242a(eventPayload, str, i2, i - 1, j, c2850Kc, listener, z);
                return;
            }
        }
        listener.getClass();
        Intrinsics.checkNotNullParameter(eventPayload, "eventPayload");
        String TAG = listener.f2091d;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        listener.f2088a.m2095a(eventPayload.f2059a);
        listener.f2088a.m2094a(System.currentTimeMillis());
        if (listener.f2090c != null) {
            ArrayList eventIds = eventPayload.f2059a;
            Intrinsics.checkNotNullParameter(eventIds, "eventIds");
            Integer num = AbstractC3274nc.f2388c;
            if (num != null && eventIds.contains(Integer.valueOf(num.intValue()))) {
                AbstractC3274nc.f2387b = 0;
                C3133e6 c3133e6 = AbstractC3274nc.f2386a;
                if (c3133e6 != null) {
                    C3133e6.m2099a(c3133e6, "count", 0, false, 4, (Object) null);
                }
                AbstractC3274nc.f2388c = null;
            }
        }
        listener.f2092e.set(false);
    }

    /* JADX INFO: renamed from: a */
    public static void m2242a(final C3146f4 c3146f4, final String str, final int i, final int i2, final long j, final C2850Kc c2850Kc, final C3161g4 c3161g4, final boolean z) {
        long j2;
        HashMap mapHashMapOf;
        HashMap map;
        Intrinsics.checkNotNullExpressionValue("i4", "TAG");
        boolean z2 = C3301p9.f2439a;
        if (C3301p9.m2342a(false) == null && C2849Kb.m1261m()) {
            final C3241l9 c3241l9 = new C3241l9("POST", str, c2850Kc, false, (InterfaceC3147f5) null, (String) null, 104);
            HashMap mapHashMapOf2 = MapsKt.hashMapOf(TuplesKt.m2729to("payload", c3146f4.f2060b));
            if (mapHashMapOf2 != null && (map = c3241l9.f2284k) != null) {
                map.putAll(mapHashMapOf2);
            }
            int i3 = i - i2;
            if (i3 > 0 && (mapHashMapOf = MapsKt.hashMapOf(TuplesKt.m2729to("X-im-retry-count", String.valueOf(i3)))) != null) {
                c3241l9.f2282i.putAll(mapHashMapOf);
            }
            c3241l9.f2297x = false;
            c3241l9.f2293t = false;
            c3241l9.f2294u = false;
            if (z) {
                long jPow = i2 != i ? ((long) Math.pow(2.0d, i3)) * j : 0L;
                j2 = jPow;
                Object value = f2178a.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
                ((ScheduledExecutorService) value).schedule(new Runnable() { // from class: com.inmobi.media.i4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC3191i4.m2243a(c3241l9, c3161g4, c3146f4, i2, str, i, j, c2850Kc, z);
                    }
                }, j2, TimeUnit.SECONDS);
                return;
            }
            if (i2 != i) {
                j2 = j;
                Object value2 = f2178a.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "getValue(...)");
                ((ScheduledExecutorService) value2).schedule(new Runnable() { // from class: com.inmobi.media.i4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC3191i4.m2243a(c3241l9, c3161g4, c3146f4, i2, str, i, j, c2850Kc, z);
                    }
                }, j2, TimeUnit.SECONDS);
                return;
            }
            j2 = jPow;
            Object value22 = f2178a.getValue();
            Intrinsics.checkNotNullExpressionValue(value22, "getValue(...)");
            ((ScheduledExecutorService) value22).schedule(new Runnable() { // from class: com.inmobi.media.i4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC3191i4.m2243a(c3241l9, c3161g4, c3146f4, i2, str, i, j, c2850Kc, z);
                }
            }, j2, TimeUnit.SECONDS);
            return;
        }
        Intrinsics.checkNotNullExpressionValue("i4", "TAG");
        c3161g4.m2145a(c3146f4, false);
    }
}
