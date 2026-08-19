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

/* JADX INFO: renamed from: com.inmobi.media.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0231b0 extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0246c0 f309a;
    public final /* synthetic */ AdQualityResult b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0231b0(C0246c0 c0246c0, AdQualityResult adQualityResult) {
        super(1);
        this.f309a = c0246c0;
        this.b = adQualityResult;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        La la;
        La la2;
        C0350i9 c0350i9 = (C0350i9) obj;
        if (EnumC0250c4.d.equals(c0350i9)) {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("no network... skipping cleanup", "message");
            Log.i("AdQualityBeaconExecutor", "no network... skipping cleanup");
        } else {
            Intrinsics.checkNotNullParameter("AdQualityBeaconExecutor", "tag");
            Intrinsics.checkNotNullParameter("beacon hit completed... cleaning up", "message");
            Log.i("AdQualityBeaconExecutor", "beacon hit completed... cleaning up");
            if (c0350i9 == null) {
                WeakReference weakReference = (WeakReference) this.f309a.d.get(this.b.getBeaconUrl());
                if (weakReference != null && (la2 = (La) weakReference.get()) != null) {
                    la2.f170a.b("window.mraidview.broadcastEvent('AdReportSuccess')");
                }
            } else {
                WeakReference weakReference2 = (WeakReference) this.f309a.d.get(this.b.getBeaconUrl());
                if (weakReference2 != null && (la = (La) weakReference2.get()) != null) {
                    la.f170a.b("window.mraidview.broadcastEvent('AdReportFailed')");
                }
            }
            C0246c0 c0246c0 = this.f309a;
            AdQualityResult result = this.b;
            c0246c0.getClass();
            Intrinsics.checkNotNullParameter(result, "result");
            try {
                ScheduledExecutorService scheduledExecutorService = C0277e0.f336a;
                C0293f0 c0293f0 = (C0293f0) Db.f101a.getValue();
                c0293f0.getClass();
                Intrinsics.checkNotNullParameter(result, "result");
                Log.i("AdQualityDao", "de-queueing");
                c0293f0.a("image_location=?", new String[]{result.getImageLocation()});
                if (c0293f0.b != null) {
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
