package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzejz extends com.google.android.gms.ads.internal.client.zzbw {
    private final com.google.android.gms.ads.internal.client.zzr zza;
    private final Context zzb;
    private final zzeyx zzc;
    private final String zzd;
    private final VersionInfoParcel zze;
    private final zzejr zzf;
    private final zzezx zzg;
    private final zzauy zzh;
    private final zzdre zzi;
    private zzdea zzj;
    private boolean zzk = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzaS)).booleanValue();

    public zzejz(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzeyx zzeyxVar, zzejr zzejrVar, zzezx zzezxVar, VersionInfoParcel versionInfoParcel, zzauy zzauyVar, zzdre zzdreVar) {
        this.zza = zzrVar;
        this.zzd = str;
        this.zzb = context;
        this.zzc = zzeyxVar;
        this.zzf = zzejrVar;
        this.zzg = zzezxVar;
        this.zze = versionInfoParcel;
        this.zzh = zzauyVar;
        this.zzi = zzdreVar;
    }

    private final synchronized boolean zze() {
        zzdea zzdeaVar = this.zzj;
        if (zzdeaVar != null) {
            if (!zzdeaVar.zza()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzA() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzB() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
        zzdea zzdeaVar = this.zzj;
        if (zzdeaVar != null) {
            zzdeaVar.zzm().zzc(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzC(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzD(com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
        Preconditions.checkMainThread("setAdListener must be called on the main UI thread.");
        this.zzf.zzj(zzbkVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzE(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
        Preconditions.checkMainThread("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzF(com.google.android.gms.ads.internal.client.zzr zzrVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzG(com.google.android.gms.ads.internal.client.zzcl zzclVar) {
        Preconditions.checkMainThread("setAppEventListener must be called on the main UI thread.");
        this.zzf.zzm(zzclVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzH(zzbad zzbadVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzI(com.google.android.gms.ads.internal.client.zzx zzxVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzJ(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.zzf.zzn(zzcsVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzK(com.google.android.gms.ads.internal.client.zzee zzeeVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzL(boolean z) {
        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
        this.zzk = z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzM(zzbth zzbthVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzN(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzO(zzbdd zzbddVar) {
        Preconditions.checkMainThread("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzc.zzi(zzbddVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzP(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        Preconditions.checkMainThread("setPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdqVar.zzf()) {
                this.zzi.zze();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzf.zzl(zzdqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzQ(zzbtk zzbtkVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzS(zzbvq zzbvqVar) {
        this.zzg.zzm(zzbvqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzU(com.google.android.gms.ads.internal.client.zzfw zzfwVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzW(IObjectWrapper iObjectWrapper) {
        if (this.zzj == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Interstitial can not be shown before loaded.");
            this.zzf.zzr(zzfcq.zzd(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzda)).booleanValue()) {
                this.zzh.zzc().zzn(new Throwable().getStackTrace());
            }
            this.zzj.zzc(this.zzk, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzX() {
        Preconditions.checkMainThread("showInterstitial must be called on the main UI thread.");
        if (this.zzj == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Interstitial can not be shown before loaded.");
            this.zzf.zzr(zzfcq.zzd(9, null, null));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzda)).booleanValue()) {
                this.zzh.zzc().zzn(new Throwable().getStackTrace());
            }
            this.zzj.zzc(this.zzk, null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzY() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzZ() {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized boolean zzaa() {
        Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
        return zze();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.google.android.gms.ads.internal.client.zzbx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean zzab(com.google.android.gms.ads.internal.client.zzm r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = r6.zzb()     // Catch: java.lang.Throwable -> L92
            r1 = 0
            if (r0 == 0) goto L9
            goto L49
        L9:
            com.google.android.gms.internal.ads.zzbds r0 = com.google.android.gms.internal.ads.zzbeg.zzi     // Catch: java.lang.Throwable -> L92
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L92
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L92
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L92
            if (r0 == 0) goto L2b
            com.google.android.gms.internal.ads.zzbbz r0 = com.google.android.gms.internal.ads.zzbci.zzlm     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzbcg r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L92
            java.lang.Object r0 = r2.zzb(r0)     // Catch: java.lang.Throwable -> L92
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L92
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L92
            if (r0 == 0) goto L2b
            r0 = 1
            goto L2c
        L2b:
            r0 = r1
        L2c:
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r2 = r5.zze     // Catch: java.lang.Throwable -> L92
            int r2 = r2.clientJarVersion     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzbbz r3 = com.google.android.gms.internal.ads.zzbci.zzln     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzbcg r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L92
            java.lang.Object r3 = r4.zzb(r3)     // Catch: java.lang.Throwable -> L92
            java.lang.Integer r3 = (java.lang.Integer) r3     // Catch: java.lang.Throwable -> L92
            int r3 = r3.intValue()     // Catch: java.lang.Throwable -> L92
            if (r2 < r3) goto L44
            if (r0 != 0) goto L49
        L44:
            java.lang.String r0 = "loadAd must be called on the main UI thread."
            com.google.android.gms.common.internal.Preconditions.checkMainThread(r0)     // Catch: java.lang.Throwable -> L92
        L49:
            com.google.android.gms.ads.internal.zzv.zzq()     // Catch: java.lang.Throwable -> L92
            android.content.Context r0 = r5.zzb     // Catch: java.lang.Throwable -> L92
            boolean r2 = com.google.android.gms.ads.internal.util.zzs.zzI(r0)     // Catch: java.lang.Throwable -> L92
            r3 = 0
            if (r2 == 0) goto L6d
            com.google.android.gms.ads.internal.client.zzc r2 = r6.zzs     // Catch: java.lang.Throwable -> L92
            if (r2 != 0) goto L6d
            int r6 = com.google.android.gms.ads.internal.util.zze.zza     // Catch: java.lang.Throwable -> L92
            java.lang.String r6 = "Failed to load the ad because app ID is missing."
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r6)     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzejr r6 = r5.zzf     // Catch: java.lang.Throwable -> L92
            if (r6 == 0) goto L90
            r0 = 4
            com.google.android.gms.ads.internal.client.zze r0 = com.google.android.gms.internal.ads.zzfcq.zzd(r0, r3, r3)     // Catch: java.lang.Throwable -> L92
            r6.zzdz(r0)     // Catch: java.lang.Throwable -> L92
            goto L90
        L6d:
            boolean r2 = r5.zze()     // Catch: java.lang.Throwable -> L92
            if (r2 != 0) goto L90
            boolean r1 = r6.zzf     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzfcm.zza(r0, r1)     // Catch: java.lang.Throwable -> L92
            r5.zzj = r3     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzeyx r0 = r5.zzc     // Catch: java.lang.Throwable -> L92
            java.lang.String r1 = r5.zzd     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.ads.internal.client.zzr r2 = r5.zza     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzeyq r3 = new com.google.android.gms.internal.ads.zzeyq     // Catch: java.lang.Throwable -> L92
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L92
            com.google.android.gms.internal.ads.zzejy r2 = new com.google.android.gms.internal.ads.zzejy     // Catch: java.lang.Throwable -> L92
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L92
            boolean r6 = r0.zzb(r6, r1, r3, r2)     // Catch: java.lang.Throwable -> L92
            monitor-exit(r5)
            return r6
        L90:
            monitor-exit(r5)
            return r1
        L92:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L92
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejz.zzab(com.google.android.gms.ads.internal.client.zzm):boolean");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzac(com.google.android.gms.ads.internal.client.zzcp zzcpVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final Bundle zzd() {
        Preconditions.checkMainThread("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzr zzg() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzbk zzi() {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzcl zzj() {
        return this.zzf.zzi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized com.google.android.gms.ads.internal.client.zzdx zzk() {
        zzdea zzdeaVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzgJ)).booleanValue() && (zzdeaVar = this.zzj) != null) {
            return zzdeaVar.zzl();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final com.google.android.gms.ads.internal.client.zzea zzl() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final IObjectWrapper zzn() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzr() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzs() {
        zzdea zzdeaVar = this.zzj;
        if (zzdeaVar == null || zzdeaVar.zzl() == null) {
            return null;
        }
        return zzdeaVar.zzl().zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized String zzt() {
        zzdea zzdeaVar = this.zzj;
        if (zzdeaVar == null || zzdeaVar.zzl() == null) {
            return null;
        }
        return zzdeaVar.zzl().zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzx() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        zzdea zzdeaVar = this.zzj;
        if (zzdeaVar != null) {
            zzdeaVar.zzm().zza(null);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final void zzy(com.google.android.gms.ads.internal.client.zzm zzmVar, com.google.android.gms.ads.internal.client.zzbn zzbnVar) {
        this.zzf.zzk(zzbnVar);
        zzab(zzmVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbx
    public final synchronized void zzz() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
        zzdea zzdeaVar = this.zzj;
        if (zzdeaVar != null) {
            zzdeaVar.zzm().zzb(null);
        }
    }
}
