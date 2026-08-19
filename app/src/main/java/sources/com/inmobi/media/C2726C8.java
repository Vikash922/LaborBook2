package com.inmobi.media;

import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: renamed from: com.inmobi.media.C8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2726C8 extends C2740D7 {

    /* JADX INFO: renamed from: A */
    public final boolean f885A;

    /* JADX INFO: renamed from: B */
    public final boolean f886B;

    /* JADX INFO: renamed from: C */
    public final boolean f887C;

    /* JADX INFO: renamed from: D */
    public int f888D;

    /* JADX INFO: renamed from: E */
    public int f889E;

    /* JADX INFO: renamed from: F */
    public HashMap f890F;

    /* JADX INFO: renamed from: x */
    public final boolean f891x;

    /* JADX INFO: renamed from: y */
    public final ArrayList f892y;

    /* JADX INFO: renamed from: z */
    public boolean f893z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2726C8(String assetId, String assetName, C2711B8 assetStyle, InterfaceC3230kd interfaceC3230kd, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, ArrayList arrayList, boolean z6) {
        super(assetId, assetName, ShareConstants.VIDEO_URL, assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        this.f891x = z6;
        this.f923e = interfaceC3230kd;
        Intrinsics.checkNotNullParameter("EXTERNAL", "<set-?>");
        this.f925g = "EXTERNAL";
        this.f893z = z;
        this.f885A = z2;
        this.f886B = z3;
        this.f887C = z4;
        this.f892y = new ArrayList();
        Map map = null;
        this.f934p = interfaceC3230kd != null ? ((C3215jd) interfaceC3230kd).f2241k : null;
        ArrayList<C3375u8> trackers = interfaceC3230kd != null ? ((C3215jd) interfaceC3230kd).f2238h : null;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C3375u8 c3375u8 = (C3375u8) it.next();
                if (Intrinsics.areEqual("OMID_VIEWABILITY", c3375u8.f2662b)) {
                    map = c3375u8.f2663c;
                    if (!TextUtils.isEmpty(c3375u8.f2664d) && TypeIntrinsics.isMutableList(trackers)) {
                        trackers.add(c3375u8);
                    }
                } else if (TypeIntrinsics.isMutableList(trackers)) {
                    trackers.add(c3375u8);
                }
            }
        }
        if (trackers != null) {
            for (C3375u8 c3375u82 : trackers) {
                if (Intrinsics.areEqual("OMID_VIEWABILITY", c3375u82.f2662b)) {
                    c3375u82.f2663c = map;
                }
            }
        }
        if (trackers != null && !trackers.isEmpty()) {
            Intrinsics.checkNotNullParameter(trackers, "trackers");
            this.f937s.addAll(trackers);
        }
        HashMap map2 = this.f938t;
        map2.put("placementType", (byte) 0);
        map2.put("lastVisibleTimestamp", Integer.MIN_VALUE);
        Boolean bool = Boolean.FALSE;
        map2.put(CommonCssConstants.VISIBLE, bool);
        map2.put("seekPosition", 0);
        map2.put("didStartPlaying", bool);
        map2.put("didPause", bool);
        map2.put("didCompleteQ1", bool);
        map2.put("didCompleteQ2", bool);
        map2.put("didCompleteQ3", bool);
        map2.put("didCompleteQ4", bool);
        map2.put("didRequestFullScreen", bool);
        map2.put("isFullScreen", bool);
        map2.put("didImpressionFire", bool);
        map2.put("mapViewabilityParams", new HashMap());
        map2.put("didSignalVideoCompleted", bool);
        map2.put("shouldAutoPlay", Boolean.valueOf(z5));
        map2.put("lastMediaVolume", 0);
        map2.put("currentMediaVolume", 0);
        map2.put("didQ4Fire", bool);
    }

    /* JADX INFO: renamed from: a */
    public final void m917a(HashMap map) {
        this.f890F = new HashMap(map);
    }

    /* JADX INFO: renamed from: b */
    public final int m918b() {
        return this.f888D;
    }

    /* JADX INFO: renamed from: c */
    public final boolean m920c() {
        return this.f891x ? this.f893z && !C2849Kb.m1263o() : this.f893z;
    }

    /* JADX INFO: renamed from: d */
    public final void m922d(int i) {
        this.f889E = i;
    }

    /* JADX INFO: renamed from: a */
    public final void m916a(C2726C8 source) {
        HashMap map;
        Intrinsics.checkNotNullParameter(source, "source");
        this.f938t.putAll(source.f938t);
        HashMap map2 = source.f890F;
        if (map2 != null && (map = this.f890F) != null) {
            map.putAll(map2);
        }
        ArrayList trackers = source.f937s;
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.f937s.addAll(trackers);
    }

    /* JADX INFO: renamed from: d */
    public final InterfaceC3230kd m921d() {
        Object obj = this.f923e;
        if (obj instanceof InterfaceC3230kd) {
            return (InterfaceC3230kd) obj;
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public final void m919c(int i) {
        this.f888D = i;
    }
}
