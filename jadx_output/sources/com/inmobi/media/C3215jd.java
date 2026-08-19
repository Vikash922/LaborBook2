package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: renamed from: com.inmobi.media.jd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3215jd implements InterfaceC3230kd {

    /* JADX INFO: renamed from: a */
    public final AdConfig.VastVideoConfig f2231a;

    /* JADX INFO: renamed from: b */
    public final int f2232b;

    /* JADX INFO: renamed from: c */
    public final int f2233c;

    /* JADX INFO: renamed from: d */
    public final int f2234d;

    /* JADX INFO: renamed from: e */
    public final ArrayList f2235e;

    /* JADX INFO: renamed from: f */
    public String f2236f;

    /* JADX INFO: renamed from: g */
    public String f2237g;

    /* JADX INFO: renamed from: h */
    public final ArrayList f2238h;

    /* JADX INFO: renamed from: i */
    public final ArrayList f2239i;

    /* JADX INFO: renamed from: j */
    public C3080ad f2240j;

    /* JADX INFO: renamed from: k */
    public String f2241k;

    /* JADX INFO: renamed from: l */
    public int f2242l;

    public C3215jd(List trackers, AdConfig.VastVideoConfig vastVideoConfig) {
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(vastVideoConfig, "vastVideoConfig");
        this.f2231a = vastVideoConfig;
        this.f2232b = 1048576;
        this.f2233c = 8192;
        this.f2234d = 60;
        ArrayList arrayList = new ArrayList();
        this.f2238h = arrayList;
        arrayList.addAll(trackers);
        this.f2235e = new ArrayList();
        this.f2239i = new ArrayList();
        this.f2242l = 0;
    }

    /* JADX INFO: renamed from: a */
    public static boolean m2265a(double d, double d2, double d3) {
        return d3 > d && d3 <= d2;
    }

    /* JADX INFO: renamed from: a */
    public final int m2266a() {
        List<String> listSplit;
        String[] strArr;
        String str = this.f2237g;
        if (str != null && (listSplit = new Regex(":").split(str, 0)) != null && (strArr = (String[]) listSplit.toArray(new String[0])) != null && strArr.length > 2) {
            try {
                return (Integer.parseInt(strArr[1]) * this.f2234d) + ((int) Float.parseFloat(strArr[2]));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01db A[PHI: r4
      0x01db: PHI (r4v10 com.inmobi.media.bd) = (r4v7 com.inmobi.media.bd), (r4v11 com.inmobi.media.bd) binds: [B:101:0x01d9, B:78:0x0186] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01e2 A[PHI: r3
      0x01e2: PHI (r3v13 com.inmobi.media.bd) = (r3v10 com.inmobi.media.bd), (r3v14 com.inmobi.media.bd) binds: [B:103:0x01e0, B:80:0x0189] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2268b() {
        /*
            Method dump skipped, instruction units count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3215jd.m2268b():java.lang.String");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3215jd(String str, String str2, String str3, ArrayList trackers, ArrayList companionAds, AdConfig.VastVideoConfig vastVideoConfig) {
        this(trackers, vastVideoConfig);
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(companionAds, "companionAds");
        Intrinsics.checkNotNullParameter(vastVideoConfig, "vastVideoConfig");
        if (!companionAds.isEmpty()) {
            this.f2239i = new ArrayList(companionAds);
        }
        if (str != null) {
            this.f2235e.add(new C3095bd(str, 1000));
        }
        this.f2236f = str;
        this.f2237g = str2;
        this.f2241k = str3;
    }

    /* JADX INFO: renamed from: a */
    public final void m2267a(AdConfig.BitRateConfig bitRateConfig, CountDownLatch countDownLatch) {
        Iterator it = this.f2235e.iterator();
        while (it.hasNext()) {
            new C3125dd((C3095bd) it.next(), bitRateConfig.getHeaderTimeout(), countDownLatch).m2079a();
        }
    }
}
