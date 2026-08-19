package com.inmobi.media;

import com.inmobi.unifiedId.InMobiUnifiedIdInterface;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Oc */
/* JADX INFO: loaded from: classes6.dex */
public final class C2910Oc {

    /* JADX INFO: renamed from: a */
    public final C2953Rc f1343a;

    /* JADX INFO: renamed from: b */
    public final LinkedHashSet f1344b;

    public C2910Oc(C2953Rc networkRequest, LinkedHashSet inMobiUnifiedIdInterfaceSet) {
        Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
        Intrinsics.checkNotNullParameter(inMobiUnifiedIdInterfaceSet, "inMobiUnifiedIdInterfaceSet");
        this.f1343a = networkRequest;
        this.f1344b = inMobiUnifiedIdInterfaceSet;
    }

    /* JADX INFO: renamed from: a */
    public final void m1423a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        synchronized (AbstractC2895Nc.class) {
            if (this.f1343a.f2509A.get()) {
                return;
            }
            AbstractC2895Nc.m1403a();
            AbstractC3372u5.m2492b(AbstractC2925Pc.m1532a(jSONObject, AbstractC3372u5.m2491b()));
            JSONObject jSONObjectM1531a = AbstractC2925Pc.m1531a(AbstractC3372u5.m2491b());
            for (InMobiUnifiedIdInterface inMobiUnifiedIdInterface : this.f1344b) {
                if (jSONObjectM1531a == null) {
                    AbstractC2925Pc.m1533a(inMobiUnifiedIdInterface, null, new Error(InMobiUnifiedIdInterface.NO_LOCAL_DATA_PRESENT));
                } else {
                    AbstractC2925Pc.m1533a(inMobiUnifiedIdInterface, jSONObjectM1531a, null);
                }
            }
            this.f1344b.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1422a(C3196i9 c3196i9) {
        EnumC3101c4 enumC3101c4;
        synchronized (AbstractC2895Nc.class) {
            if (c3196i9 != null) {
                try {
                    enumC3101c4 = c3196i9.f2180a;
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                enumC3101c4 = null;
            }
            Objects.toString(enumC3101c4);
            Objects.toString(c3196i9 != null ? c3196i9.f2180a : null);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (c3196i9 != null) {
                linkedHashMap.put("errorCode", c3196i9.f2180a);
            }
            C3199ic c3199ic = C3199ic.f2193a;
            C3199ic.m2248b("UnifiedIdNetworkResponseFailure", linkedHashMap, EnumC3259mc.f2349a);
            if (this.f1343a.f2509A.get()) {
                return;
            }
            AbstractC2895Nc.m1403a();
            m1421a();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[Catch: all -> 0x0050, JSONException -> 0x0052, TryCatch #1 {JSONException -> 0x0052, blocks: (B:4:0x000d, B:6:0x0013, B:8:0x001d, B:9:0x0023, B:11:0x0029, B:12:0x0033, B:13:0x0039, B:15:0x003f), top: B:26:0x000d, outer: #0 }] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1421a() {
        /*
            r5 = this;
            java.lang.String r0 = "ufids"
            org.json.JSONObject r1 = com.inmobi.media.AbstractC3372u5.m2491b()
            org.json.JSONObject r1 = com.inmobi.media.AbstractC2925Pc.m1531a(r1)
            r2 = 0
            if (r1 == 0) goto L33
            boolean r3 = r1.has(r0)     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            if (r3 == 0) goto L33
            org.json.JSONArray r0 = r1.getJSONArray(r0)     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            if (r0 <= 0) goto L33
            java.util.LinkedHashSet r0 = r5.f1344b     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
        L23:
            boolean r3 = r0.hasNext()     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            if (r3 == 0) goto L56
            java.lang.Object r3 = r0.next()     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            com.inmobi.unifiedId.InMobiUnifiedIdInterface r3 = (com.inmobi.unifiedId.InMobiUnifiedIdInterface) r3     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            com.inmobi.media.AbstractC2925Pc.m1533a(r3, r1, r2)     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            goto L23
        L33:
            java.util.LinkedHashSet r0 = r5.f1344b     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
        L39:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            if (r1 == 0) goto L56
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            com.inmobi.unifiedId.InMobiUnifiedIdInterface r1 = (com.inmobi.unifiedId.InMobiUnifiedIdInterface) r1     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            java.lang.Error r3 = new java.lang.Error     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            java.lang.String r4 = "Fetching the unifiedIds from ID Service has failed and there are no unified ids present in cache"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            com.inmobi.media.AbstractC2925Pc.m1533a(r1, r2, r3)     // Catch: java.lang.Throwable -> L50 org.json.JSONException -> L52
            goto L39
        L50:
            r0 = move-exception
            goto L5c
        L52:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L50
        L56:
            java.util.LinkedHashSet r0 = r5.f1344b
            r0.clear()
            return
        L5c:
            java.util.LinkedHashSet r1 = r5.f1344b
            r1.clear()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2910Oc.m1421a():void");
    }
}
