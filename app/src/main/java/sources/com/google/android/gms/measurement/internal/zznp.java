package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznp extends zzax {
    private final /* synthetic */ zznm zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zznp(zznm zznmVar, zzja zzjaVar) {
        super(zzjaVar);
        this.zza = zznmVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzax
    public final void zzb() {
        this.zza.zzu();
        this.zza.zzj().zzp().zza("Starting upload from DelayedRunnable");
        this.zza.zzg.zzw();
    }
}
