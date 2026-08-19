package com.inmobi.media;

import android.content.Context;
import com.google.firebase.perf.util.Constants;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.inmobi.media.c3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3100c3 {

    /* JADX INFO: renamed from: a */
    public static final C3100c3 f1911a;

    /* JADX INFO: renamed from: b */
    public static LinkedList f1912b;

    /* JADX INFO: renamed from: c */
    public static LinkedList f1913c;

    /* JADX INFO: renamed from: d */
    public static SignalsConfig f1914d;

    /* JADX INFO: renamed from: e */
    public static AdConfig f1915e;

    /* JADX INFO: renamed from: f */
    public static byte[] f1916f;

    /* JADX INFO: renamed from: g */
    public static String f1917g;

    static {
        List<String> listEmptyList;
        AdConfig.ContextualDataConfig contextualData;
        C3100c3 c3100c3 = new C3100c3();
        f1911a = c3100c3;
        LinkedList linkedList = new LinkedList();
        f1912b = linkedList;
        Object objClone = linkedList.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        f1913c = (LinkedList) objClone;
        C3085b3 c3085b3 = new C3085b3();
        C3070a3 c3070a3 = new C3070a3();
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("signals", C2849Kb.m1248b(), c3085b3);
        f1914d = configM1161a instanceof SignalsConfig ? (SignalsConfig) configM1161a : null;
        Config configM1161a2 = C2810I2.m1161a("ads", C2849Kb.m1248b(), c3070a3);
        f1915e = configM1161a2 instanceof AdConfig ? (AdConfig) configM1161a2 : null;
        SignalsConfig signalsConfig = f1914d;
        f1916f = AbstractC3071a4.m2014a(signalsConfig != null ? signalsConfig.getKA() : null);
        AdConfig adConfig = f1915e;
        if (adConfig == null || (contextualData = adConfig.getContextualData()) == null || (listEmptyList = contextualData.getSkipFields()) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(C3115d3.f1975j);
        arrayList.removeAll(listEmptyList);
        f1917g = CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
        c3100c3.m2043b();
    }

    /* JADX INFO: renamed from: a */
    public static final void m2039a() {
        AdConfig.ContextualDataConfig contextualData;
        AdConfig.ContextualDataConfig contextualData2;
        AdConfig.ContextualDataConfig contextualData3;
        Intrinsics.checkNotNull("c3");
        long jCurrentTimeMillis = System.currentTimeMillis();
        AdConfig adConfig = f1915e;
        int maxAdRecords = 0;
        long expiryTime = jCurrentTimeMillis - (((long) ((adConfig == null || (contextualData3 = adConfig.getContextualData()) == null) ? 0 : contextualData3.getExpiryTime())) * 1000);
        AdConfig adConfig2 = f1915e;
        m2040a(expiryTime, (adConfig2 == null || (contextualData2 = adConfig2.getContextualData()) == null) ? 0 : contextualData2.getMaxAdRecords());
        Object objClone = f1912b.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        f1913c = (LinkedList) objClone;
        AdConfig adConfig3 = f1915e;
        if (adConfig3 != null && (contextualData = adConfig3.getContextualData()) != null) {
            maxAdRecords = contextualData.getMaxAdRecords();
        }
        Intrinsics.checkNotNull("c3");
        C3041Y2 c3041y2 = (C3041Y2) AbstractC2744Db.f951d.getValue();
        c3041y2.getClass();
        c3041y2.m1752a("id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > " + expiryTime + " ORDER BY timestamp DESC LIMIT " + maxAdRecords + ") foo);", null);
    }

    /* JADX INFO: renamed from: c */
    public static String m2041c() {
        AdConfig.ContextualDataConfig contextualData;
        Intrinsics.checkNotNull("c3");
        if (f1917g.length() == 0) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        long jCurrentTimeMillis = System.currentTimeMillis();
        AdConfig adConfig = f1915e;
        long expiryTime = jCurrentTimeMillis - (((long) ((adConfig == null || (contextualData = adConfig.getContextualData()) == null) ? 0 : contextualData.getExpiryTime())) * 1000);
        LinkedList linkedList = f1913c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : linkedList) {
            if (((C3056Z3) obj).f1801b >= expiryTime) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONArray.put(StringsKt.trim((CharSequence) ((C3056Z3) it.next()).f1800a).toString());
        }
        String string = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: renamed from: d */
    public static boolean m2042d() {
        boolean z;
        AdConfig.ContextualDataConfig contextualData;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "c_data_store");
            Intrinsics.checkNotNullParameter(Constants.ENABLE_DISABLE, "key");
            z = c3133e6M2058a.f2045a.getBoolean(Constants.ENABLE_DISABLE, true);
        } else {
            z = true;
        }
        if (!z) {
            Intrinsics.checkNotNull("c3");
            return false;
        }
        AdConfig adConfig = f1915e;
        boolean z2 = ((adConfig == null || (contextualData = adConfig.getContextualData()) == null) ? 1 : contextualData.getMaxAdRecords()) > 0;
        Intrinsics.checkNotNull("c3");
        return z2;
    }

    /* JADX INFO: renamed from: b */
    public final void m2043b() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            Intrinsics.checkNotNull("c3");
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "c_data_store");
            Context contextM1254d2 = C2849Kb.m1254d();
            int i = 1;
            if (contextM1254d2 != null) {
                C3133e6 c3133e6M2058a2 = AbstractC3118d6.m2058a(contextM1254d2, "c_data_store");
                Intrinsics.checkNotNullParameter("akv", "key");
                i = c3133e6M2058a2.f2045a.getInt("akv", 1);
            }
            SignalsConfig signalsConfig = f1914d;
            if (signalsConfig == null || signalsConfig.getVAK() != i) {
                Intrinsics.checkNotNull("c3");
                SignalsConfig signalsConfig2 = f1914d;
                C3133e6.m2099a(c3133e6M2058a, "akv", signalsConfig2 != null ? signalsConfig2.getVAK() : i, false, 4, (Object) null);
                m2044e();
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2044e() {
        synchronized (this) {
            Intrinsics.checkNotNull("c3");
            C3041Y2 c3041y2 = (C3041Y2) AbstractC2744Db.f951d.getValue();
            c3041y2.getClass();
            try {
                C3385v3.m2500a(c3041y2.f1489a, null, null);
            } catch (Exception unused) {
            }
            LinkedList linkedList = new LinkedList();
            f1912b = linkedList;
            Object objClone = linkedList.clone();
            Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
            f1913c = (LinkedList) objClone;
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2040a(long j, int i) {
        Intrinsics.checkNotNull("c3");
        for (int size = f1912b.size(); size > i; size--) {
            f1912b.remove();
        }
        Intrinsics.checkNotNull("c3");
        Iterator it = f1912b.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            if (((C3056Z3) next).f1801b >= j) {
                return;
            } else {
                it.remove();
            }
        }
    }
}
