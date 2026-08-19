package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeff {
    private final zzgcm zzc;
    private zzefv zzf;
    private final String zzh;
    private final int zzi;
    private final zzefu zzj;
    private zzfau zzk;
    private final Map zza = new HashMap();
    private final List zzb = new ArrayList();
    private final List zzd = new ArrayList();
    private final Set zze = new HashSet();
    private int zzg = Integer.MAX_VALUE;
    private boolean zzl = false;

    zzeff(zzfbg zzfbgVar, zzefu zzefuVar, zzgcm zzgcmVar) {
        this.zzi = zzfbgVar.zzb.zzb.zzr;
        this.zzj = zzefuVar;
        this.zzc = zzgcmVar;
        this.zzh = zzegb.zzc(zzfbgVar);
        List list = zzfbgVar.zzb.zza;
        for (int i = 0; i < list.size(); i++) {
            this.zza.put((zzfau) list.get(i), Integer.valueOf(i));
        }
        this.zzb.addAll(list);
    }

    private final synchronized void zze() {
        this.zzj.zzi(this.zzk);
        zzefv zzefvVar = this.zzf;
        if (zzefvVar != null) {
            this.zzc.zzc(zzefvVar);
        } else {
            this.zzc.zzd(new zzefy(3, this.zzh));
        }
    }

    private final synchronized boolean zzf(boolean z) {
        for (zzfau zzfauVar : this.zzb) {
            Integer num = (Integer) this.zza.get(zzfauVar);
            Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
            if (z || !this.zze.contains(zzfauVar.zzat)) {
                if (numValueOf.intValue() < this.zzg) {
                    return true;
                }
                if (numValueOf.intValue() > this.zzg) {
                    break;
                }
            }
        }
        return false;
    }

    private final synchronized boolean zzg() {
        Iterator it = this.zzd.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) this.zza.get((zzfau) it.next());
            if (Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE).intValue() < this.zzg) {
                return true;
            }
        }
        return false;
    }

    private final synchronized boolean zzh() {
        if (!zzf(true)) {
            if (!zzg()) {
                return false;
            }
        }
        return true;
    }

    private final synchronized boolean zzi() {
        if (this.zzl) {
            return false;
        }
        List list = this.zzb;
        if (!list.isEmpty() && ((zzfau) list.get(0)).zzav && !this.zzd.isEmpty()) {
            return false;
        }
        if (!zzd()) {
            List list2 = this.zzd;
            if (list2.size() < this.zzi) {
                if (zzf(false)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
    
        if (r2.zzav == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        r6.zzl = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if (android.text.TextUtils.isEmpty(r3) != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r4.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        r6.zzd.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003f, code lost:
    
        return (com.google.android.gms.internal.ads.zzfau) r1.remove(r0);
     */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final synchronized com.google.android.gms.internal.ads.zzfau zza() {
        /*
            r6 = this;
            monitor-enter(r6)
            boolean r0 = r6.zzi()     // Catch: java.lang.Throwable -> L43
            if (r0 == 0) goto L40
            r0 = 0
        L8:
            java.util.List r1 = r6.zzb     // Catch: java.lang.Throwable -> L43
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L43
            if (r0 >= r2) goto L40
            java.lang.Object r2 = r1.get(r0)     // Catch: java.lang.Throwable -> L43
            com.google.android.gms.internal.ads.zzfau r2 = (com.google.android.gms.internal.ads.zzfau) r2     // Catch: java.lang.Throwable -> L43
            java.lang.String r3 = r2.zzat     // Catch: java.lang.Throwable -> L43
            java.util.Set r4 = r6.zze     // Catch: java.lang.Throwable -> L43
            boolean r5 = r4.contains(r3)     // Catch: java.lang.Throwable -> L43
            if (r5 == 0) goto L23
            int r0 = r0 + 1
            goto L8
        L23:
            boolean r5 = r2.zzav     // Catch: java.lang.Throwable -> L43
            if (r5 == 0) goto L2a
            r5 = 1
            r6.zzl = r5     // Catch: java.lang.Throwable -> L43
        L2a:
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L43
            if (r5 != 0) goto L33
            r4.add(r3)     // Catch: java.lang.Throwable -> L43
        L33:
            java.util.List r3 = r6.zzd     // Catch: java.lang.Throwable -> L43
            r3.add(r2)     // Catch: java.lang.Throwable -> L43
            java.lang.Object r0 = r1.remove(r0)     // Catch: java.lang.Throwable -> L43
            com.google.android.gms.internal.ads.zzfau r0 = (com.google.android.gms.internal.ads.zzfau) r0     // Catch: java.lang.Throwable -> L43
            monitor-exit(r6)
            return r0
        L40:
            monitor-exit(r6)
            r0 = 0
            return r0
        L43:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L43
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeff.zza():com.google.android.gms.internal.ads.zzfau");
    }

    final synchronized void zzb(Throwable th, zzfau zzfauVar) {
        this.zzl = false;
        this.zzd.remove(zzfauVar);
        this.zze.remove(zzfauVar.zzat);
        if (zzd() || zzh()) {
            return;
        }
        zze();
    }

    final synchronized void zzc(zzefv zzefvVar, zzfau zzfauVar) {
        this.zzl = false;
        this.zzd.remove(zzfauVar);
        if (zzd()) {
            zzefvVar.zzq();
            return;
        }
        Integer num = (Integer) this.zza.get(zzfauVar);
        Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
        if (numValueOf.intValue() > this.zzg) {
            this.zzj.zzm(zzfauVar);
            return;
        }
        if (this.zzf != null) {
            this.zzj.zzm(this.zzk);
        }
        this.zzg = numValueOf.intValue();
        this.zzf = zzefvVar;
        this.zzk = zzfauVar;
        if (zzh()) {
            return;
        }
        zze();
    }

    final synchronized boolean zzd() {
        return this.zzc.isDone();
    }
}
