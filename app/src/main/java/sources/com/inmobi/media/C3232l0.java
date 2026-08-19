package com.inmobi.media;

import android.graphics.Bitmap;
import com.inmobi.adquality.models.AdQualityControl;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.l0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3232l0 implements InterfaceC3034X9 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3262n0 f2262a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ AbstractC2970T1 f2263b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ boolean f2264c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2863La f2265d;

    public C3232l0(C3262n0 c3262n0, AbstractC2970T1 abstractC2970T1, boolean z, C2863La c2863La) {
        this.f2262a = c3262n0;
        this.f2263b = abstractC2970T1;
        this.f2264c = z;
        this.f2265d = c2863La;
    }

    @Override // com.inmobi.media.InterfaceC3034X9
    /* JADX INFO: renamed from: a */
    public final void mo1913a(Object obj) {
        String beacon;
        Bitmap bitmap = (Bitmap) obj;
        C3262n0 c3262n0 = this.f2262a;
        AbstractC2970T1 process = this.f2263b;
        boolean z = this.f2264c;
        C2863La c2863La = this.f2265d;
        c3262n0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c3262n0.m2305a("Screen shot result received - isReporting - " + z);
        c3262n0.f2361f.remove(process);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap != null) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (bitmap != null && c2863La != null) {
            c2863La.f1236a.m1960b("window.mraidview.broadcastEvent('ScreenshotSuccess')");
        }
        if (z) {
            String str = c3262n0.f2365j;
            Intrinsics.checkNotNull(byteArray);
            c3262n0.m2306a(str, byteArray, true);
        } else {
            AdQualityControl adQualityControl = c3262n0.f2362g;
            if (adQualityControl != null && (beacon = adQualityControl.getBeacon()) != null) {
                c3262n0.m2305a("saving to file - beacon - ".concat(beacon));
                Intrinsics.checkNotNull(byteArray);
                c3262n0.m2306a(beacon, byteArray, false);
            }
        }
        c3262n0.f2367l.set(false);
    }

    @Override // com.inmobi.media.InterfaceC3034X9
    public final void onError(Exception exc) {
        C3262n0 c3262n0 = this.f2262a;
        AbstractC2970T1 process = this.f2263b;
        c3262n0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c3262n0.m2304a(exc, "error in running process - ".concat(process.getClass().getSimpleName()));
        c3262n0.f2361f.remove(process);
        c3262n0.m2307a(true);
    }
}
