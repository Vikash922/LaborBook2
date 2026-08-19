package com.inmobi.media;

import com.inmobi.adquality.models.AdQualityResult;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0357j0 implements X9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0418n0 f390a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Wb c;
    public final /* synthetic */ String d;

    public C0357j0(C0418n0 c0418n0, boolean z, Wb wb, String str) {
        this.f390a = c0418n0;
        this.b = z;
        this.c = wb;
        this.d = str;
    }

    @Override // com.inmobi.media.X9
    public final void a(Object obj) {
        String result = (String) obj;
        Intrinsics.checkNotNullParameter(result, "result");
        this.f390a.a("file saved - " + result + " , isReporting - " + this.b);
        C0418n0 c0418n0 = this.f390a;
        Wb process = this.c;
        String beacon = this.d;
        boolean z = this.b;
        c0418n0.getClass();
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(beacon, "beacon");
        Unit unit = null;
        if (z) {
            c0418n0.a(new AdQualityResult(result, null, beacon, c0418n0.k.toString()), false);
            return;
        }
        c0418n0.f.remove(process);
        AdQualityResult adQualityResult = c0418n0.i;
        if (adQualityResult != null) {
            adQualityResult.setImageLocation(result);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            c0418n0.i = new AdQualityResult(result, null, beacon, null, 8, null);
        }
        c0418n0.a("file is saved. result - " + c0418n0.i);
        c0418n0.a(true);
    }

    @Override // com.inmobi.media.X9
    public final void onError(Exception exc) {
        C0418n0 c0418n0 = this.f390a;
        Wb process = this.c;
        c0418n0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c0418n0.a(exc, "error in running process - ".concat("Wb"));
        c0418n0.f.remove(process);
        c0418n0.a(true);
    }
}
