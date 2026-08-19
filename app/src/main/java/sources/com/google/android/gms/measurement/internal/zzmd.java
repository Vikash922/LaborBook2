package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmd extends zzax {
    private final /* synthetic */ zzlp zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzmd(zzlp zzlpVar, zzja zzjaVar) {
        super(zzjaVar);
        this.zza = zzlpVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzax
    public final void zzb() {
        this.zza.zzj().zzu().zza("Tasks have been queued for a long time");
    }
}
