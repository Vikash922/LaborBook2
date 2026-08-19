package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzrk implements Supplier<zzrj> {
    private static zzrk zza = new zzrk();
    private final Supplier<zzrj> zzb = Suppliers.ofInstance(new zzrm());

    @Override // com.google.common.base.Supplier
    public final /* synthetic */ zzrj get() {
        return this.zzb.get();
    }

    @SideEffectFree
    public static boolean zza() {
        return ((zzrj) zza.get()).zza();
    }
}
