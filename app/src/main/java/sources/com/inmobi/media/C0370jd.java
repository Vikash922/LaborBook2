package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: renamed from: com.inmobi.media.jd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0370jd implements InterfaceC0385kd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdConfig.VastVideoConfig f397a;
    public final int b;
    public final int c;
    public final int d;
    public final ArrayList e;
    public String f;
    public String g;
    public final ArrayList h;
    public final ArrayList i;
    public C0229ad j;
    public String k;
    public int l;

    public C0370jd(List trackers, AdConfig.VastVideoConfig vastVideoConfig) {
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(vastVideoConfig, "vastVideoConfig");
        this.f397a = vastVideoConfig;
        this.b = 1048576;
        this.c = 8192;
        this.d = 60;
        ArrayList arrayList = new ArrayList();
        this.h = arrayList;
        arrayList.addAll(trackers);
        this.e = new ArrayList();
        this.i = new ArrayList();
        this.l = 0;
    }

    public static boolean a(double d, double d2, double d3) {
        return d3 > d && d3 <= d2;
    }

    public final int a() {
        List<String> listSplit;
        String[] strArr;
        String str = this.g;
        if (str != null && (listSplit = new Regex(":").split(str, 0)) != null && (strArr = (String[]) listSplit.toArray(new String[0])) != null && strArr.length > 2) {
            try {
                return (Integer.parseInt(strArr[1]) * this.d) + ((int) Float.parseFloat(strArr[2]));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01db A[PHI: r4
      0x01db: PHI (r4v10 com.inmobi.media.bd) = (r4v7 com.inmobi.media.bd), (r4v11 com.inmobi.media.bd) binds: [B:101:0x01d9, B:78:0x0186] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01e2 A[PHI: r3
      0x01e2: PHI (r3v13 com.inmobi.media.bd) = (r3v10 com.inmobi.media.bd), (r3v14 com.inmobi.media.bd) binds: [B:103:0x01e0, B:80:0x0189] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String b() {
        /*
            Method dump skipped, instruction units count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0370jd.b():java.lang.String");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0370jd(String str, String str2, String str3, ArrayList trackers, ArrayList companionAds, AdConfig.VastVideoConfig vastVideoConfig) {
        this(trackers, vastVideoConfig);
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(companionAds, "companionAds");
        Intrinsics.checkNotNullParameter(vastVideoConfig, "vastVideoConfig");
        if (!companionAds.isEmpty()) {
            this.i = new ArrayList(companionAds);
        }
        if (str != null) {
            this.e.add(new C0244bd(str, 1000));
        }
        this.f = str;
        this.g = str2;
        this.k = str3;
    }

    public final void a(AdConfig.BitRateConfig bitRateConfig, CountDownLatch countDownLatch) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            new C0275dd((C0244bd) it.next(), bitRateConfig.getHeaderTimeout(), countDownLatch).a();
        }
    }
}
