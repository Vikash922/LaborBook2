package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznz extends zznx<zznw, zznw> {
    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ int zza(zznw zznwVar) {
        return zznwVar.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final boolean zza(zzna zznaVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ int zzb(zznw zznwVar) {
        return zznwVar.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ zznw zzc(Object obj) {
        zznw zznwVar = ((zzlc) obj).zzb;
        if (zznwVar != zznw.zzc()) {
            return zznwVar;
        }
        zznw zznwVarZzd = zznw.zzd();
        zza(obj, zznwVarZzd);
        return zznwVarZzd;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ zznw zzd(Object obj) {
        return ((zzlc) obj).zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ zznw zza(zznw zznwVar, zznw zznwVar2) {
        zznw zznwVar3 = zznwVar;
        zznw zznwVar4 = zznwVar2;
        if (zznw.zzc().equals(zznwVar4)) {
            return zznwVar3;
        }
        if (zznw.zzc().equals(zznwVar3)) {
            return zznw.zza(zznwVar3, zznwVar4);
        }
        return zznwVar3.zza(zznwVar4);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ zznw zza() {
        return zznw.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ zznw zze(zznw zznwVar) {
        zznw zznwVar2 = zznwVar;
        zznwVar2.zze();
        return zznwVar2;
    }

    zznz() {
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zza(zznw zznwVar, int i, int i2) {
        zznwVar.zza((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zza(zznw zznwVar, int i, long j) {
        zznwVar.zza((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zza(zznw zznwVar, int i, zznw zznwVar2) {
        zznwVar.zza((i << 3) | 3, zznwVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zza(zznw zznwVar, int i, zzjs zzjsVar) {
        zznwVar.zza((i << 3) | 2, zzjsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zzb(zznw zznwVar, int i, long j) {
        zznwVar.zza(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final void zzf(Object obj) {
        ((zzlc) obj).zzb.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zzb(Object obj, zznw zznwVar) {
        zza(obj, zznwVar);
    }

    private static void zza(Object obj, zznw zznwVar) {
        ((zzlc) obj).zzb = zznwVar;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zzc(Object obj, zznw zznwVar) {
        zza(obj, zznwVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zza(zznw zznwVar, zzos zzosVar) throws IOException {
        zznwVar.zza(zzosVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    final /* synthetic */ void zzb(zznw zznwVar, zzos zzosVar) throws IOException {
        zznwVar.zzb(zzosVar);
    }
}
