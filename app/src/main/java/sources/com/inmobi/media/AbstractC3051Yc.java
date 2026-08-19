package com.inmobi.media;

import android.graphics.Point;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Yc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3051Yc {
    /* JADX INFO: renamed from: a */
    public static final C3080ad m1992a(C2726C8 videoAsset, C2740D7 asset) {
        double d;
        double d2;
        double d3;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        Intrinsics.checkNotNullParameter(asset, "asset");
        InterfaceC3230kd interfaceC3230kdM921d = videoAsset.m921d();
        Point point = asset.f922d.f974a;
        C3080ad c3080ad = null;
        ArrayList arrayList = interfaceC3230kdM921d != null ? ((C3215jd) interfaceC3230kdM921d).f2239i : null;
        float f = AbstractC2886N3.m1388d().f1332c;
        double d4 = point.y / f;
        double d5 = point.x / f;
        double d6 = d5 / d4;
        double d7 = d5 * d4;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            double d8 = -1.0d;
            double d9 = 0.0d;
            while (it.hasNext()) {
                C3080ad c3080ad2 = (C3080ad) it.next();
                int i = c3080ad2.f1856b;
                Iterator it2 = it;
                double d10 = c3080ad2.f1855a;
                C3080ad c3080ad3 = c3080ad;
                double d11 = i;
                if (d6 > d10 / d11) {
                    d2 = (d4 / d11) * d10;
                    d = d4;
                } else {
                    d = (d5 / d10) * d11;
                    d2 = d5;
                }
                if (d11 >= d * 0.33d && d10 >= 0.33d * d2) {
                    double d12 = d2 * d;
                    if (d12 > 0.5d * d7) {
                        if (d12 > d8) {
                            d9 = d11 / d;
                            c3080ad = c3080ad2;
                            d8 = d12;
                            it = it2;
                        } else if (d12 == d8) {
                            float f2 = AbstractC2886N3.m1388d().f1332c;
                            double d13 = d11 / d;
                            d3 = d4;
                            if (d13 <= d9 || d9 >= f2) {
                                double d14 = f2;
                                if (d9 <= d14 || d13 >= d9 || d13 <= d14) {
                                    it = it2;
                                    c3080ad = c3080ad3;
                                    d4 = d3;
                                }
                            }
                            it = it2;
                            d9 = d13;
                            d4 = d3;
                            c3080ad = c3080ad2;
                        }
                    }
                }
                d3 = d4;
                it = it2;
                c3080ad = c3080ad3;
                d4 = d3;
            }
        }
        return c3080ad;
    }
}
