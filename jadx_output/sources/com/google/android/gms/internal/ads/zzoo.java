package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzoo implements zzox {
    public static final zzfuo zza = new zzfuo() { // from class: com.google.android.gms.internal.ads.zzom
        @Override // com.google.android.gms.internal.ads.zzfuo
        public final Object zza() {
            return zzoo.zzn();
        }
    };
    private static final Random zzb = new Random();
    private final zzbk zzc;
    private final zzbj zzd;
    private final HashMap zze;
    private zzow zzf;
    private zzbl zzg;
    private String zzh;
    private long zzi;

    public zzoo() {
        throw null;
    }

    public zzoo(zzfuo zzfuoVar) {
        this.zzc = new zzbk();
        this.zzd = new zzbj();
        this.zze = new HashMap();
        this.zzg = zzbl.zza;
        this.zzi = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzl() {
        zzon zzonVar = (zzon) this.zze.get(this.zzh);
        return (zzonVar == null || zzonVar.zzd == -1) ? this.zzi + 1 : zzonVar.zzd;
    }

    private final zzon zzm(int i, zzuy zzuyVar) {
        HashMap map = this.zze;
        long j = Long.MAX_VALUE;
        zzon zzonVar = null;
        for (zzon zzonVar2 : map.values()) {
            zzonVar2.zzg(i, zzuyVar);
            if (zzonVar2.zzj(i, zzuyVar)) {
                long j2 = zzonVar2.zzd;
                if (j2 == -1 || j2 < j) {
                    zzonVar = zzonVar2;
                    j = j2;
                } else if (j2 == j) {
                    int i2 = zzeu.zza;
                    if (zzonVar.zze != null && zzonVar2.zze != null) {
                        zzonVar = zzonVar2;
                    }
                }
            }
        }
        if (zzonVar != null) {
            return zzonVar;
        }
        String strZzn = zzn();
        zzon zzonVar3 = new zzon(this, strZzn, i, zzuyVar);
        map.put(strZzn, zzonVar3);
        return zzonVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzn() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private final void zzo(zzon zzonVar) {
        if (zzonVar.zzd != -1) {
            this.zzi = zzonVar.zzd;
        }
        this.zzh = null;
    }

    @RequiresNonNull({ServiceSpecificExtraArgs.CastExtraArgs.LISTENER})
    private final void zzp(zzmh zzmhVar) {
        if (zzmhVar.zzb.zzo()) {
            String str = this.zzh;
            if (str != null) {
                zzon zzonVar = (zzon) this.zze.get(str);
                zzonVar.getClass();
                zzo(zzonVar);
                return;
            }
            return;
        }
        zzon zzonVar2 = (zzon) this.zze.get(this.zzh);
        int i = zzmhVar.zzc;
        zzuy zzuyVar = zzmhVar.zzd;
        zzon zzonVarZzm = zzm(i, zzuyVar);
        this.zzh = zzonVarZzm.zzb;
        zzi(zzmhVar);
        if (zzuyVar == null || !zzuyVar.zzb()) {
            return;
        }
        if (zzonVar2 != null) {
            if (zzonVar2.zzd == zzuyVar.zzd && zzonVar2.zze != null && zzonVar2.zze.zzb == zzuyVar.zzb && zzonVar2.zze.zzc == zzuyVar.zzc) {
                return;
            }
        }
        String unused = zzm(i, new zzuy(zzuyVar.zza, zzuyVar.zzd)).zzb;
        String unused2 = zzonVarZzm.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final synchronized String zze() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final synchronized String zzf(zzbl zzblVar, zzuy zzuyVar) {
        return zzm(zzblVar.zzn(zzuyVar.zza, this.zzd).zzc, zzuyVar).zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final synchronized void zzg(zzmh zzmhVar) {
        zzow zzowVar;
        String str = this.zzh;
        if (str != null) {
            zzon zzonVar = (zzon) this.zze.get(str);
            if (zzonVar == null) {
                throw null;
            }
            zzo(zzonVar);
        }
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzon zzonVar2 = (zzon) it.next();
            it.remove();
            if (zzonVar2.zzf && (zzowVar = this.zzf) != null) {
                zzowVar.zzv(zzmhVar, zzonVar2.zzb, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final void zzh(zzow zzowVar) {
        this.zzf = zzowVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003b A[Catch: all -> 0x00b5, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x000f, B:10:0x0013, B:12:0x001d, B:14:0x0029, B:16:0x0033, B:18:0x003b, B:20:0x0045, B:23:0x004e, B:25:0x0054, B:27:0x0069, B:28:0x0085, B:30:0x008b, B:31:0x0091, B:33:0x009d, B:35:0x00a3, B:41:0x00b4), top: B:45:0x0001 }] */
    @Override // com.google.android.gms.internal.ads.zzox
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzi(com.google.android.gms.internal.ads.zzmh r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            com.google.android.gms.internal.ads.zzow r0 = r9.zzf     // Catch: java.lang.Throwable -> Lb5
            if (r0 == 0) goto Lb3
            com.google.android.gms.internal.ads.zzbl r0 = r10.zzb     // Catch: java.lang.Throwable -> Lb5
            boolean r1 = r0.zzo()     // Catch: java.lang.Throwable -> Lb5
            if (r1 == 0) goto Lf
            goto Lb1
        Lf:
            com.google.android.gms.internal.ads.zzuy r1 = r10.zzd     // Catch: java.lang.Throwable -> Lb5
            if (r1 == 0) goto L3b
            long r2 = r9.zzl()     // Catch: java.lang.Throwable -> Lb5
            long r4 = r1.zzd     // Catch: java.lang.Throwable -> Lb5
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 < 0) goto Lb1
            java.util.HashMap r2 = r9.zze     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r3 = r9.zzh     // Catch: java.lang.Throwable -> Lb5
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzon r2 = (com.google.android.gms.internal.ads.zzon) r2     // Catch: java.lang.Throwable -> Lb5
            if (r2 == 0) goto L3b
            long r3 = com.google.android.gms.internal.ads.zzon.zzb(r2)     // Catch: java.lang.Throwable -> Lb5
            r5 = -1
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 != 0) goto L3b
            int r2 = com.google.android.gms.internal.ads.zzon.zza(r2)     // Catch: java.lang.Throwable -> Lb5
            int r3 = r10.zzc     // Catch: java.lang.Throwable -> Lb5
            if (r2 != r3) goto Lb1
        L3b:
            int r2 = r10.zzc     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzon r3 = r9.zzm(r2, r1)     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r4 = r9.zzh     // Catch: java.lang.Throwable -> Lb5
            if (r4 != 0) goto L4b
            java.lang.String r4 = com.google.android.gms.internal.ads.zzon.zzd(r3)     // Catch: java.lang.Throwable -> Lb5
            r9.zzh = r4     // Catch: java.lang.Throwable -> Lb5
        L4b:
            r4 = 1
            if (r1 == 0) goto L85
            boolean r5 = r1.zzb()     // Catch: java.lang.Throwable -> Lb5
            if (r5 == 0) goto L85
            java.lang.Object r5 = r1.zza     // Catch: java.lang.Throwable -> Lb5
            long r6 = r1.zzd     // Catch: java.lang.Throwable -> Lb5
            int r1 = r1.zzb     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzuy r8 = new com.google.android.gms.internal.ads.zzuy     // Catch: java.lang.Throwable -> Lb5
            r8.<init>(r5, r6, r1)     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzon r2 = r9.zzm(r2, r8)     // Catch: java.lang.Throwable -> Lb5
            boolean r6 = com.google.android.gms.internal.ads.zzon.zzi(r2)     // Catch: java.lang.Throwable -> Lb5
            if (r6 != 0) goto L85
            com.google.android.gms.internal.ads.zzon.zzf(r2, r4)     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzbj r6 = r9.zzd     // Catch: java.lang.Throwable -> Lb5
            r0.zzn(r5, r6)     // Catch: java.lang.Throwable -> Lb5
            r6.zzg(r1)     // Catch: java.lang.Throwable -> Lb5
            r0 = 0
            long r5 = com.google.android.gms.internal.ads.zzeu.zzv(r0)     // Catch: java.lang.Throwable -> Lb5
            long r7 = com.google.android.gms.internal.ads.zzeu.zzv(r0)     // Catch: java.lang.Throwable -> Lb5
            long r5 = r5 + r7
            java.lang.Math.max(r0, r5)     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzon.zzd(r2)     // Catch: java.lang.Throwable -> Lb5
        L85:
            boolean r0 = com.google.android.gms.internal.ads.zzon.zzi(r3)     // Catch: java.lang.Throwable -> Lb5
            if (r0 != 0) goto L91
            com.google.android.gms.internal.ads.zzon.zzf(r3, r4)     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzon.zzd(r3)     // Catch: java.lang.Throwable -> Lb5
        L91:
            java.lang.String r0 = com.google.android.gms.internal.ads.zzon.zzd(r3)     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r1 = r9.zzh     // Catch: java.lang.Throwable -> Lb5
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lb5
            if (r0 == 0) goto Lb1
            boolean r0 = com.google.android.gms.internal.ads.zzon.zzh(r3)     // Catch: java.lang.Throwable -> Lb5
            if (r0 != 0) goto Lb1
            com.google.android.gms.internal.ads.zzon.zze(r3, r4)     // Catch: java.lang.Throwable -> Lb5
            com.google.android.gms.internal.ads.zzow r0 = r9.zzf     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r1 = com.google.android.gms.internal.ads.zzon.zzd(r3)     // Catch: java.lang.Throwable -> Lb5
            r0.zzu(r10, r1)     // Catch: java.lang.Throwable -> Lb5
            monitor-exit(r9)
            return
        Lb1:
            monitor-exit(r9)
            return
        Lb3:
            r10 = 0
            throw r10     // Catch: java.lang.Throwable -> Lb5
        Lb5:
            r10 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Lb5
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoo.zzi(com.google.android.gms.internal.ads.zzmh):void");
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final synchronized void zzj(zzmh zzmhVar, int i) {
        if (this.zzf == null) {
            throw null;
        }
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzon zzonVar = (zzon) it.next();
            if (zzonVar.zzk(zzmhVar)) {
                it.remove();
                if (zzonVar.zzf) {
                    boolean zEquals = zzonVar.zzb.equals(this.zzh);
                    boolean z = false;
                    if (i == 0 && zEquals && zzonVar.zzg) {
                        z = true;
                    }
                    if (zEquals) {
                        zzo(zzonVar);
                    }
                    this.zzf.zzv(zzmhVar, zzonVar.zzb, z);
                }
            }
        }
        zzp(zzmhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final synchronized void zzk(zzmh zzmhVar) {
        if (this.zzf == null) {
            throw null;
        }
        zzbl zzblVar = this.zzg;
        this.zzg = zzmhVar.zzb;
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzon zzonVar = (zzon) it.next();
            if (!zzonVar.zzl(zzblVar, this.zzg) || zzonVar.zzk(zzmhVar)) {
                it.remove();
                if (zzonVar.zzf) {
                    if (zzonVar.zzb.equals(this.zzh)) {
                        zzo(zzonVar);
                    }
                    this.zzf.zzv(zzmhVar, zzonVar.zzb, false);
                }
            }
        }
        zzp(zzmhVar);
    }
}
