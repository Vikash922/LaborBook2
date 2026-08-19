package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.internal.measurement.zzpi;
import com.google.firebase.messaging.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzia extends zzga {
    private final zznv zza;
    private Boolean zzb;
    private String zzc;

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final zzak zza(zzp zzpVar) {
        zzb(zzpVar, false);
        Preconditions.checkNotEmpty(zzpVar.zza);
        try {
            return (zzak) this.zza.zzl().zzb(new zzip(this, zzpVar)).get(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zza.zzj().zzg().zza("Failed to get consent. appId", zzgi.zza(zzpVar.zza), e);
            return new zzak(null);
        }
    }

    final zzbh zzb(zzbh zzbhVar, zzp zzpVar) {
        if (Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN.equals(zzbhVar.zza) && zzbhVar.zzb != null && zzbhVar.zzb.zza() != 0) {
            String strZzd = zzbhVar.zzb.zzd("_cis");
            if ("referrer broadcast".equals(strZzd) || "referrer API".equals(strZzd)) {
                this.zza.zzj().zzn().zza("Event has been filtered ", zzbhVar.toString());
                return new zzbh("_cmpx", zzbhVar.zzb, zzbhVar.zzc, zzbhVar.zzd);
            }
        }
        return zzbhVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final String zzb(zzp zzpVar) {
        zzb(zzpVar, false);
        return this.zza.zzb(zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zznk> zza(zzp zzpVar, Bundle bundle) {
        zzb(zzpVar, false);
        Preconditions.checkNotNull(zzpVar.zza);
        try {
            return (List) this.zza.zzl().zza(new zziw(this, zzpVar, bundle)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get trigger URIs. appId", zzgi.zza(zzpVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzok> zza(zzp zzpVar, boolean z) {
        zzb(zzpVar, false);
        String str = zzpVar.zza;
        Preconditions.checkNotNull(str);
        try {
            List<zzom> list = (List) this.zza.zzl().zza(new zziv(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzom zzomVar : list) {
                if (z || !zzop.zzg(zzomVar.zzc)) {
                    arrayList.add(new zzok(zzomVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get user properties. appId", zzgi.zza(zzpVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzaf> zza(String str, String str2, zzp zzpVar) {
        zzb(zzpVar, false);
        String str3 = zzpVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            return (List) this.zza.zzl().zza(new zzil(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzaf> zza(String str, String str2, String str3) {
        zza(str, true);
        try {
            return (List) this.zza.zzl().zza(new zzio(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzok> zza(String str, String str2, boolean z, zzp zzpVar) {
        zzb(zzpVar, false);
        String str3 = zzpVar.zza;
        Preconditions.checkNotNull(str3);
        try {
            List<zzom> list = (List) this.zza.zzl().zza(new zzij(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzom zzomVar : list) {
                if (z || !zzop.zzg(zzomVar.zzc)) {
                    arrayList.add(new zzok(zzomVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to query user properties. appId", zzgi.zza(zzpVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final List<zzok> zza(String str, String str2, String str3, boolean z) {
        zza(str, true);
        try {
            List<zzom> list = (List) this.zza.zzl().zza(new zzim(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzom zzomVar : list) {
                if (z || !zzop.zzg(zzomVar.zzc)) {
                    arrayList.add(new zzok(zzomVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to get user properties as. appId", zzgi.zza(str), e);
            return Collections.emptyList();
        }
    }

    public zzia(zznv zznvVar) {
        this(zznvVar, null);
    }

    private zzia(zznv zznvVar, String str) {
        Preconditions.checkNotNull(zznvVar);
        this.zza = zznvVar;
        this.zzc = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzc(zzp zzpVar) {
        zzb(zzpVar, false);
        zzb(new zzif(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzd(zzp zzpVar) {
        zzb(zzpVar, false);
        zzb(new zzig(this, zzpVar));
    }

    private final void zzb(zzp zzpVar, boolean z) {
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zza(zzpVar.zza, false);
        this.zza.zzq().zza(zzpVar.zzb, zzpVar.zzp);
    }

    private final void zza(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            this.zza.zzj().zzg().zza("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.zzb == null) {
                    this.zzb = Boolean.valueOf("com.google.android.gms".equals(this.zzc) || UidVerifier.isGooglePlayServicesUid(this.zza.zza(), Binder.getCallingUid()) || GoogleSignatureVerifier.getInstance(this.zza.zza()).isUidGoogleSigned(Binder.getCallingUid()));
                }
                if (this.zzb.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.zza.zzj().zzg().zza("Measurement Service called with invalid calling package. appId", zzgi.zza(str));
                throw e;
            }
        }
        if (this.zzc == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zza.zza(), Binder.getCallingUid(), str)) {
            this.zzc = str;
        }
        if (str.equals(this.zzc)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    final void zzc(zzbh zzbhVar, zzp zzpVar) {
        boolean zZza;
        if (!this.zza.zzi().zzl(zzpVar.zza)) {
            zzd(zzbhVar, zzpVar);
            return;
        }
        this.zza.zzj().zzp().zza("EES config found for", zzpVar.zza);
        zzhg zzhgVarZzi = this.zza.zzi();
        String str = zzpVar.zza;
        com.google.android.gms.internal.measurement.zzb zzbVar = TextUtils.isEmpty(str) ? null : zzhgVarZzi.zza.get(str);
        if (zzbVar == null) {
            this.zza.zzj().zzp().zza("EES not loaded for", zzpVar.zza);
            zzd(zzbhVar, zzpVar);
            return;
        }
        try {
            Map<String, Object> mapZza = this.zza.zzp().zza(zzbhVar.zzb.zzb(), true);
            String strZza = zzjf.zza(zzbhVar.zza);
            if (strZza == null) {
                strZza = zzbhVar.zza;
            }
            zZza = zzbVar.zza(new com.google.android.gms.internal.measurement.zzad(strZza, zzbhVar.zzd, mapZza));
        } catch (com.google.android.gms.internal.measurement.zzc unused) {
            this.zza.zzj().zzg().zza("EES error. appId, eventName", zzpVar.zzb, zzbhVar.zza);
            zZza = false;
        }
        if (!zZza) {
            this.zza.zzj().zzp().zza("EES was not applied to event", zzbhVar.zza);
            zzd(zzbhVar, zzpVar);
            return;
        }
        if (zzbVar.zzd()) {
            this.zza.zzj().zzp().zza("EES edited event", zzbhVar.zza);
            zzd(this.zza.zzp().zza(zzbVar.zza().zzb()), zzpVar);
        } else {
            zzd(zzbhVar, zzpVar);
        }
        if (zzbVar.zzc()) {
            for (com.google.android.gms.internal.measurement.zzad zzadVar : zzbVar.zza().zzc()) {
                this.zza.zzj().zzp().zza("EES logging created event", zzadVar.zzb());
                zzd(this.zza.zzp().zza(zzadVar), zzpVar);
            }
        }
    }

    final /* synthetic */ void zza(Bundle bundle, String str) {
        boolean zZza = this.zza.zze().zza(zzbj.zzdi);
        boolean zZza2 = this.zza.zze().zza(zzbj.zzdk);
        if (bundle.isEmpty() && zZza && zZza2) {
            this.zza.zzf().zzp(str);
        } else {
            this.zza.zzf().zza(str, bundle);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x026b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ void zzb(android.os.Bundle r33, java.lang.String r34) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzia.zzb(android.os.Bundle, java.lang.String):void");
    }

    final /* synthetic */ void zzj(zzp zzpVar) {
        this.zza.zzr();
        this.zza.zzf(zzpVar);
    }

    final /* synthetic */ void zzk(zzp zzpVar) {
        this.zza.zzr();
        this.zza.zzg(zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbh zzbhVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzbhVar);
        zzb(zzpVar, false);
        zzb(new zzis(this, zzbhVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzbh zzbhVar, String str, String str2) {
        Preconditions.checkNotNull(zzbhVar);
        Preconditions.checkNotEmpty(str);
        zza(str, true);
        zzb(new zzir(this, zzbhVar, str));
    }

    private final void zzd(zzbh zzbhVar, zzp zzpVar) {
        this.zza.zzr();
        this.zza.zza(zzbhVar, zzpVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zze(zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        zza(zzpVar.zza, false);
        zzb(new zzin(this, zzpVar));
    }

    private final void zza(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.zza.zzl().zzg()) {
            runnable.run();
        } else {
            this.zza.zzl().zzc(runnable);
        }
    }

    private final void zzb(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.zza.zzl().zzg()) {
            runnable.run();
        } else {
            this.zza.zzl().zzb(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzaf zzafVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzafVar);
        Preconditions.checkNotNull(zzafVar.zzc);
        zzb(zzpVar, false);
        zzaf zzafVar2 = new zzaf(zzafVar);
        zzafVar2.zza = zzpVar.zza;
        zzb(new zzih(this, zzafVar2, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzaf zzafVar) {
        Preconditions.checkNotNull(zzafVar);
        Preconditions.checkNotNull(zzafVar.zzc);
        Preconditions.checkNotEmpty(zzafVar.zza);
        zza(zzafVar.zza, true);
        zzb(new zzik(this, new zzaf(zzafVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzf(zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        Preconditions.checkNotNull(zzpVar.zzt);
        zza(new zziq(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(long j, String str, String str2, String str3) {
        zzb(new zzii(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(final Bundle bundle, zzp zzpVar) {
        zzb(zzpVar, false);
        final String str = zzpVar.zza;
        Preconditions.checkNotNull(str);
        zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzie
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(bundle, str);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzb(final Bundle bundle, zzp zzpVar) {
        if (zzpi.zza() && this.zza.zze().zza(zzbj.zzdk)) {
            zzb(zzpVar, false);
            final String str = zzpVar.zza;
            Preconditions.checkNotNull(str);
            zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzic
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.zza.zzb(bundle, str);
                }
            });
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzg(final zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        Preconditions.checkNotNull(zzpVar.zzt);
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzib
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzj(zzpVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzh(zzp zzpVar) {
        zzb(zzpVar, false);
        zzb(new zzid(this, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zzi(final zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        Preconditions.checkNotNull(zzpVar.zzt);
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhz
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzk(zzpVar);
            }
        });
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final void zza(zzok zzokVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzokVar);
        zzb(zzpVar, false);
        zzb(new zzit(this, zzokVar, zzpVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzgb
    public final byte[] zza(zzbh zzbhVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbhVar);
        zza(str, true);
        this.zza.zzj().zzc().zza("Log and bundle. event", this.zza.zzg().zza(zzbhVar.zza));
        long jNanoTime = this.zza.zzb().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zza.zzl().zzb(new zziu(this, zzbhVar, str)).get();
            if (bArr == null) {
                this.zza.zzj().zzg().zza("Log and bundle returned null. appId", zzgi.zza(str));
                bArr = new byte[0];
            }
            this.zza.zzj().zzc().zza("Log and bundle processed. event, size, time_ms", this.zza.zzg().zza(zzbhVar.zza), Integer.valueOf(bArr.length), Long.valueOf((this.zza.zzb().nanoTime() / 1000000) - jNanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzj().zzg().zza("Failed to log and bundle. appId, event, error", zzgi.zza(str), this.zza.zzg().zza(zzbhVar.zza), e);
            return null;
        }
    }
}
