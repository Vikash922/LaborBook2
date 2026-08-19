package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdty {
    private final zzdti zza;
    private final zzdor zzb;
    private final Object zzc = new Object();
    private final List zzd = new ArrayList();
    private boolean zze;

    zzdty(zzdti zzdtiVar, zzdor zzdorVar) {
        this.zza = zzdtiVar;
        this.zzb = zzdorVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(List list) {
        zzdoq zzdoqVarZza;
        zzdoq zzdoqVarZza2;
        zzbrm zzbrmVar;
        synchronized (this.zzc) {
            if (this.zze) {
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzblh zzblhVar = (zzblh) it.next();
                String string = (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzju)).booleanValue() || (zzdoqVarZza2 = this.zzb.zza(zzblhVar.zza)) == null || (zzbrmVar = zzdoqVarZza2.zzc) == null) ? "" : zzbrmVar.toString();
                String str = string;
                boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjv)).booleanValue() && (zzdoqVarZza = this.zzb.zza(zzblhVar.zza)) != null && zzdoqVarZza.zzd;
                List list2 = this.zzd;
                String str2 = zzblhVar.zza;
                list2.add(new zzdtx(str2, str, this.zzb.zzb(str2), zzblhVar.zzb ? 1 : 0, zzblhVar.zzd, zzblhVar.zzc, z));
            }
            this.zze = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002d A[Catch: all -> 0x003d, LOOP:0: B:13:0x0027->B:15:0x002d, LOOP_END, TryCatch #0 {, blocks: (B:4:0x0008, B:6:0x000c, B:8:0x0014, B:9:0x001c, B:10:0x001f, B:12:0x0021, B:13:0x0027, B:15:0x002d, B:16:0x003b), top: B:21:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONArray zza() throws org.json.JSONException {
        /*
            r4 = this;
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>()
            java.lang.Object r1 = r4.zzc
            monitor-enter(r1)
            boolean r2 = r4.zze     // Catch: java.lang.Throwable -> L3d
            if (r2 != 0) goto L21
            com.google.android.gms.internal.ads.zzdti r2 = r4.zza     // Catch: java.lang.Throwable -> L3d
            boolean r3 = r2.zzt()     // Catch: java.lang.Throwable -> L3d
            if (r3 == 0) goto L1c
            java.util.List r2 = r2.zzg()     // Catch: java.lang.Throwable -> L3d
            r4.zzd(r2)     // Catch: java.lang.Throwable -> L3d
            goto L21
        L1c:
            r4.zzc()     // Catch: java.lang.Throwable -> L3d
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3d
            goto L3c
        L21:
            java.util.List r2 = r4.zzd     // Catch: java.lang.Throwable -> L3d
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L3d
        L27:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L3d
            if (r3 == 0) goto L3b
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L3d
            com.google.android.gms.internal.ads.zzdtx r3 = (com.google.android.gms.internal.ads.zzdtx) r3     // Catch: java.lang.Throwable -> L3d
            org.json.JSONObject r3 = r3.zza()     // Catch: java.lang.Throwable -> L3d
            r0.put(r3)     // Catch: java.lang.Throwable -> L3d
            goto L27
        L3b:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3d
        L3c:
            return r0
        L3d:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L3d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdty.zza():org.json.JSONArray");
    }

    public final void zzc() {
        this.zza.zzs(new zzdtw(this));
    }
}
