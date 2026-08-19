package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfge implements zzfgc {
    private final Context zza;
    private final int zzp;
    private long zzb = 0;
    private long zzc = -1;
    private boolean zzd = false;
    private int zzq = 2;
    private int zzr = 2;
    private int zze = 0;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private zzfgs zzj = zzfgs.SCAR_REQUEST_TYPE_UNSPECIFIED;
    private String zzk = "";
    private String zzl = "";
    private String zzm = "";
    private boolean zzn = false;
    private boolean zzo = false;

    zzfge(Context context, int i) {
        this.zza = context;
        this.zzp = i;
    }

    public final synchronized zzfge zzA() {
        this.zzc = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
        return this;
    }

    public final synchronized zzfge zzK(int i) {
        this.zzq = i;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzr(zzeVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzb(zzfbf zzfbfVar) {
        zzs(zzfbfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzc(String str) {
        zzt(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzd(String str) {
        zzu(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zze(String str) {
        zzv(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzf(zzfgs zzfgsVar) {
        zzw(zzfgsVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzg(boolean z) {
        zzx(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzh(Throwable th) {
        zzy(th);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzi() {
        zzz();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzj() {
        zzA();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final synchronized boolean zzk() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final boolean zzl() {
        return !TextUtils.isEmpty(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final synchronized zzfgg zzm() {
        zzfgf zzfgfVar = null;
        if (this.zzn) {
            return null;
        }
        this.zzn = true;
        if (!this.zzo) {
            zzz();
        }
        if (this.zzc < 0) {
            zzA();
        }
        return new zzfgg(this, zzfgfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfgc
    public final /* bridge */ /* synthetic */ zzfgc zzn(int i) {
        zzK(i);
        return this;
    }

    public final synchronized zzfge zzr(com.google.android.gms.ads.internal.client.zze zzeVar) {
        IBinder iBinder = zzeVar.zze;
        if (iBinder != null) {
            zzcuv zzcuvVar = (zzcuv) iBinder;
            String strZzl = zzcuvVar.zzl();
            if (!TextUtils.isEmpty(strZzl)) {
                this.zzf = strZzl;
            }
            String strZzi = zzcuvVar.zzi();
            if (!TextUtils.isEmpty(strZzi)) {
                this.zzg = strZzi;
            }
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        r2.zzg = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzfge zzs(com.google.android.gms.internal.ads.zzfbf r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.internal.ads.zzfax r0 = r3.zzb     // Catch: java.lang.Throwable -> L2b
            java.lang.String r0 = r0.zzb     // Catch: java.lang.Throwable -> L2b
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L2b
            if (r1 != 0) goto Ld
            r2.zzf = r0     // Catch: java.lang.Throwable -> L2b
        Ld:
            java.util.List r3 = r3.zza     // Catch: java.lang.Throwable -> L2b
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L2b
        L13:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L29
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfau r0 = (com.google.android.gms.internal.ads.zzfau) r0     // Catch: java.lang.Throwable -> L2b
            java.lang.String r0 = r0.zzab     // Catch: java.lang.Throwable -> L2b
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L2b
            if (r1 != 0) goto L13
            r2.zzg = r0     // Catch: java.lang.Throwable -> L2b
        L29:
            monitor-exit(r2)
            return r2
        L2b:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfge.zzs(com.google.android.gms.internal.ads.zzfbf):com.google.android.gms.internal.ads.zzfge");
    }

    public final synchronized zzfge zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zziT)).booleanValue()) {
            this.zzm = str;
        }
        return this;
    }

    public final synchronized zzfge zzu(String str) {
        this.zzh = str;
        return this;
    }

    public final synchronized zzfge zzv(String str) {
        this.zzi = str;
        return this;
    }

    public final synchronized zzfge zzw(zzfgs zzfgsVar) {
        this.zzj = zzfgsVar;
        return this;
    }

    public final synchronized zzfge zzx(boolean z) {
        this.zzd = z;
        return this;
    }

    public final synchronized zzfge zzy(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zziT)).booleanValue()) {
            this.zzl = zzbtv.zzf(th);
            this.zzk = (String) zzful.zzb(zzfth.zzc('\n')).zzd(zzbtv.zze(th)).iterator().next();
        }
        return this;
    }

    public final synchronized zzfge zzz() {
        Configuration configuration;
        com.google.android.gms.ads.internal.util.zzaa zzaaVarZzr = com.google.android.gms.ads.internal.zzv.zzr();
        Context context = this.zza;
        this.zze = zzaaVarZzr.zzm(context);
        Resources resources = context.getResources();
        int i = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation == 2 ? 4 : 3;
        }
        this.zzr = i;
        this.zzb = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
        this.zzo = true;
        return this;
    }
}
