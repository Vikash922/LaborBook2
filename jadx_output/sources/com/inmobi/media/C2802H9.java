package com.inmobi.media;

import com.iab.omid.library.inmobi.adsession.Partner;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.H9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2802H9 extends AbstractC2787G9 {

    /* JADX INFO: renamed from: b */
    public Partner f1081b = Partner.createPartner("Inmobi", "a" + StringsKt.replace$default("10.8.3", ".", "", false, 4, (Object) null));

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x0002, B:5:0x0008, B:8:0x0013, B:7:0x000e), top: B:13:0x0002 }] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1151a(com.inmobi.commons.core.configs.AdConfig r10) {
        /*
            r9 = this;
            if (r10 == 0) goto Le
            com.inmobi.commons.core.configs.AdConfig$ViewabilityConfig r10 = r10.getViewability()     // Catch: java.lang.Exception -> L3d
            if (r10 == 0) goto Le
            com.inmobi.commons.core.configs.AdConfig$OmidConfig r10 = r10.getOmidConfig()     // Catch: java.lang.Exception -> L3d
            if (r10 != 0) goto L13
        Le:
            com.inmobi.commons.core.configs.AdConfig$OmidConfig r10 = new com.inmobi.commons.core.configs.AdConfig$OmidConfig     // Catch: java.lang.Exception -> L3d
            r10.<init>()     // Catch: java.lang.Exception -> L3d
        L13:
            java.lang.String r0 = r10.getPartnerKey()     // Catch: java.lang.Exception -> L3d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3d
            java.lang.String r2 = "a"
            r1.<init>(r2)     // Catch: java.lang.Exception -> L3d
            java.lang.String r3 = "10.8.3"
            java.lang.String r4 = "."
            java.lang.String r5 = ""
            r7 = 4
            r8 = 0
            r6 = 0
            java.lang.String r2 = kotlin.text.StringsKt.replace$default(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L3d
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Exception -> L3d
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L3d
            com.iab.omid.library.inmobi.adsession.Partner r0 = com.iab.omid.library.inmobi.adsession.Partner.createPartner(r0, r1)     // Catch: java.lang.Exception -> L3d
            r9.f1081b = r0     // Catch: java.lang.Exception -> L3d
            com.inmobi.media.AbstractC2712B9.m868a(r10)     // Catch: java.lang.Exception -> L3d
            goto L4b
        L3d:
            r10 = move-exception
            com.inmobi.media.w5 r0 = com.inmobi.media.C3402w5.f2709a
            java.lang.String r0 = "event"
            com.inmobi.media.d2 r10 = com.inmobi.media.AbstractC3102c5.m2045a(r10, r0)
            com.inmobi.media.g6 r0 = com.inmobi.media.C3402w5.f2712d
            r0.m2158a(r10)
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2802H9.m1151a(com.inmobi.commons.core.configs.AdConfig):void");
    }
}
