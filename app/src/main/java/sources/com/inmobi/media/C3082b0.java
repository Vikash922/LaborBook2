package com.inmobi.media;

import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.b0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3082b0 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3097c0 f1868a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ AdQualityResult f1869b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3082b0(C3097c0 c3097c0, AdQualityResult adQualityResult) {
        super(1);
        this.f1868a = c3097c0;
        this.f1869b = adQualityResult;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C2863La c2863La;
        C2863La c2863La2;
        C3196i9 c3196i9 = (C3196i9) obj;
        if (EnumC3101c4.f1921d.equals(c3196i9)) {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("no network... skipping cleanup", "message");
            Log.i("AdQualityBeaconExecutor", "no network... skipping cleanup");
        } else {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("beacon hit completed... cleaning up", "message");
            Log.i("AdQualityBeaconExecutor", "beacon hit completed... cleaning up");
            if (c3196i9 == null) {
                WeakReference weakReference = (WeakReference) this.f1868a.f1904d.get(this.f1869b.getBeaconUrl());
                if (weakReference != null && (c2863La2 = (C2863La) weakReference.get()) != null) {
                    c2863La2.f1236a.m1960b("window.mraidview.broadcastEvent('AdReportSuccess')");
                }
            } else {
                WeakReference weakReference2 = (WeakReference) this.f1868a.f1904d.get(this.f1869b.getBeaconUrl());
                if (weakReference2 != null && (c2863La = (C2863La) weakReference2.get()) != null) {
                    c2863La.f1236a.m1960b("window.mraidview.broadcastEvent('AdReportFailed')");
                }
            }
            C3097c0 c3097c0 = this.f1868a;
            AdQualityResult result = this.f1869b;
            c3097c0.getClass();
            Intrinsics.checkNotNullParameter(result, "result");
            try {
                ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
                C3142f0 c3142f0 = (C3142f0) AbstractC2744Db.f948a.getValue();
                c3142f0.getClass();
                Intrinsics.checkNotNullParameter(result, "result");
                Log.i("AdQualityDao", "de-queueing");
                c3142f0.m1752a("image_location=?", new String[]{result.getImageLocation()});
                if (c3142f0.f2057b != null) {
                    Log.i("AdQualityDao", "sending callback - dequeue");
                }
                if (result.getImageLocation().length() == 0) {
                    Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                    Intrinsics.checkNotNullParameter("no image to clear. clean up done.", "message");
                    Log.i("AdQualityBeaconExecutor", "no image to clear. clean up done.");
                } else {
                    File file = new File(result.getImageLocation());
                    Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                    Intrinsics.checkNotNullParameter("deleting file", "message");
                    Log.i("AdQualityBeaconExecutor", "deleting file");
                    String message = "delete file result - " + file.delete();
                    Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                    Intrinsics.checkNotNullParameter(message, "message");
                    Log.i("AdQualityBeaconExecutor", message);
                }
            } catch (Exception e) {
                Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
                Intrinsics.checkNotNullParameter("exception while cleanup", "message");
                Log.e("AdQualityBeaconExecutor", "exception while cleanup", e);
            }
        }
        return Unit.INSTANCE;
    }
}
