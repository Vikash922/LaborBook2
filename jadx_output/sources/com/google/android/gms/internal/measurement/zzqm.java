package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqm implements Supplier<zzql> {
    private static zzqm zza = new zzqm();
    private final Supplier<zzql> zzb = Suppliers.ofInstance(new zzqo());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzql get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzql) zza.get()).zza();
    }
}
