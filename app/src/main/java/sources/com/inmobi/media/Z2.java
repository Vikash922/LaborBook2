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

/* JADX INFO: loaded from: classes6.dex */
public final class Z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0325h f292a;
    public final long b;
    public final String c = "Z2";
    public final C0265d3 d = new C0265d3();
    public long e = -1;
    public final AtomicBoolean f = new AtomicBoolean();
    public final AtomicBoolean g = new AtomicBoolean();

    public Z2(C0325h c0325h, long j) {
        this.f292a = c0325h;
        this.b = j;
    }

    public final void a() {
        C0325h c0325h;
        C0325h c0325h2;
        Long lM;
        String strH;
        Boolean boolC;
        Intrinsics.checkNotNull(this.c);
        C0325h c0325h3 = this.f292a;
        if (c0325h3 != null && (boolC = c0325h3.C()) != null) {
            boolean zBooleanValue = boolC.booleanValue();
            C0249c3 c0249c3 = C0249c3.f318a;
            Context contextD = Kb.d();
            if (contextD != null) {
                Intrinsics.checkNotNull("c3");
                if (zBooleanValue != C0249c3.d()) {
                    Intrinsics.checkNotNull("c3");
                    ConcurrentHashMap concurrentHashMap = C0284e6.b;
                    C0284e6.a(AbstractC0268d6.a(contextD, "c_data_store"), Constants.ENABLE_DISABLE, zBooleanValue, false, 4, (Object) null);
                    if (!zBooleanValue) {
                        c0249c3.e();
                    }
                }
            }
        }
        C0249c3 c0249c32 = C0249c3.f318a;
        if (C0249c3.d() && !this.f.getAndSet(true)) {
            this.e = System.currentTimeMillis();
            if (!this.g.get()) {
                C0325h c0325h4 = this.f292a;
                if ((c0325h4 != null ? c0325h4.h() : null) != null && (strH = this.f292a.h()) != null) {
                    C0265d3 c0265d3 = this.d;
                    c0265d3.getClass();
                    Intrinsics.checkNotNullParameter(strH, "<set-?>");
                    c0265d3.f329a = strH;
                    Intrinsics.checkNotNull(this.c);
                }
            }
            if (!this.g.get() && (c0325h2 = this.f292a) != null && (lM = c0325h2.m()) != null) {
                this.d.b = lM.longValue();
                Intrinsics.checkNotNull(this.c);
            }
            if (!this.g.get()) {
                this.d.e = this.b;
                Intrinsics.checkNotNull(this.c);
            }
            if (!this.g.get() && (c0325h = this.f292a) != null) {
                this.d.f = c0325h.n();
                Intrinsics.checkNotNull(this.c);
            }
            long j = this.e / ((long) 1000);
            if (this.g.get()) {
                return;
            }
            this.d.c = j;
            Intrinsics.checkNotNull(this.c);
        }
    }

    public final void b() {
        C0249c3 c0249c3 = C0249c3.f318a;
        if (!C0249c3.d()) {
            Intrinsics.checkNotNull(this.c);
            return;
        }
        if (!this.f.get()) {
            Intrinsics.checkNotNull(this.c);
            return;
        }
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() - this.e);
        if (!this.g.get()) {
            this.d.d = iCurrentTimeMillis;
            Intrinsics.checkNotNull(this.c);
        }
        if (this.g.getAndSet(true)) {
            Intrinsics.checkNotNull(this.c);
        } else {
            Intrinsics.checkNotNull(this.c);
            Kb.a(new Runnable() { // from class: com.inmobi.media.Z2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Z2.a(this.f$0);
                }
            });
        }
    }

    public static final void a(Z2 this$0) {
        List<String> listEmptyList;
        AdConfig.ContextualDataConfig contextualData;
        AdConfig.ContextualDataConfig contextualData2;
        AdConfig.ContextualDataConfig contextualData3;
        AdConfig.ContextualDataConfig contextualData4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C0249c3 c0249c3 = C0249c3.f318a;
        C0265d3 contextualDataModel = this$0.d;
        Intrinsics.checkNotNullParameter(contextualDataModel, "contextualDataModel");
        synchronized (c0249c3) {
            Intrinsics.checkNotNull("c3");
            long jCurrentTimeMillis = System.currentTimeMillis();
            AdConfig adConfig = C0249c3.e;
            int maxAdRecords = 0;
            long expiryTime = jCurrentTimeMillis - ((long) (((adConfig == null || (contextualData4 = adConfig.getContextualData()) == null) ? 0 : contextualData4.getExpiryTime()) * 1000));
            AdConfig adConfig2 = C0249c3.e;
            C0249c3.a(expiryTime, ((adConfig2 == null || (contextualData3 = adConfig2.getContextualData()) == null) ? 0 : contextualData3.getMaxAdRecords()) - 1);
            AdConfig adConfig3 = C0249c3.e;
            if (adConfig3 == null || (contextualData2 = adConfig3.getContextualData()) == null || (listEmptyList = contextualData2.getSkipFields()) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            String string = AbstractC0281e3.a(contextualDataModel, listEmptyList).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            Z3 z3 = new Z3(AbstractC0220a4.a(string, C0249c3.f), jCurrentTimeMillis);
            C0249c3.b.add(z3);
            Object objClone = C0249c3.b.clone();
            Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
            C0249c3.c = (LinkedList) objClone;
            AdConfig adConfig4 = C0249c3.e;
            if (adConfig4 != null && (contextualData = adConfig4.getContextualData()) != null) {
                maxAdRecords = contextualData.getMaxAdRecords();
            }
            Intrinsics.checkNotNull("c3");
            Y2 y2 = (Y2) Db.d.getValue();
            y2.getClass();
            Objects.toString(z3);
            y2.a(z3);
            y2.a("id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > " + expiryTime + " ORDER BY timestamp DESC LIMIT " + maxAdRecords + ") foo);", null);
            Unit unit = Unit.INSTANCE;
        }
    }
}
