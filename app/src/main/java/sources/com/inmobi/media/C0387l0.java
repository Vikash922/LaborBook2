package com.inmobi.media;

import android.graphics.Bitmap;
import com.inmobi.adquality.models.AdQualityControl;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0387l0 implements X9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0418n0 f407a;
    public final /* synthetic */ T1 b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ La d;

    public C0387l0(C0418n0 c0418n0, T1 t1, boolean z, La la) {
        this.f407a = c0418n0;
        this.b = t1;
        this.c = z;
        this.d = la;
    }

    @Override // com.inmobi.media.X9
    public final void a(Object obj) {
        String beacon;
        Bitmap bitmap = (Bitmap) obj;
        C0418n0 c0418n0 = this.f407a;
        T1 process = this.b;
        boolean z = this.c;
        La la = this.d;
        c0418n0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c0418n0.a("Screen shot result received - isReporting - " + z);
        c0418n0.f.remove(process);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap != null) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (bitmap != null && la != null) {
            la.f170a.b("window.mraidview.broadcastEvent('ScreenshotSuccess')");
        }
        if (z) {
            String str = c0418n0.j;
            Intrinsics.checkNotNull(byteArray);
            c0418n0.a(str, byteArray, true);
        } else {
            AdQualityControl adQualityControl = c0418n0.g;
            if (adQualityControl != null && (beacon = adQualityControl.getBeacon()) != null) {
                c0418n0.a("saving to file - beacon - ".concat(beacon));
                Intrinsics.checkNotNull(byteArray);
                c0418n0.a(beacon, byteArray, false);
            }
        }
        c0418n0.l.set(false);
    }

    @Override // com.inmobi.media.X9
    public final void onError(Exception exc) {
        C0418n0 c0418n0 = this.f407a;
        T1 process = this.b;
        c0418n0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c0418n0.a(exc, "error in running process - ".concat(process.getClass().getSimpleName()));
        c0418n0.f.remove(process);
        c0418n0.a(true);
    }
}
