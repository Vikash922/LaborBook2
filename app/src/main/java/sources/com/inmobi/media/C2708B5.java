package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.B5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2708B5 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ArrayList f850a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2708B5(C2723C5 c2723c5, ArrayList arrayList) {
        super(1);
        this.f850a = arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0085  */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r5) throws org.json.JSONException {
        /*
            r4 = this;
            com.inmobi.media.z6 r5 = (com.inmobi.media.C3448z6) r5
            java.lang.String r0 = "dbData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.concurrent.CopyOnWriteArrayList r0 = com.inmobi.media.AbstractC2844K6.f1163a
            java.lang.String r0 = r5.f2791a
            java.lang.String r1 = "fileName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r1 = 0
            java.util.concurrent.CopyOnWriteArrayList r2 = com.inmobi.media.AbstractC2844K6.f1163a     // Catch: java.lang.Exception -> L36
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> L36
        L17:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Exception -> L36
            if (r3 == 0) goto L44
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Exception -> L36
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3     // Catch: java.lang.Exception -> L36
            java.lang.Object r3 = r3.get()     // Catch: java.lang.Exception -> L36
            com.inmobi.media.Ca r3 = (com.inmobi.media.C2728Ca) r3     // Catch: java.lang.Exception -> L36
            if (r3 == 0) goto L2e
            java.lang.String r3 = r3.f903j     // Catch: java.lang.Exception -> L36
            goto L2f
        L2e:
            r3 = r1
        L2f:
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0)     // Catch: java.lang.Exception -> L36
            if (r3 == 0) goto L17
            goto L8a
        L36:
            r0 = move-exception
            com.inmobi.media.w5 r2 = com.inmobi.media.C3402w5.f2709a
            java.lang.String r2 = "event"
            com.inmobi.media.d2 r0 = com.inmobi.media.AbstractC3102c5.m2045a(r0, r2)
            com.inmobi.media.g6 r2 = com.inmobi.media.C3402w5.f2712d
            r2.m2158a(r0)
        L44:
            java.lang.String r0 = r5.f2791a
            java.lang.String r2 = "filePath"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            java.io.File r2 = new java.io.File
            r2.<init>(r0)
            boolean r0 = r2.exists()
            if (r0 == 0) goto L63
            boolean r0 = r2.isFile()
            if (r0 != 0) goto L5d
            goto L63
        L5d:
            r0 = 1
            java.lang.String r0 = kotlin.p024io.FilesKt.readText$default(r2, r1, r0, r1)     // Catch: java.lang.Exception -> L63
            goto L64
        L63:
            r0 = r1
        L64:
            if (r0 == 0) goto L83
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>(r0)
            java.lang.String r0 = "vitals"
            org.json.JSONObject r0 = r1.getJSONObject(r0)
            java.lang.String r2 = "log"
            org.json.JSONArray r1 = r1.getJSONArray(r2)
            com.inmobi.media.D5 r2 = new com.inmobi.media.D5
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r2.<init>(r0, r1, r5)
            r1 = r2
        L83:
            if (r1 == 0) goto L8a
            java.util.ArrayList r5 = r4.f850a
            r5.add(r1)
        L8a:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2708B5.invoke(java.lang.Object):java.lang.Object");
    }
}
