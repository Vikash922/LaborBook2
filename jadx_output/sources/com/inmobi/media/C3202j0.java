package com.inmobi.media;

import com.inmobi.adquality.models.AdQualityResult;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.j0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3202j0 implements InterfaceC3034X9 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3262n0 f2215a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ boolean f2216b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3022Wb f2217c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f2218d;

    public C3202j0(C3262n0 c3262n0, boolean z, C3022Wb c3022Wb, String str) {
        this.f2215a = c3262n0;
        this.f2216b = z;
        this.f2217c = c3022Wb;
        this.f2218d = str;
    }

    @Override // com.inmobi.media.InterfaceC3034X9
    /* JADX INFO: renamed from: a */
    public final void mo1913a(Object obj) {
        String result = (String) obj;
        Intrinsics.checkNotNullParameter(result, "result");
        this.f2215a.m2305a("file saved - " + result + " , isReporting - " + this.f2216b);
        C3262n0 c3262n0 = this.f2215a;
        C3022Wb process = this.f2217c;
        String beacon = this.f2218d;
        boolean z = this.f2216b;
        c3262n0.getClass();
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(beacon, "beacon");
        Unit unit = null;
        if (z) {
            c3262n0.m2302a(new AdQualityResult(result, null, beacon, c3262n0.f2366k.toString()), false);
            return;
        }
        c3262n0.f2361f.remove(process);
        AdQualityResult adQualityResult = c3262n0.f2364i;
        if (adQualityResult != null) {
            adQualityResult.setImageLocation(result);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            c3262n0.f2364i = new AdQualityResult(result, null, beacon, null, 8, null);
        }
        c3262n0.m2305a("file is saved. result - " + c3262n0.f2364i);
        c3262n0.m2307a(true);
    }

    @Override // com.inmobi.media.InterfaceC3034X9
    public final void onError(Exception exc) {
        C3262n0 c3262n0 = this.f2215a;
        C3022Wb process = this.f2217c;
        c3262n0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c3262n0.m2304a(exc, "error in running process - ".concat("Wb"));
        c3262n0.f2361f.remove(process);
        c3262n0.m2307a(true);
    }
}
