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

/* JADX INFO: renamed from: com.inmobi.media.c3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0249c3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0249c3 f318a;
    public static LinkedList b;
    public static LinkedList c;
    public static SignalsConfig d;
    public static AdConfig e;
    public static byte[] f;
    public static String g;

    static {
        List<String> listEmptyList;
        AdConfig.ContextualDataConfig contextualData;
        C0249c3 c0249c3 = new C0249c3();
        f318a = c0249c3;
        LinkedList linkedList = new LinkedList();
        b = linkedList;
        Object objClone = linkedList.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        c = (LinkedList) objClone;
        C0234b3 c0234b3 = new C0234b3();
        C0219a3 c0219a3 = new C0219a3();
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("signals", Kb.b(), c0234b3);
        d = configA instanceof SignalsConfig ? (SignalsConfig) configA : null;
        Config configA2 = I2.a("ads", Kb.b(), c0219a3);
        e = configA2 instanceof AdConfig ? (AdConfig) configA2 : null;
        SignalsConfig signalsConfig = d;
        f = AbstractC0220a4.a(signalsConfig != null ? signalsConfig.getKA() : null);
        AdConfig adConfig = e;
        if (adConfig == null || (contextualData = adConfig.getContextualData()) == null || (listEmptyList = contextualData.getSkipFields()) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(C0265d3.j);
        arrayList.removeAll(listEmptyList);
        g = CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null);
        c0249c3.b();
    }

    public static final void a() {
        AdConfig.ContextualDataConfig contextualData;
        AdConfig.ContextualDataConfig contextualData2;
        AdConfig.ContextualDataConfig contextualData3;
        Intrinsics.checkNotNull("c3");
        long jCurrentTimeMillis = System.currentTimeMillis();
        AdConfig adConfig = e;
        int maxAdRecords = 0;
        long expiryTime = jCurrentTimeMillis - (((long) ((adConfig == null || (contextualData3 = adConfig.getContextualData()) == null) ? 0 : contextualData3.getExpiryTime())) * 1000);
        AdConfig adConfig2 = e;
        a(expiryTime, (adConfig2 == null || (contextualData2 = adConfig2.getContextualData()) == null) ? 0 : contextualData2.getMaxAdRecords());
        Object objClone = b.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
        c = (LinkedList) objClone;
        AdConfig adConfig3 = e;
        if (adConfig3 != null && (contextualData = adConfig3.getContextualData()) != null) {
            maxAdRecords = contextualData.getMaxAdRecords();
        }
        Intrinsics.checkNotNull("c3");
        Y2 y2 = (Y2) Db.d.getValue();
        y2.getClass();
        y2.a("id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > " + expiryTime + " ORDER BY timestamp DESC LIMIT " + maxAdRecords + ") foo);", null);
    }

    public static String c() {
        AdConfig.ContextualDataConfig contextualData;
        Intrinsics.checkNotNull("c3");
        if (g.length() == 0) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        long jCurrentTimeMillis = System.currentTimeMillis();
        AdConfig adConfig = e;
        long expiryTime = jCurrentTimeMillis - (((long) ((adConfig == null || (contextualData = adConfig.getContextualData()) == null) ? 0 : contextualData.getExpiryTime())) * 1000);
        LinkedList linkedList = c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : linkedList) {
            if (((Z3) obj).b >= expiryTime) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONArray.put(StringsKt.trim((CharSequence) ((Z3) it.next()).f293a).toString());
        }
        String string = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static boolean d() {
        boolean z;
        AdConfig.ContextualDataConfig contextualData;
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "c_data_store");
            Intrinsics.checkNotNullParameter(Constants.ENABLE_DISABLE, "key");
            z = c0284e6A.f340a.getBoolean(Constants.ENABLE_DISABLE, true);
        } else {
            z = true;
        }
        if (!z) {
            Intrinsics.checkNotNull("c3");
            return false;
        }
        AdConfig adConfig = e;
        boolean z2 = ((adConfig == null || (contextualData = adConfig.getContextualData()) == null) ? 1 : contextualData.getMaxAdRecords()) > 0;
        Intrinsics.checkNotNull("c3");
        return z2;
    }

    public final void b() {
        Context contextD = Kb.d();
        if (contextD != null) {
            Intrinsics.checkNotNull("c3");
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "c_data_store");
            Context contextD2 = Kb.d();
            int i = 1;
            if (contextD2 != null) {
                C0284e6 c0284e6A2 = AbstractC0268d6.a(contextD2, "c_data_store");
                Intrinsics.checkNotNullParameter("akv", "key");
                i = c0284e6A2.f340a.getInt("akv", 1);
            }
            SignalsConfig signalsConfig = d;
            if (signalsConfig == null || signalsConfig.getVAK() != i) {
                Intrinsics.checkNotNull("c3");
                SignalsConfig signalsConfig2 = d;
                C0284e6.a(c0284e6A, "akv", signalsConfig2 != null ? signalsConfig2.getVAK() : i, false, 4, (Object) null);
                e();
            }
        }
    }

    public final void e() {
        synchronized (this) {
            Intrinsics.checkNotNull("c3");
            Y2 y2 = (Y2) Db.d.getValue();
            y2.getClass();
            try {
                C0535v3.a(y2.f229a, null, null);
            } catch (Exception unused) {
            }
            LinkedList linkedList = new LinkedList();
            b = linkedList;
            Object objClone = linkedList.clone();
            Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
            c = (LinkedList) objClone;
            Unit unit = Unit.INSTANCE;
        }
    }

    public static void a(long j, int i) {
        Intrinsics.checkNotNull("c3");
        for (int size = b.size(); size > i; size--) {
            b.remove();
        }
        Intrinsics.checkNotNull("c3");
        Iterator it = b.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            if (((Z3) next).b >= j) {
                return;
            } else {
                it.remove();
            }
        }
    }
}
