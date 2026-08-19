package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzgn;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzz {
    private zzgn.zzf zza;
    private Long zzb;
    private long zzc;
    private final /* synthetic */ zzv zzd;

    final zzgn.zzf zza(String str, zzgn.zzf zzfVar) {
        String strZzg = zzfVar.zzg();
        List<zzgn.zzh> listZzh = zzfVar.zzh();
        this.zzd.mo158g_();
        Long l = (Long) zzol.zzb(zzfVar, "_eid");
        boolean z = l != null;
        if (z && strZzg.equals("_ep")) {
            Preconditions.checkNotNull(l);
            this.zzd.mo158g_();
            strZzg = (String) zzol.zzb(zzfVar, "_en");
            if (TextUtils.isEmpty(strZzg)) {
                this.zzd.zzj().zzm().zza("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.zza == null || this.zzb == null || l.longValue() != this.zzb.longValue()) {
                Pair<zzgn.zzf, Long> pairZza = this.zzd.zzh().zza(str, l);
                if (pairZza == null || pairZza.first == null) {
                    this.zzd.zzj().zzm().zza("Extra parameter without existing main event. eventName, eventId", strZzg, l);
                    return null;
                }
                this.zza = (zzgn.zzf) pairZza.first;
                this.zzc = ((Long) pairZza.second).longValue();
                this.zzd.mo158g_();
                this.zzb = (Long) zzol.zzb(this.zza, "_eid");
            }
            long j = this.zzc - 1;
            this.zzc = j;
            if (j <= 0) {
                zzam zzamVarZzh = this.zzd.zzh();
                zzamVarZzh.zzt();
                zzamVarZzh.zzj().zzp().zza("Clearing complex main event info. appId", str);
                try {
                    zzamVarZzh.m156e_().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e) {
                    zzamVarZzh.zzj().zzg().zza("Error clearing complex main event", e);
                }
            } else {
                this.zzd.zzh().zza(str, l, this.zzc, this.zza);
            }
            ArrayList arrayList = new ArrayList();
            for (zzgn.zzh zzhVar : this.zza.zzh()) {
                this.zzd.mo158g_();
                if (zzol.zza(zzfVar, zzhVar.zzg()) == null) {
                    arrayList.add(zzhVar);
                }
            }
            if (arrayList.isEmpty()) {
                this.zzd.zzj().zzm().zza("No unique parameters in main event. eventName", strZzg);
            } else {
                arrayList.addAll(listZzh);
                listZzh = arrayList;
            }
        } else if (z) {
            this.zzb = l;
            this.zza = zzfVar;
            this.zzd.mo158g_();
            long jLongValue = ((Long) zzol.zza(zzfVar, "_epc", (Object) 0L)).longValue();
            this.zzc = jLongValue;
            if (jLongValue <= 0) {
                this.zzd.zzj().zzm().zza("Complex event with zero extra param count. eventName", strZzg);
            } else {
                this.zzd.zzh().zza(str, (Long) Preconditions.checkNotNull(l), this.zzc, zzfVar);
            }
        }
        return (zzgn.zzf) ((com.google.android.gms.internal.measurement.zzlc) zzfVar.zzcd().zza(strZzg).zzd().zza(listZzh).zzai());
    }

    private zzz(zzv zzvVar) {
        this.zzd = zzvVar;
    }
}
