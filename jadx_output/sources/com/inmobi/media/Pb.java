package com.inmobi.media;

import android.content.Context;
import android.os.Process;
import com.facebook.appevents.UserDataStore;
import com.facebook.internal.AnalyticsEvents;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.json.JSONObject;
import org.shadow.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class Pb {
    public static String d;
    public static boolean e;
    public static long f;
    public static final SignalsConfig.SessionConfig h;
    public static final AtomicBoolean i;
    public static final C0284e6 j;
    public static final C0533v1 k;
    public static final C0533v1 l;
    public static final /* synthetic */ KProperty[] b = {Reflection.property1(new PropertyReference1Impl(Pb.class, "sessionCnt", "getSessionCnt()I", 0)), Reflection.property1(new PropertyReference1Impl(Pb.class, "userRetention", "getUserRetention()I", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pb f217a = new Pb();
    public static final String c = "Pb";
    public static final List g = CollectionsKt.mutableListOf(0, 0, 0, 0);

    static {
        LinkedHashMap linkedHashMap = K2.f154a;
        C0284e6 c0284e6A = null;
        h = ((SignalsConfig) V4.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getSession();
        i = new AtomicBoolean(false);
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            c0284e6A = AbstractC0268d6.a(contextD, "session_pref_file");
        }
        j = c0284e6A;
        k = new C0533v1((Integer) (-1), (Function0) Nb.f194a, false, 12);
        l = new C0533v1((Integer) (-1), (Function0) Ob.f206a, false, 12);
    }

    public static int a() {
        C0284e6 c0284e6 = j;
        if (c0284e6 == null) {
            return 0;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intrinsics.checkNotNullParameter("u-ret", "key");
        return Integer.min((int) ((jCurrentTimeMillis - c0284e6.f340a.getLong("u-ret", jCurrentTimeMillis)) / DateUtils.MILLIS_PER_DAY), Integer.MAX_VALUE);
    }

    public static void c() {
        if (i.getAndSet(true)) {
            return;
        }
        LinkedHashMap linkedHashMap = K2.f154a;
        if (((SignalsConfig) V4.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getIce().getSessionEnabled()) {
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            d = string;
            String TAG = c;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        f = System.currentTimeMillis() - Process.getElapsedCpuTime();
        SignalsConfig.SessionConfig sessionConfig = h;
        if (sessionConfig.getSigControlList().contains(5)) {
            C0284e6 c0284e6 = j;
            if (c0284e6 != null) {
                Intrinsics.checkNotNullParameter("cnt", "key");
                C0284e6.a(c0284e6, "cnt", Integer.min(c0284e6.f340a.getInt("cnt", 0) + 1, Integer.MAX_VALUE), false, 4, (Object) null);
            }
            k.a();
        }
        if (sessionConfig.getSigControlList().contains(6)) {
            C0284e6 c0284e62 = j;
            if (c0284e62 != null) {
                Intrinsics.checkNotNullParameter("u-ret", "key");
                if (!c0284e62.f340a.contains("u-ret")) {
                    C0284e6.a(c0284e62, "u-ret", System.currentTimeMillis(), false, 4, (Object) null);
                }
            }
            l.a();
        }
    }

    public final JSONObject b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SignalsConfig.SessionConfig sessionConfig = h;
        if (sessionConfig.getSigControlList().contains(0)) {
            linkedHashMap.put(UserDataStore.STATE, Long.valueOf(f));
        }
        if (sessionConfig.getSigControlList().contains(5)) {
            C0533v1 c0533v1 = k;
            KProperty[] kPropertyArr = b;
            if (((Number) c0533v1.getValue(this, kPropertyArr[0])).intValue() != -1) {
                linkedHashMap.put("cnt", Integer.valueOf(((Number) c0533v1.getValue(this, kPropertyArr[0])).intValue()));
            }
        }
        if (sessionConfig.getSigControlList().contains(6)) {
            C0533v1 c0533v12 = l;
            KProperty[] kPropertyArr2 = b;
            if (((Number) c0533v12.getValue(this, kPropertyArr2[1])).intValue() != -1) {
                linkedHashMap.put("u-ret", Integer.valueOf(((Number) c0533v12.getValue(this, kPropertyArr2[1])).intValue()));
            }
        }
        List mutableList = CollectionsKt.toMutableList((Collection) g);
        if (!sessionConfig.getSigControlList().contains(1)) {
            mutableList.set(0, -1);
        }
        if (!sessionConfig.getSigControlList().contains(2)) {
            mutableList.set(1, -1);
        }
        if (!sessionConfig.getSigControlList().contains(3)) {
            mutableList.set(2, -1);
        }
        if (!sessionConfig.getSigControlList().contains(4)) {
            mutableList.set(3, -1);
        }
        if (!(mutableList instanceof Collection) || !mutableList.isEmpty()) {
            Iterator it = mutableList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((Number) it.next()).intValue() != -1) {
                        linkedHashMap.put("dep", mutableList);
                        break;
                    }
                }
            }
        }
        try {
            return new JSONObject(linkedHashMap);
        } catch (Exception unused) {
            return new JSONObject();
        }
    }

    public static void a(String adtype, Boolean bool) {
        Intrinsics.checkNotNullParameter(adtype, "adtype");
        if (Intrinsics.areEqual(adtype, "banner") && h.getSigControlList().contains(1)) {
            List list = g;
            list.set(0, Integer.valueOf(Integer.min(((Number) list.get(0)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(adtype, "int") && !Intrinsics.areEqual(bool, Boolean.TRUE) && h.getSigControlList().contains(2)) {
            List list2 = g;
            list2.set(1, Integer.valueOf(Integer.min(((Number) list2.get(1)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(adtype, AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) && h.getSigControlList().contains(4)) {
            List list3 = g;
            list3.set(3, Integer.valueOf(Integer.min(((Number) list3.get(3)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE) && h.getSigControlList().contains(3)) {
            List list4 = g;
            list4.set(2, Integer.valueOf(Integer.min(((Number) list4.get(2)).intValue() + 1, Integer.MAX_VALUE)));
        }
    }
}
