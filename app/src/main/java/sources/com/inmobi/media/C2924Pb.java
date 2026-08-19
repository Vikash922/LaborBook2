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

/* JADX INFO: renamed from: com.inmobi.media.Pb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2924Pb {

    /* JADX INFO: renamed from: d */
    public static String f1400d;

    /* JADX INFO: renamed from: e */
    public static boolean f1401e;

    /* JADX INFO: renamed from: f */
    public static long f1402f;

    /* JADX INFO: renamed from: h */
    public static final SignalsConfig.SessionConfig f1404h;

    /* JADX INFO: renamed from: i */
    public static final AtomicBoolean f1405i;

    /* JADX INFO: renamed from: j */
    public static final C3133e6 f1406j;

    /* JADX INFO: renamed from: k */
    public static final C3383v1 f1407k;

    /* JADX INFO: renamed from: l */
    public static final C3383v1 f1408l;

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ KProperty[] f1398b = {Reflection.property1(new PropertyReference1Impl(C2924Pb.class, "sessionCnt", "getSessionCnt()I", 0)), Reflection.property1(new PropertyReference1Impl(C2924Pb.class, "userRetention", "getUserRetention()I", 0))};

    /* JADX INFO: renamed from: a */
    public static final C2924Pb f1397a = new C2924Pb();

    /* JADX INFO: renamed from: c */
    public static final String f1399c = "Pb";

    /* JADX INFO: renamed from: g */
    public static final List f1403g = CollectionsKt.mutableListOf(0, 0, 0, 0);

    static {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        C3133e6 c3133e6M2058a = null;
        f1404h = ((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getSession();
        f1405i = new AtomicBoolean(false);
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "session_pref_file");
        }
        f1406j = c3133e6M2058a;
        f1407k = new C3383v1((Integer) (-1), (Function0) C2894Nb.f1318a, false, 12);
        f1408l = new C3383v1((Integer) (-1), (Function0) C2909Ob.f1342a, false, 12);
    }

    /* JADX INFO: renamed from: a */
    public static int m1526a() {
        C3133e6 c3133e6 = f1406j;
        if (c3133e6 == null) {
            return 0;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intrinsics.checkNotNullParameter("u-ret", "key");
        return Integer.min((int) ((jCurrentTimeMillis - c3133e6.f2045a.getLong("u-ret", jCurrentTimeMillis)) / DateUtils.MILLIS_PER_DAY), Integer.MAX_VALUE);
    }

    /* JADX INFO: renamed from: c */
    public static void m1528c() {
        if (f1405i.getAndSet(true)) {
            return;
        }
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        if (((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getIce().getSessionEnabled()) {
            String string = UUID.randomUUID().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            f1400d = string;
            String TAG = f1399c;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        f1402f = System.currentTimeMillis() - Process.getElapsedCpuTime();
        SignalsConfig.SessionConfig sessionConfig = f1404h;
        if (sessionConfig.getSigControlList().contains(5)) {
            C3133e6 c3133e6 = f1406j;
            if (c3133e6 != null) {
                Intrinsics.checkNotNullParameter("cnt", "key");
                C3133e6.m2099a(c3133e6, "cnt", Integer.min(c3133e6.f2045a.getInt("cnt", 0) + 1, Integer.MAX_VALUE), false, 4, (Object) null);
            }
            f1407k.m2497a();
        }
        if (sessionConfig.getSigControlList().contains(6)) {
            C3133e6 c3133e62 = f1406j;
            if (c3133e62 != null) {
                Intrinsics.checkNotNullParameter("u-ret", "key");
                if (!c3133e62.f2045a.contains("u-ret")) {
                    C3133e6.m2100a(c3133e62, "u-ret", System.currentTimeMillis(), false, 4, (Object) null);
                }
            }
            f1408l.m2497a();
        }
    }

    /* JADX INFO: renamed from: b */
    public final JSONObject m1529b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SignalsConfig.SessionConfig sessionConfig = f1404h;
        if (sessionConfig.getSigControlList().contains(0)) {
            linkedHashMap.put(UserDataStore.STATE, Long.valueOf(f1402f));
        }
        if (sessionConfig.getSigControlList().contains(5)) {
            C3383v1 c3383v1 = f1407k;
            KProperty[] kPropertyArr = f1398b;
            if (((Number) c3383v1.getValue(this, kPropertyArr[0])).intValue() != -1) {
                linkedHashMap.put("cnt", Integer.valueOf(((Number) c3383v1.getValue(this, kPropertyArr[0])).intValue()));
            }
        }
        if (sessionConfig.getSigControlList().contains(6)) {
            C3383v1 c3383v12 = f1408l;
            KProperty[] kPropertyArr2 = f1398b;
            if (((Number) c3383v12.getValue(this, kPropertyArr2[1])).intValue() != -1) {
                linkedHashMap.put("u-ret", Integer.valueOf(((Number) c3383v12.getValue(this, kPropertyArr2[1])).intValue()));
            }
        }
        List mutableList = CollectionsKt.toMutableList((Collection) f1403g);
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

    /* JADX INFO: renamed from: a */
    public static void m1527a(String adtype, Boolean bool) {
        Intrinsics.checkNotNullParameter(adtype, "adtype");
        if (Intrinsics.areEqual(adtype, "banner") && f1404h.getSigControlList().contains(1)) {
            List list = f1403g;
            list.set(0, Integer.valueOf(Integer.min(((Number) list.get(0)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(adtype, "int") && !Intrinsics.areEqual(bool, Boolean.TRUE) && f1404h.getSigControlList().contains(2)) {
            List list2 = f1403g;
            list2.set(1, Integer.valueOf(Integer.min(((Number) list2.get(1)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(adtype, AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) && f1404h.getSigControlList().contains(4)) {
            List list3 = f1403g;
            list3.set(3, Integer.valueOf(Integer.min(((Number) list3.get(3)).intValue() + 1, Integer.MAX_VALUE)));
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE) && f1404h.getSigControlList().contains(3)) {
            List list4 = f1403g;
            list4.set(2, Integer.valueOf(Integer.min(((Number) list4.get(2)).intValue() + 1, Integer.MAX_VALUE)));
        }
    }
}
