package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzqb;
import com.laborbook.keep.screen.calendar.utils.Constants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzad extends zzaa {
    private zzfn.zze zzg;
    private final /* synthetic */ zzv zzh;

    @Override // com.google.android.gms.measurement.internal.zzaa
    final int zza() {
        return this.zzg.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzaa
    final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzaa
    final boolean zzc() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzad(zzv zzvVar, String str, int i, zzfn.zze zzeVar) {
        super(str, i);
        this.zzh = zzvVar;
        this.zzg = zzeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final boolean zza(Long l, Long l2, zzgn.zzo zzoVar, boolean z) {
        Object[] objArr = zzqb.zza() && this.zzh.zze().zzf(this.zza, zzbj.zzbm);
        boolean zZzf = this.zzg.zzf();
        boolean zZzg = this.zzg.zzg();
        boolean zZzh = this.zzg.zzh();
        Object[] objArr2 = zZzf || zZzg || zZzh;
        Boolean boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        if (z && objArr2 == false) {
            this.zzh.zzj().zzp().zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzb), this.zzg.zzi() ? Integer.valueOf(this.zzg.zza()) : null);
            return true;
        }
        zzfn.zzc zzcVarZzb = this.zzg.zzb();
        boolean zZzf2 = zzcVarZzb.zzf();
        if (zzoVar.zzk()) {
            if (!zzcVarZzb.zzh()) {
                this.zzh.zzj().zzu().zza("No number filter for long property. property", this.zzh.zzi().zzc(zzoVar.zzg()));
            } else {
                boolZza = zza(zza(zzoVar.zzc(), zzcVarZzb.zzc()), zZzf2);
            }
        } else if (zzoVar.zzi()) {
            if (!zzcVarZzb.zzh()) {
                this.zzh.zzj().zzu().zza("No number filter for double property. property", this.zzh.zzi().zzc(zzoVar.zzg()));
            } else {
                boolZza = zza(zza(zzoVar.zza(), zzcVarZzb.zzc()), zZzf2);
            }
        } else if (zzoVar.zzm()) {
            if (!zzcVarZzb.zzj()) {
                if (!zzcVarZzb.zzh()) {
                    this.zzh.zzj().zzu().zza("No string or number filter defined. property", this.zzh.zzi().zzc(zzoVar.zzg()));
                } else if (zzol.zzb(zzoVar.zzh())) {
                    boolZza = zza(zza(zzoVar.zzh(), zzcVarZzb.zzc()), zZzf2);
                } else {
                    this.zzh.zzj().zzu().zza("Invalid user property value for Numeric number filter. property, value", this.zzh.zzi().zzc(zzoVar.zzg()), zzoVar.zzh());
                }
            } else {
                boolZza = zza(zza(zzoVar.zzh(), zzcVarZzb.zzd(), this.zzh.zzj()), zZzf2);
            }
        } else {
            this.zzh.zzj().zzu().zza("User property has no value, property", this.zzh.zzi().zzc(zzoVar.zzg()));
        }
        this.zzh.zzj().zzp().zza("Property filter result", boolZza == null ? Constants.ATTENDANCE_STATUS_NULL : boolZza);
        if (boolZza == null) {
            return false;
        }
        this.zzc = true;
        if (zZzh && !boolZza.booleanValue()) {
            return true;
        }
        if (!z || this.zzg.zzf()) {
            this.zzd = boolZza;
        }
        if (boolZza.booleanValue() && objArr2 != false && zzoVar.zzl()) {
            long jZzd = zzoVar.zzd();
            if (l != null) {
                jZzd = l.longValue();
            }
            if (objArr != false && this.zzg.zzf() && !this.zzg.zzg() && l2 != null) {
                jZzd = l2.longValue();
            }
            if (this.zzg.zzg()) {
                this.zzf = Long.valueOf(jZzd);
            } else {
                this.zze = Long.valueOf(jZzd);
            }
        }
        return true;
    }
}
