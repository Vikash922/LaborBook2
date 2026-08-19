package com.inmobi.unifiedId;

import android.content.Context;
import com.inmobi.ads.exceptions.SdkNotInitializedException;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.AbstractC2895Nc;
import com.inmobi.media.AbstractC2925Pc;
import com.inmobi.media.AbstractC3001V4;
import com.inmobi.media.AbstractC3107ca;
import com.inmobi.media.AbstractC3118d6;
import com.inmobi.media.AbstractC3372u5;
import com.inmobi.media.C2835Jc;
import com.inmobi.media.C2840K2;
import com.inmobi.media.C2849Kb;
import com.inmobi.media.C3133e6;
import com.inmobi.media.C3199ic;
import com.inmobi.media.C3431y4;
import com.inmobi.media.EnumC3259mc;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0001¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, m2722d2 = {"Lcom/inmobi/unifiedId/InMobiUnifiedIdService;", "", "Lcom/inmobi/unifiedId/InMobiUserDataModel;", "inMobiUserDataModel", "", "push", "(Lcom/inmobi/unifiedId/InMobiUserDataModel;)V", "Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;", "inMobiUnifiedIdInterface", "fetchUnifiedIds", "(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;)V", "fetchUnifiedIdsInternal$media_release", "fetchUnifiedIdsInternal", "reset", "()V", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isPushCalled", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "isPushCalled$annotations", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiUnifiedIdService {
    public static final InMobiUnifiedIdService INSTANCE = new InMobiUnifiedIdService();

    /* JADX INFO: renamed from: a */
    public static final AtomicBoolean f2820a = new AtomicBoolean();

    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m2655a(com.inmobi.unifiedId.InMobiUnifiedIdInterface r14) {
        /*
            java.lang.String r0 = "InMobiUnifiedIdService"
            java.lang.String r1 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            org.json.JSONObject r0 = com.inmobi.media.AbstractC3372u5.m2491b()
            r1 = 0
            java.lang.String r2 = "ufids"
            if (r0 != 0) goto L12
            goto L79
        L12:
            boolean r3 = r0.has(r2)     // Catch: org.json.JSONException -> L79
            if (r3 == 0) goto L1d
            org.json.JSONArray r3 = r0.getJSONArray(r2)     // Catch: org.json.JSONException -> L79
            goto L1e
        L1d:
            r3 = r1
        L1e:
            if (r3 == 0) goto L79
            int r3 = r3.length()
            if (r3 != 0) goto L27
            goto L79
        L27:
            if (r0 == 0) goto L79
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            r3 = 1
            boolean r4 = r0.has(r2)     // Catch: org.json.JSONException -> L5d
            if (r4 == 0) goto L60
            org.json.JSONArray r4 = r0.getJSONArray(r2)     // Catch: org.json.JSONException -> L5d
            int r5 = r4.length()     // Catch: org.json.JSONException -> L5d
            r6 = 0
            r8 = r3
            r7 = r6
        L3e:
            if (r7 >= r5) goto L5b
            org.json.JSONObject r9 = r4.getJSONObject(r7)     // Catch: org.json.JSONException -> L59
            long r10 = java.lang.System.currentTimeMillis()     // Catch: org.json.JSONException -> L59
            java.lang.String r12 = "expiry"
            long r12 = r9.getLong(r12)     // Catch: org.json.JSONException -> L59
            int r9 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r9 > 0) goto L54
            r9 = r3
            goto L55
        L54:
            r9 = r6
        L55:
            r8 = r8 & r9
            int r7 = r7 + 1
            goto L3e
        L59:
            r3 = r8
            goto L5d
        L5b:
            r3 = r8
            goto L60
        L5d:
            java.util.Objects.toString(r0)
        L60:
            if (r3 != 0) goto L79
            org.json.JSONObject r0 = com.inmobi.media.AbstractC2895Nc.f1319a
            if (r14 == 0) goto L6b
            java.util.LinkedHashSet r0 = com.inmobi.media.AbstractC2895Nc.f1320b
            r0.add(r14)
        L6b:
            boolean r0 = com.inmobi.media.AbstractC2895Nc.m1404b()
            if (r0 == 0) goto L75
            java.util.Objects.toString(r14)
            goto Lbc
        L75:
            com.inmobi.media.AbstractC2895Nc.m1406d()
            goto Lbc
        L79:
            if (r14 == 0) goto Lbc
            if (r0 != 0) goto L7e
            goto L97
        L7e:
            boolean r3 = r0.has(r2)     // Catch: org.json.JSONException -> L97
            if (r3 == 0) goto L89
            org.json.JSONArray r2 = r0.getJSONArray(r2)     // Catch: org.json.JSONException -> L97
            goto L8a
        L89:
            r2 = r1
        L8a:
            if (r2 == 0) goto L97
            int r2 = r2.length()
            if (r2 != 0) goto L93
            goto L97
        L93:
            com.inmobi.media.AbstractC2925Pc.m1533a(r14, r0, r1)
            goto Lbc
        L97:
            java.util.concurrent.atomic.AtomicBoolean r0 = com.inmobi.unifiedId.InMobiUnifiedIdService.f2820a
            boolean r0 = r0.get()
            if (r0 == 0) goto Lb2
            java.util.LinkedHashSet r0 = com.inmobi.media.AbstractC2895Nc.f1320b
            r0.add(r14)
            boolean r0 = com.inmobi.media.AbstractC2895Nc.m1404b()
            if (r0 == 0) goto Lae
            java.util.Objects.toString(r14)
            goto Lbc
        Lae:
            com.inmobi.media.AbstractC2895Nc.m1406d()
            goto Lbc
        Lb2:
            java.lang.Error r0 = new java.lang.Error
            java.lang.String r2 = "Push api needs to called prior to fetch"
            r0.<init>(r2)
            com.inmobi.media.AbstractC2925Pc.m1533a(r14, r1, r0)
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.unifiedId.InMobiUnifiedIdService.m2655a(com.inmobi.unifiedId.InMobiUnifiedIdInterface):void");
    }

    /* JADX INFO: renamed from: b */
    public static final void m2657b(InMobiUnifiedIdInterface inMobiUnifiedIdInterface) {
        fetchUnifiedIdsInternal$media_release(inMobiUnifiedIdInterface);
    }

    @JvmStatic
    public static final void fetchUnifiedIds(final InMobiUnifiedIdInterface inMobiUnifiedIdInterface) {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        if (C2849Kb.m1265q()) {
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.unifiedId.InMobiUnifiedIdService$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiUnifiedIdService.m2657b(inMobiUnifiedIdInterface);
                }
            });
        } else {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            throw new SdkNotInitializedException("InMobiUnifiedIdService");
        }
    }

    @JvmStatic
    public static final void fetchUnifiedIdsInternal$media_release(InMobiUnifiedIdInterface inMobiUnifiedIdInterface) {
        boolean zBooleanValue;
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        HashMap map = new HashMap();
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("FetchApiInvoked", map, EnumC3259mc.f2349a);
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        boolean enabled = ((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getUnifiedIdServiceConfig().getEnabled();
        if (!enabled) {
            reset();
        }
        if (!enabled) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            AbstractC2925Pc.m1533a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.UNIFIED_SERVICE_IS_NOT_ENABLED));
            return;
        }
        Boolean boolM1203c = C2835Jc.f1140a.m1203c();
        boolean zBooleanValue2 = boolM1203c != null ? boolM1203c.booleanValue() : true;
        if (zBooleanValue2) {
            reset();
        }
        if (zBooleanValue2) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            AbstractC2925Pc.m1533a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.USER_HAS_OPTED_OUT));
            return;
        }
        Boolean bool = AbstractC3107ca.f1951b;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age_restricted", "key");
                AbstractC3107ca.f1951b = Boolean.valueOf(c3133e6M2058a.f2045a.getBoolean("user_age_restricted", false));
            }
            Boolean bool2 = AbstractC3107ca.f1951b;
            zBooleanValue = bool2 != null ? bool2.booleanValue() : false;
        }
        if (zBooleanValue) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            AbstractC2925Pc.m1533a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.USER_HAS_AGE_RESTRICTION));
            return;
        }
        synchronized (AbstractC2895Nc.class) {
            if (AbstractC2895Nc.m1404b()) {
                if (inMobiUnifiedIdInterface != null) {
                    AbstractC2895Nc.f1320b.add(inMobiUnifiedIdInterface);
                }
                if (AbstractC2895Nc.m1404b()) {
                    Objects.toString(inMobiUnifiedIdInterface);
                } else {
                    AbstractC2895Nc.m1406d();
                }
            } else {
                m2655a(inMobiUnifiedIdInterface);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void isPushCalled$annotations() {
    }

    @JvmStatic
    public static final void push(final InMobiUserDataModel inMobiUserDataModel) {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        Objects.toString(inMobiUserDataModel);
        if (C2849Kb.m1265q()) {
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.unifiedId.InMobiUnifiedIdService$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiUnifiedIdService.m2656a(inMobiUserDataModel);
                }
            });
        } else {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            throw new SdkNotInitializedException("InMobiUnifiedIdService");
        }
    }

    @JvmStatic
    public static final void reset() {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        if (C2849Kb.m1265q()) {
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.unifiedId.InMobiUnifiedIdService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiUnifiedIdService.m2654a();
                }
            });
        } else {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            throw new SdkNotInitializedException("InMobiUnifiedIdService");
        }
    }

    public final AtomicBoolean isPushCalled() {
        return f2820a;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2656a(InMobiUserDataModel inMobiUserDataModel) {
        boolean zBooleanValue;
        InMobiUserDataModel inMobiUserDataModel2;
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        Objects.toString(inMobiUserDataModel);
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        boolean enabled = ((SignalsConfig) AbstractC3001V4.m1873a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getUnifiedIdServiceConfig().getEnabled();
        if (!enabled) {
            reset();
        }
        if (!enabled) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        Boolean boolM1203c = C2835Jc.f1140a.m1203c();
        boolean zBooleanValue2 = boolM1203c != null ? boolM1203c.booleanValue() : true;
        if (zBooleanValue2) {
            reset();
        }
        if (zBooleanValue2) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        Boolean bool = AbstractC3107ca.f1951b;
        boolean zAreEqual = false;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "user_info_store");
                Intrinsics.checkNotNullParameter("user_age_restricted", "key");
                AbstractC3107ca.f1951b = Boolean.valueOf(c3133e6M2058a.f2045a.getBoolean("user_age_restricted", false));
            }
            Boolean bool2 = AbstractC3107ca.f1951b;
            zBooleanValue = bool2 != null ? bool2.booleanValue() : false;
        }
        if (zBooleanValue) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        InMobiUserDataModel inMobiUserDataModel3 = C3431y4.f2755a;
        if (inMobiUserDataModel == null && C3431y4.f2755a == null) {
            zAreEqual = true;
        } else if (inMobiUserDataModel != null && (inMobiUserDataModel2 = C3431y4.f2755a) != null) {
            zAreEqual = Intrinsics.areEqual(inMobiUserDataModel, inMobiUserDataModel2);
        }
        if (zAreEqual && f2820a.get()) {
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
            return;
        }
        synchronized (C3431y4.class) {
            Objects.toString(C3431y4.f2755a);
            Objects.toString(inMobiUserDataModel);
            C3431y4.f2755a = inMobiUserDataModel;
        }
        f2820a.set(true);
        AbstractC2895Nc.m1405c();
    }

    /* JADX INFO: renamed from: a */
    public static final void m2654a() {
        Intrinsics.checkNotNullExpressionValue("InMobiUnifiedIdService", "TAG");
        f2820a.set(false);
        synchronized (C3431y4.class) {
            Objects.toString(C3431y4.f2755a);
            C3431y4.f2755a = null;
        }
        AbstractC2895Nc.m1407e();
        AbstractC3372u5.m2492b(null);
        AbstractC3372u5.m2490a(null);
        AbstractC3372u5.f2648d = false;
        AbstractC3372u5.f2647c = false;
    }
}
