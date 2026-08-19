package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
class zziy implements zzja {
    protected final zzhw zzu;

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public Context zza() {
        return this.zzu.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public Clock zzb() {
        return this.zzu.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public zzac zzd() {
        return this.zzu.zzd();
    }

    @Pure
    public zzah zze() {
        return this.zzu.zzf();
    }

    @Pure
    public zzbb zzf() {
        return this.zzu.zzg();
    }

    @Pure
    public zzgh zzi() {
        return this.zzu.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public zzgi zzj() {
        return this.zzu.zzj();
    }

    @Pure
    public zzgu zzk() {
        return this.zzu.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public zzhp zzl() {
        return this.zzu.zzl();
    }

    @Pure
    public zzop zzq() {
        return this.zzu.zzt();
    }

    zziy(zzhw zzhwVar) {
        Preconditions.checkNotNull(zzhwVar);
        this.zzu = zzhwVar;
    }

    public void zzr() {
        this.zzu.zzl().zzr();
    }

    public void zzs() {
        this.zzu.zzy();
    }

    public void zzt() {
        this.zzu.zzl().zzt();
    }
}
