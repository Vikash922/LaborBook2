package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzqg implements Supplier<zzqf> {
    private static zzqg zza = new zzqg();
    private final Supplier<zzqf> zzb = Suppliers.ofInstance(new zzqi());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzqf get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzqf) zza.get()).zza();
    }
}
