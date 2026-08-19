package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqa implements Supplier<zzpz> {
    private static zzqa zza = new zzqa();
    private final Supplier<zzpz> zzb = Suppliers.ofInstance(new zzqc());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzpz get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzpz) zza.get()).zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return ((zzpz) zza.get()).zzb();
    }

    @SideEffectFree
    public static boolean zzc() {
        return ((zzpz) zza.get()).zzc();
    }
}
