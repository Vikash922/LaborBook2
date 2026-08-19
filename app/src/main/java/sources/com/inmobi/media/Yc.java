package com.inmobi.media;

import android.graphics.Point;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Yc {
    public static final C0229ad a(C8 videoAsset, D7 asset) {
        double d;
        double d2;
        double d3;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        Intrinsics.checkNotNullParameter(asset, "asset");
        InterfaceC0385kd interfaceC0385kdD = videoAsset.d();
        Point point = asset.d.f107a;
        C0229ad c0229ad = null;
        ArrayList arrayList = interfaceC0385kdD != null ? ((C0370jd) interfaceC0385kdD).i : null;
        float f = N3.d().c;
        double d4 = point.y / f;
        double d5 = point.x / f;
        double d6 = d5 / d4;
        double d7 = d5 * d4;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            double d8 = -1.0d;
            double d9 = 0.0d;
            while (it.hasNext()) {
                C0229ad c0229ad2 = (C0229ad) it.next();
                int i = c0229ad2.b;
                Iterator it2 = it;
                double d10 = c0229ad2.f308a;
                C0229ad c0229ad3 = c0229ad;
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
                            c0229ad = c0229ad2;
                            d8 = d12;
                            it = it2;
                        } else if (d12 == d8) {
                            float f2 = N3.d().c;
                            double d13 = d11 / d;
                            d3 = d4;
                            if (d13 <= d9 || d9 >= f2) {
                                double d14 = f2;
                                if (d9 <= d14 || d13 >= d9 || d13 <= d14) {
                                    it = it2;
                                    c0229ad = c0229ad3;
                                    d4 = d3;
                                }
                            }
                            it = it2;
                            d9 = d13;
                            d4 = d3;
                            c0229ad = c0229ad2;
                        }
                    }
                }
                d3 = d4;
                it = it2;
                c0229ad = c0229ad3;
                d4 = d3;
            }
        }
        return c0229ad;
    }
}
