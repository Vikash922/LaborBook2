package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzig implements zzkv {
    private final zzmd zza;
    private final zzif zzb;
    private zzlu zzc;
    private zzkv zzd;
    private boolean zze = true;
    private boolean zzf;

    public zzig(zzif zzifVar, zzdg zzdgVar) {
        this.zzb = zzifVar;
        this.zza = new zzmd(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final long zza() {
        if (this.zze) {
            return this.zza.zza();
        }
        zzkv zzkvVar = this.zzd;
        zzkvVar.getClass();
        return zzkvVar.zza();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(boolean r6) {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzlu r0 = r5.zzc
            if (r0 == 0) goto L6c
            boolean r0 = r0.zzW()
            if (r0 != 0) goto L6c
            if (r6 == 0) goto L15
            com.google.android.gms.internal.ads.zzlu r0 = r5.zzc
            int r0 = r0.zzcT()
            r1 = 2
            if (r0 != r1) goto L6c
        L15:
            com.google.android.gms.internal.ads.zzlu r0 = r5.zzc
            boolean r0 = r0.zzX()
            if (r0 != 0) goto L28
            if (r6 != 0) goto L6c
            com.google.android.gms.internal.ads.zzlu r6 = r5.zzc
            boolean r6 = r6.zzQ()
            if (r6 == 0) goto L28
            goto L6c
        L28:
            com.google.android.gms.internal.ads.zzkv r6 = r5.zzd
            r6.getClass()
            r0 = r6
            com.google.android.gms.internal.ads.zzkv r0 = (com.google.android.gms.internal.ads.zzkv) r0
            long r0 = r6.zza()
            boolean r2 = r5.zze
            if (r2 == 0) goto L50
            com.google.android.gms.internal.ads.zzmd r2 = r5.zza
            long r3 = r2.zza()
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 >= 0) goto L46
            r2.zze()
            goto L78
        L46:
            r3 = 0
            r5.zze = r3
            boolean r3 = r5.zzf
            if (r3 == 0) goto L50
            r2.zzd()
        L50:
            com.google.android.gms.internal.ads.zzmd r2 = r5.zza
            r2.zzb(r0)
            com.google.android.gms.internal.ads.zzbb r6 = r6.zzc()
            com.google.android.gms.internal.ads.zzbb r0 = r2.zzc()
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L78
            r2.zzg(r6)
            com.google.android.gms.internal.ads.zzif r0 = r5.zzb
            r0.zzc(r6)
            goto L78
        L6c:
            r6 = 1
            r5.zze = r6
            boolean r6 = r5.zzf
            if (r6 == 0) goto L78
            com.google.android.gms.internal.ads.zzmd r6 = r5.zza
            r6.zzd()
        L78:
            long r0 = r5.zza()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzig.zzb(boolean):long");
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final zzbb zzc() {
        zzkv zzkvVar = this.zzd;
        return zzkvVar != null ? zzkvVar.zzc() : this.zza.zzc();
    }

    public final void zzd(zzlu zzluVar) {
        if (zzluVar == this.zzc) {
            this.zzd = null;
            this.zzc = null;
            this.zze = true;
        }
    }

    public final void zze(zzlu zzluVar) throws zzii {
        zzkv zzkvVar;
        zzkv zzkvVarZzl = zzluVar.zzl();
        if (zzkvVarZzl == null || zzkvVarZzl == (zzkvVar = this.zzd)) {
            return;
        }
        if (zzkvVar != null) {
            throw zzii.zzd(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.zzd = zzkvVarZzl;
        this.zzc = zzluVar;
        zzkvVarZzl.zzg(this.zza.zzc());
    }

    public final void zzf(long j) {
        this.zza.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final void zzg(zzbb zzbbVar) {
        zzkv zzkvVar = this.zzd;
        if (zzkvVar != null) {
            zzkvVar.zzg(zzbbVar);
            zzbbVar = this.zzd.zzc();
        }
        this.zza.zzg(zzbbVar);
    }

    public final void zzh() {
        this.zzf = true;
        this.zza.zzd();
    }

    public final void zzi() {
        this.zzf = false;
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzkv
    public final boolean zzj() {
        if (this.zze) {
            return false;
        }
        zzkv zzkvVar = this.zzd;
        zzkvVar.getClass();
        return zzkvVar.zzj();
    }
}
