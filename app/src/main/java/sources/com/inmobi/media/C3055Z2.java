package com.inmobi.media;

import android.content.Context;
import com.google.firebase.perf.util.Constants;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Z2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3055Z2 {

    /* JADX INFO: renamed from: a */
    public final C3171h f1793a;

    /* JADX INFO: renamed from: b */
    public final long f1794b;

    /* JADX INFO: renamed from: c */
    public final String f1795c = "Z2";

    /* JADX INFO: renamed from: d */
    public final C3115d3 f1796d = new C3115d3();

    /* JADX INFO: renamed from: e */
    public long f1797e = -1;

    /* JADX INFO: renamed from: f */
    public final AtomicBoolean f1798f = new AtomicBoolean();

    /* JADX INFO: renamed from: g */
    public final AtomicBoolean f1799g = new AtomicBoolean();

    public C3055Z2(C3171h c3171h, long j) {
        this.f1793a = c3171h;
        this.f1794b = j;
    }

    /* JADX INFO: renamed from: a */
    public final void m2001a() {
        C3171h c3171h;
        C3171h c3171h2;
        Long lM2197m;
        String strM2192h;
        Boolean boolM2169C;
        Intrinsics.checkNotNull(this.f1795c);
        C3171h c3171h3 = this.f1793a;
        if (c3171h3 != null && (boolM2169C = c3171h3.m2169C()) != null) {
            boolean zBooleanValue = boolM2169C.booleanValue();
            C3100c3 c3100c3 = C3100c3.f1911a;
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                Intrinsics.checkNotNull("c3");
                if (zBooleanValue != C3100c3.m2042d()) {
                    Intrinsics.checkNotNull("c3");
                    ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                    C3133e6.m2102a(AbstractC3118d6.m2058a(contextM1254d, "c_data_store"), Constants.ENABLE_DISABLE, zBooleanValue, false, 4, (Object) null);
                    if (!zBooleanValue) {
                        c3100c3.m2044e();
                    }
                }
            }
        }
        C3100c3 c3100c32 = C3100c3.f1911a;
        if (C3100c3.m2042d() && !this.f1798f.getAndSet(true)) {
            this.f1797e = System.currentTimeMillis();
            if (!this.f1799g.get()) {
                C3171h c3171h4 = this.f1793a;
                if ((c3171h4 != null ? c3171h4.m2192h() : null) != null && (strM2192h = this.f1793a.m2192h()) != null) {
                    C3115d3 c3115d3 = this.f1796d;
                    c3115d3.getClass();
                    Intrinsics.checkNotNullParameter(strM2192h, "<set-?>");
                    c3115d3.f1976a = strM2192h;
                    Intrinsics.checkNotNull(this.f1795c);
                }
            }
            if (!this.f1799g.get() && (c3171h2 = this.f1793a) != null && (lM2197m = c3171h2.m2197m()) != null) {
                this.f1796d.f1977b = lM2197m.longValue();
                Intrinsics.checkNotNull(this.f1795c);
            }
            if (!this.f1799g.get()) {
                this.f1796d.f1980e = this.f1794b;
                Intrinsics.checkNotNull(this.f1795c);
            }
            if (!this.f1799g.get() && (c3171h = this.f1793a) != null) {
                this.f1796d.f1981f = c3171h.m2198n();
                Intrinsics.checkNotNull(this.f1795c);
            }
            long j = this.f1797e / ((long) 1000);
            if (this.f1799g.get()) {
                return;
            }
            this.f1796d.f1978c = j;
            Intrinsics.checkNotNull(this.f1795c);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2002b() {
        C3100c3 c3100c3 = C3100c3.f1911a;
        if (!C3100c3.m2042d()) {
            Intrinsics.checkNotNull(this.f1795c);
            return;
        }
        if (!this.f1798f.get()) {
            Intrinsics.checkNotNull(this.f1795c);
            return;
        }
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() - this.f1797e);
        if (!this.f1799g.get()) {
            this.f1796d.f1979d = iCurrentTimeMillis;
            Intrinsics.checkNotNull(this.f1795c);
        }
        if (this.f1799g.getAndSet(true)) {
            Intrinsics.checkNotNull(this.f1795c);
        } else {
            Intrinsics.checkNotNull(this.f1795c);
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Z2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3055Z2.m2000a(this.f$0);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2000a(C3055Z2 this$0) {
        List<String> listEmptyList;
        AdConfig.ContextualDataConfig contextualData;
        AdConfig.ContextualDataConfig contextualData2;
        AdConfig.ContextualDataConfig contextualData3;
        AdConfig.ContextualDataConfig contextualData4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3100c3 c3100c3 = C3100c3.f1911a;
        C3115d3 contextualDataModel = this$0.f1796d;
        Intrinsics.checkNotNullParameter(contextualDataModel, "contextualDataModel");
        synchronized (c3100c3) {
            Intrinsics.checkNotNull("c3");
            long jCurrentTimeMillis = System.currentTimeMillis();
            AdConfig adConfig = C3100c3.f1915e;
            int maxAdRecords = 0;
            long expiryTime = jCurrentTimeMillis - ((long) (((adConfig == null || (contextualData4 = adConfig.getContextualData()) == null) ? 0 : contextualData4.getExpiryTime()) * 1000));
            AdConfig adConfig2 = C3100c3.f1915e;
            C3100c3.m2040a(expiryTime, ((adConfig2 == null || (contextualData3 = adConfig2.getContextualData()) == null) ? 0 : contextualData3.getMaxAdRecords()) - 1);
            AdConfig adConfig3 = C3100c3.f1915e;
            if (adConfig3 == null || (contextualData2 = adConfig3.getContextualData()) == null || (listEmptyList = contextualData2.getSkipFields()) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            String string = AbstractC3130e3.m2092a(contextualDataModel, listEmptyList).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            C3056Z3 c3056z3 = new C3056Z3(AbstractC3071a4.m2013a(string, C3100c3.f1916f), jCurrentTimeMillis);
            C3100c3.f1912b.add(c3056z3);
            Object objClone = C3100c3.f1912b.clone();
            Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
            C3100c3.f1913c = (LinkedList) objClone;
            AdConfig adConfig4 = C3100c3.f1915e;
            if (adConfig4 != null && (contextualData = adConfig4.getContextualData()) != null) {
                maxAdRecords = contextualData.getMaxAdRecords();
            }
            Intrinsics.checkNotNull("c3");
            C3041Y2 c3041y2 = (C3041Y2) AbstractC2744Db.f951d.getValue();
            c3041y2.getClass();
            Objects.toString(c3056z3);
            c3041y2.m1753a(c3056z3);
            c3041y2.m1752a("id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > " + expiryTime + " ORDER BY timestamp DESC LIMIT " + maxAdRecords + ") foo);", null);
            Unit unit = Unit.INSTANCE;
        }
    }
}
