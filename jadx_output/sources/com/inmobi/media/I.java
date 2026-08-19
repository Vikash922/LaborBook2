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

/* JADX INFO: loaded from: classes6.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ya f134a;
    public final long b;
    public final Qa c;
    public final InterfaceC0298f5 d;
    public final Context e;
    public B f;
    public C0422n4 g;
    public final ScheduledThreadPoolExecutor h;
    public final AtomicBoolean i;
    public ScheduledFuture j;
    public Pd k;
    public final H l;

    public I(Ya adView, long j, Qa listener, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f134a = adView;
        this.b = j;
        this.c = listener;
        this.d = interfaceC0298f5;
        this.e = adView.getContext();
        this.h = (ScheduledThreadPoolExecutor) AbstractC0407m4.c.getValue();
        this.i = new AtomicBoolean(false);
        this.l = new H(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x01ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.media.I r15) {
        /*
            Method dump skipped, instruction units count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.I.a(com.inmobi.media.I):void");
    }

    public final void a(C0422n4 metrics) {
        if (Intrinsics.areEqual(metrics, this.g)) {
            return;
        }
        Qa qa = this.c;
        qa.getClass();
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        Ya ya = qa.f225a;
        StringBuilder sbAppend = new StringBuilder("window.mraidview.broadcastEvent('exposureChange', ").append(metrics.f431a).append(", ");
        C0437o4 c0437o4 = metrics.b;
        Object jSONArray = Constants.ATTENDANCE_STATUS_NULL;
        StringBuilder sbAppend2 = sbAppend.append(c0437o4 != null ? AbstractC0452p4.a(c0437o4) : Constants.ATTENDANCE_STATUS_NULL).append(", ");
        ArrayList arrayList = metrics.c;
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(AbstractC0452p4.a((C0437o4) it.next()));
            }
            jSONArray = new JSONArray((Collection) arrayList2);
        }
        ya.b(sbAppend2.append(jSONArray).append(");").toString());
        this.g = metrics;
    }

    public static final void a(Rect rect, ArrayList arrayList, RectF rectF) {
        if (rectF.intersect(new RectF(rect))) {
            arrayList.add(new Rect(AbstractC0576y2.b(rectF.left), AbstractC0576y2.b(rectF.top), AbstractC0576y2.b(rectF.right), AbstractC0576y2.b(rectF.bottom)));
        }
    }
}
