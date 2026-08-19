package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqy implements Supplier<zzqx> {
    private static zzqy zza = new zzqy();
    private final Supplier<zzqx> zzb = Suppliers.ofInstance(new zzra());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzqx get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzqx) zza.get()).zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return ((zzqx) zza.get()).zzb();
    }
}
