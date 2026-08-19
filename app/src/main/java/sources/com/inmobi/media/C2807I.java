package com.inmobi.media;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.inmobi.media.I */
/* JADX INFO: loaded from: classes6.dex */
public final class C2807I {

    /* JADX INFO: renamed from: a */
    public final GestureDetectorOnGestureListenerC3049Ya f1089a;

    /* JADX INFO: renamed from: b */
    public final long f1090b;

    /* JADX INFO: renamed from: c */
    public final C2938Qa f1091c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC3147f5 f1092d;

    /* JADX INFO: renamed from: e */
    public final Context f1093e;

    /* JADX INFO: renamed from: f */
    public C2702B f1094f;

    /* JADX INFO: renamed from: g */
    public C3266n4 f1095g;

    /* JADX INFO: renamed from: h */
    public final ScheduledThreadPoolExecutor f1096h;

    /* JADX INFO: renamed from: i */
    public final AtomicBoolean f1097i;

    /* JADX INFO: renamed from: j */
    public ScheduledFuture f1098j;

    /* JADX INFO: renamed from: k */
    public C2926Pd f1099k;

    /* JADX INFO: renamed from: l */
    public final C2792H f1100l;

    public C2807I(GestureDetectorOnGestureListenerC3049Ya adView, long j, C2938Qa listener, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f1089a = adView;
        this.f1090b = j;
        this.f1091c = listener;
        this.f1092d = interfaceC3147f5;
        this.f1093e = adView.getContext();
        this.f1096h = (ScheduledThreadPoolExecutor) AbstractC3251m4.f2320c.getValue();
        this.f1097i = new AtomicBoolean(false);
        this.f1100l = new C2792H(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x01ac  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1156a(com.inmobi.media.C2807I r15) {
        /*
            Method dump skipped, instruction units count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2807I.m1156a(com.inmobi.media.I):void");
    }

    /* JADX INFO: renamed from: a */
    public final void m1157a(C3266n4 metrics) {
        if (Intrinsics.areEqual(metrics, this.f1095g)) {
            return;
        }
        C2938Qa c2938Qa = this.f1091c;
        c2938Qa.getClass();
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = c2938Qa.f1484a;
        StringBuilder sbAppend = new StringBuilder("window.mraidview.broadcastEvent('exposureChange', ").append(metrics.f2375a).append(", ");
        C3281o4 c3281o4 = metrics.f2376b;
        Object jSONArray = Constants.ATTENDANCE_STATUS_NULL;
        StringBuilder sbAppend2 = sbAppend.append(c3281o4 != null ? AbstractC3296p4.m2339a(c3281o4) : Constants.ATTENDANCE_STATUS_NULL).append(", ");
        ArrayList arrayList = metrics.f2377c;
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(AbstractC3296p4.m2339a((C3281o4) it.next()));
            }
            jSONArray = new JSONArray((Collection) arrayList2);
        }
        gestureDetectorOnGestureListenerC3049Ya.m1960b(sbAppend2.append(jSONArray).append(");").toString());
        this.f1095g = metrics;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1155a(Rect rect, ArrayList arrayList, RectF rectF) {
        if (rectF.intersect(new RectF(rect))) {
            arrayList.add(new Rect(AbstractC3429y2.m2609b(rectF.left), AbstractC3429y2.m2609b(rectF.top), AbstractC3429y2.m2609b(rectF.right), AbstractC3429y2.m2609b(rectF.bottom)));
        }
    }
}
