package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzqn;
import com.google.android.gms.internal.measurement.zzrq;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlf extends zznr {
    private static String zza(String str, String str2) {
        throw new SecurityException("This implementation should not be used.");
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }

    public zzlf(zznv zznvVar) {
        super(zznvVar);
    }

    public final byte[] zza(zzbh zzbhVar, String str) {
        zzom next;
        zzgn.zzk.zza zzaVar;
        Bundle bundle;
        zzgn.zzj.zza zzaVar2;
        zzh zzhVar;
        byte[] bArr;
        long j;
        zzbd zzbdVarZza;
        zzt();
        this.zzu.zzy();
        Preconditions.checkNotNull(zzbhVar);
        Preconditions.checkNotEmpty(str);
        if (!zze().zze(str, zzbj.zzbk)) {
            zzj().zzc().zza("Generating ScionPayload disabled. packageName", str);
            return new byte[0];
        }
        if (!"_iap".equals(zzbhVar.zza) && !"_iapx".equals(zzbhVar.zza)) {
            zzj().zzc().zza("Generating a payload for this event is not available. package_name, event_name", str, zzbhVar.zza);
            return null;
        }
        zzgn.zzj.zza zzaVarZzb = zzgn.zzj.zzb();
        zzh().zzp();
        try {
            zzh zzhVarZze = zzh().zze(str);
            if (zzhVarZze == null) {
                zzj().zzc().zza("Log and bundle not available. package_name", str);
                return new byte[0];
            }
            if (!zzhVarZze.zzar()) {
                zzj().zzc().zza("Log and bundle disabled. package_name", str);
                return new byte[0];
            }
            zzgn.zzk.zza zzaVarZzp = zzgn.zzk.zzw().zzh(1).zzp("android");
            if (!TextUtils.isEmpty(zzhVarZze.zzac())) {
                zzaVarZzp.zzb(zzhVarZze.zzac());
            }
            if (!TextUtils.isEmpty(zzhVarZze.zzae())) {
                zzaVarZzp.zzd((String) Preconditions.checkNotNull(zzhVarZze.zzae()));
            }
            if (!TextUtils.isEmpty(zzhVarZze.zzaf())) {
                zzaVarZzp.zze((String) Preconditions.checkNotNull(zzhVarZze.zzaf()));
            }
            if (zzhVarZze.zze() != -2147483648L) {
                zzaVarZzp.zze((int) zzhVarZze.zze());
            }
            zzaVarZzp.zzf(zzhVarZze.zzq()).zzd(zzhVarZze.zzo());
            String strZzah = zzhVarZze.zzah();
            String strZzaa = zzhVarZze.zzaa();
            if (!TextUtils.isEmpty(strZzah)) {
                zzaVarZzp.zzm(strZzah);
            } else if (!TextUtils.isEmpty(strZzaa)) {
                zzaVarZzp.zza(strZzaa);
            }
            zzaVarZzp.zzj(zzhVarZze.zzw());
            zzjc zzjcVarZzb = this.zzg.zzb(str);
            zzaVarZzp.zzc(zzhVarZze.zzn());
            if (this.zzu.zzac() && zze().zzj(zzaVarZzp.zzt()) && zzjcVarZzb.zzi() && !TextUtils.isEmpty(null)) {
                zzaVarZzp.zzj((String) null);
            }
            zzaVarZzp.zzg(zzjcVarZzb.zzg());
            if (zzjcVarZzb.zzi() && zzhVarZze.zzaq()) {
                Pair<String, Boolean> pairZza = zzn().zza(zzhVarZze.zzac(), zzjcVarZzb);
                if (zzhVarZze.zzaq() && pairZza != null && !TextUtils.isEmpty((CharSequence) pairZza.first)) {
                    zzaVarZzp.zzq(zza((String) pairZza.first, Long.toString(zzbhVar.zzd)));
                    if (pairZza.second != null) {
                        zzaVarZzp.zzc(((Boolean) pairZza.second).booleanValue());
                    }
                }
            }
            zzf().zzac();
            zzgn.zzk.zza zzaVarZzi = zzaVarZzp.zzi(Build.MODEL);
            zzf().zzac();
            zzaVarZzi.zzo(Build.VERSION.RELEASE).zzj((int) zzf().zzg()).zzs(zzf().zzh());
            if (zzjcVarZzb.zzj() && zzhVarZze.zzad() != null) {
                zzaVarZzp.zzc(zza((String) Preconditions.checkNotNull(zzhVarZze.zzad()), Long.toString(zzbhVar.zzd)));
            }
            if (!TextUtils.isEmpty(zzhVarZze.zzag())) {
                zzaVarZzp.zzl((String) Preconditions.checkNotNull(zzhVarZze.zzag()));
            }
            String strZzac = zzhVarZze.zzac();
            List<zzom> listZzl = zzh().zzl(strZzac);
            Iterator<zzom> it = listZzl.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if ("_lte".equals(next.zzc)) {
                    break;
                }
            }
            if (next == null || next.zze == null) {
                zzom zzomVar = new zzom(strZzac, "auto", "_lte", zzb().currentTimeMillis(), 0L);
                listZzl.add(zzomVar);
                zzh().zza(zzomVar);
            }
            zzgn.zzo[] zzoVarArr = new zzgn.zzo[listZzl.size()];
            for (int i = 0; i < listZzl.size(); i++) {
                zzgn.zzo.zza zzaVarZzb2 = zzgn.zzo.zze().zza(listZzl.get(i).zzc).zzb(listZzl.get(i).zzd);
                mo158g_().zza(zzaVarZzb2, listZzl.get(i).zze);
                zzoVarArr[i] = (zzgn.zzo) ((com.google.android.gms.internal.measurement.zzlc) zzaVarZzb2.zzai());
            }
            zzaVarZzp.zze(Arrays.asList(zzoVarArr));
            mo158g_().zza(zzaVarZzp);
            this.zzg.zza(zzhVarZze, zzaVarZzp);
            if (zzqn.zza() && zze().zza(zzbj.zzct)) {
                this.zzg.zzb(zzhVarZze, zzaVarZzp);
            }
            zzgm zzgmVarZza = zzgm.zza(zzbhVar);
            zzq().zza(zzgmVarZza.zzd, zzh().zzd(str));
            zzq().zza(zzgmVarZza, zze().zzb(str));
            Bundle bundle2 = zzgmVarZza.zzd;
            bundle2.putLong("_c", 1L);
            zzj().zzc().zza("Marking in-app purchase as real-time");
            bundle2.putLong("_r", 1L);
            bundle2.putString("_o", zzbhVar.zzc);
            if (zzq().zzd(zzaVarZzp.zzt(), zzhVarZze.zzam())) {
                zzq().zza(bundle2, "_dbg", (Object) 1L);
                zzq().zza(bundle2, "_r", (Object) 1L);
            }
            zzbd zzbdVarZzd = zzh().zzd(str, zzbhVar.zza);
            if (zzbdVarZzd == null) {
                zzaVar = zzaVarZzp;
                bundle = bundle2;
                zzaVar2 = zzaVarZzb;
                zzhVar = zzhVarZze;
                bArr = null;
                zzbdVarZza = new zzbd(str, zzbhVar.zza, 0L, 0L, zzbhVar.zzd, 0L, null, null, null, null);
                j = 0;
            } else {
                zzaVar = zzaVarZzp;
                bundle = bundle2;
                zzaVar2 = zzaVarZzb;
                zzhVar = zzhVarZze;
                bArr = null;
                j = zzbdVarZzd.zzf;
                zzbdVarZza = zzbdVarZzd.zza(zzbhVar.zzd);
            }
            zzh().zza(zzbdVarZza);
            zzba zzbaVar = new zzba(this.zzu, zzbhVar.zzc, str, zzbhVar.zza, zzbhVar.zzd, j, bundle);
            zzgn.zzf.zza zzaVarZza = zzgn.zzf.zze().zzb(zzbaVar.zzd).zza(zzbaVar.zzb).zza(zzbaVar.zze);
            for (String str2 : zzbaVar.zzf) {
                zzgn.zzh.zza zzaVarZza2 = zzgn.zzh.zze().zza(str2);
                Object objZzc = zzbaVar.zzf.zzc(str2);
                if (objZzc != null) {
                    mo158g_().zza(zzaVarZza2, objZzc);
                    zzaVarZza.zza(zzaVarZza2);
                }
            }
            zzgn.zzk.zza zzaVar3 = zzaVar;
            zzaVar3.zza(zzaVarZza).zza(zzgn.zzl.zza().zza(zzgn.zzg.zza().zza(zzbdVarZza.zzc).zza(zzbhVar.zza)));
            zzaVar3.zza(zzg().zza(zzhVar.zzac(), Collections.emptyList(), zzaVar3.zzab(), Long.valueOf(zzaVarZza.zzc()), Long.valueOf(zzaVarZza.zzc())));
            if (zzaVarZza.zzg()) {
                zzaVar3.zzi(zzaVarZza.zzc()).zze(zzaVarZza.zzc());
            }
            long jZzs = zzhVar.zzs();
            if (jZzs != 0) {
                zzaVar3.zzg(jZzs);
            }
            long jZzu = zzhVar.zzu();
            if (jZzu != 0) {
                zzaVar3.zzh(jZzu);
            } else if (jZzs != 0) {
                zzaVar3.zzh(jZzs);
            }
            String strZzal = zzhVar.zzal();
            if (zzrq.zza() && zze().zze(str, zzbj.zzbv) && strZzal != null) {
                zzaVar3.zzr(strZzal);
            }
            zzhVar.zzap();
            zzaVar3.zzf((int) zzhVar.zzt()).zzl(102001L).zzk(zzb().currentTimeMillis()).zzd(Boolean.TRUE.booleanValue());
            this.zzg.zza(zzaVar3.zzt(), zzaVar3);
            zzgn.zzj.zza zzaVar4 = zzaVar2;
            zzaVar4.zza(zzaVar3);
            zzh zzhVar2 = zzhVar;
            zzhVar2.zzr(zzaVar3.zzf());
            zzhVar2.zzp(zzaVar3.zze());
            zzh().zza(zzhVar2, false, false);
            zzh().zzw();
            try {
                return mo158g_().zzb(((zzgn.zzj) ((com.google.android.gms.internal.measurement.zzlc) zzaVar4.zzai())).zzca());
            } catch (IOException e) {
                zzj().zzg().zza("Data loss. Failed to bundle and serialize. appId", zzgi.zza(str), e);
                return bArr;
            }
        } catch (SecurityException e2) {
            zzj().zzc().zza("app instance id encryption failed", e2.getMessage());
            return new byte[0];
        } catch (SecurityException e3) {
            zzj().zzc().zza("Resettable device id encryption failed", e3.getMessage());
            return new byte[0];
        } finally {
            zzh().zzu();
        }
    }
}
