package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzecs implements zzdfm {
    private final VersionInfoParcel zza;
    private final ListenableFuture zzb;
    private final zzfau zzc;
    private final zzcel zzd;
    private final zzfbp zze;
    private final zzbjm zzf;
    private final boolean zzg;
    private final zzebe zzh;
    private final zzdre zzi;

    zzecs(VersionInfoParcel versionInfoParcel, ListenableFuture listenableFuture, zzfau zzfauVar, zzcel zzcelVar, zzfbp zzfbpVar, boolean z, zzbjm zzbjmVar, zzebe zzebeVar, zzdre zzdreVar) {
        this.zza = versionInfoParcel;
        this.zzb = listenableFuture;
        this.zzc = zzfauVar;
        this.zzd = zzcelVar;
        this.zze = zzfbpVar;
        this.zzg = z;
        this.zzf = zzbjmVar;
        this.zzh = zzebeVar;
        this.zzi = zzdreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final zzfau zza() {
        return this.zzc;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    @Override // com.google.android.gms.internal.ads.zzdfm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(boolean r27, android.content.Context r28, com.google.android.gms.internal.ads.zzcvp r29) {
        /*
            r26 = this;
            r0 = r26
            com.google.common.util.concurrent.ListenableFuture r1 = r0.zzb
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzgbs.zzq(r1)
            com.google.android.gms.internal.ads.zzcnk r1 = (com.google.android.gms.internal.ads.zzcnk) r1
            com.google.android.gms.internal.ads.zzcel r6 = r0.zzd
            r15 = 1
            r6.zzaq(r15)
            com.google.android.gms.ads.internal.zzl r10 = new com.google.android.gms.ads.internal.zzl
            boolean r2 = r0.zzg
            if (r2 == 0) goto L1f
            com.google.android.gms.internal.ads.zzbjm r3 = r0.zzf
            boolean r3 = r3.zze(r15)
            r17 = r3
            goto L21
        L1f:
            r17 = r15
        L21:
            if (r2 == 0) goto L2a
            com.google.android.gms.internal.ads.zzbjm r3 = r0.zzf
            boolean r3 = r3.zzd()
            goto L2b
        L2a:
            r3 = 0
        L2b:
            r19 = r3
            if (r2 == 0) goto L36
            com.google.android.gms.internal.ads.zzbjm r2 = r0.zzf
            float r2 = r2.zza()
            goto L37
        L36:
            r2 = 0
        L37:
            r20 = r2
            com.google.android.gms.internal.ads.zzfau r2 = r0.zzc
            boolean r3 = r2.zzO
            r24 = 0
            r18 = 1
            r21 = -1
            r16 = r10
            r22 = r27
            r23 = r3
            r16.<init>(r17, r18, r19, r20, r21, r22, r23, r24)
            if (r29 == 0) goto L51
            r29.zzf()
        L51:
            com.google.android.gms.ads.internal.zzv.zzj()
            com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r14 = new com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel
            com.google.android.gms.internal.ads.zzdfb r4 = r1.zzg()
            int r1 = r2.zzQ
            r3 = -1
            if (r1 == r3) goto L60
            goto L78
        L60:
            com.google.android.gms.internal.ads.zzfbp r3 = r0.zze
            com.google.android.gms.ads.internal.client.zzx r3 = r3.zzj
            if (r3 == 0) goto L71
            int r3 = r3.zza
            if (r3 != r15) goto L6c
            r1 = 7
            goto L78
        L6c:
            r5 = 2
            if (r3 != r5) goto L71
            r1 = 6
            goto L78
        L71:
            int r3 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r3 = "Error setting app open orientation; no targeting orientation available."
            com.google.android.gms.ads.internal.util.client.zzo.zze(r3)
        L78:
            r7 = r1
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r8 = r0.zza
            java.lang.String r9 = r2.zzB
            com.google.android.gms.internal.ads.zzfaz r1 = r2.zzs
            java.lang.String r11 = r1.zzb
            java.lang.String r12 = r1.zza
            com.google.android.gms.internal.ads.zzfbp r1 = r0.zze
            boolean r2 = r2.zzb()
            if (r2 == 0) goto L8e
            com.google.android.gms.internal.ads.zzebe r2 = r0.zzh
            goto L8f
        L8e:
            r2 = 0
        L8f:
            r16 = r2
            java.lang.String r13 = r1.zzf
            java.lang.String r1 = r6.zzr()
            r3 = 0
            r5 = 0
            r2 = r14
            r25 = r14
            r14 = r29
            r15 = r16
            r16 = r1
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            com.google.android.gms.internal.ads.zzdre r1 = r0.zzi
            r2 = r28
            r3 = r25
            r4 = 1
            com.google.android.gms.ads.internal.overlay.zzn.zza(r2, r3, r4, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzecs.zzb(boolean, android.content.Context, com.google.android.gms.internal.ads.zzcvp):void");
    }
}
