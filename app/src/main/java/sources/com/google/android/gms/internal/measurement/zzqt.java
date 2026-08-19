package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqt implements Supplier<zzqw> {
    private static zzqt zza = new zzqt();
    private final Supplier<zzqw> zzb = Suppliers.ofInstance(new zzqv());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzqw get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzqw) zza.get()).zza();
    }

    @SideEffectFree
    public static boolean zzb() {
        return ((zzqw) zza.get()).zzb();
    }
}
