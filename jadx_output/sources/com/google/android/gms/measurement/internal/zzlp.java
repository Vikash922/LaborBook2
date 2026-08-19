package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzpd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.dataflow.qual.Pure;
import org.shadow.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzlp extends zzf {
    private final zzmm zza;
    private zzgb zzb;
    private volatile Boolean zzc;
    private final zzax zzd;
    private final zznl zze;
    private final List<Runnable> zzf;
    private final zzax zzg;

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzz() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final /* bridge */ /* synthetic */ zza zzc() {
        return super.zzc();
    }

    private final zzp zzc(boolean z) {
        return zzg().zza(z ? zzj().zzx() : null);
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ zzac zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzah zze() {
        return super.zze();
    }

    protected final zzak zzaa() {
        zzt();
        zzu();
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzae();
            zzj().zzc().zza("Failed to get consents; not connected to service yet.");
            return null;
        }
        zzp zzpVarZzc = zzc(false);
        Preconditions.checkNotNull(zzpVarZzc);
        try {
            zzak zzakVarZza = zzgbVar.zza(zzpVarZzc);
            zzar();
            return zzakVarZza;
        } catch (RemoteException e) {
            zzj().zzg().zza("Failed to get consents; remote exception", e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzbb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final /* bridge */ /* synthetic */ zzgc zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final /* bridge */ /* synthetic */ zzgf zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzgh zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ zzgi zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzgu zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zziy, com.google.android.gms.measurement.internal.zzja
    @Pure
    public final /* bridge */ /* synthetic */ zzhp zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final /* bridge */ /* synthetic */ zzjk zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final /* bridge */ /* synthetic */ zzlg zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final /* bridge */ /* synthetic */ zzlp zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final /* bridge */ /* synthetic */ zznb zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zziy
    @Pure
    public final /* bridge */ /* synthetic */ zzop zzq() {
        return super.zzq();
    }

    final Boolean zzab() {
        return this.zzc;
    }

    static /* synthetic */ void zzd(zzlp zzlpVar) {
        zzlpVar.zzt();
        if (zzlpVar.zzal()) {
            zzlpVar.zzj().zzp().zza("Inactivity, disconnecting from the service");
            zzlpVar.zzaf();
        }
    }

    static /* synthetic */ void zza(zzlp zzlpVar, ComponentName componentName) {
        zzlpVar.zzt();
        if (zzlpVar.zzb != null) {
            zzlpVar.zzb = null;
            zzlpVar.zzj().zzp().zza("Disconnected from device MeasurementService", componentName);
            zzlpVar.zzt();
            zzlpVar.zzae();
        }
    }

    protected zzlp(zzhw zzhwVar) {
        super(zzhwVar);
        this.zzf = new ArrayList();
        this.zze = new zznl(zzhwVar.zzb());
        this.zza = new zzmm(this);
        this.zzd = new zzlq(this, zzhwVar);
        this.zzg = new zzmd(this, zzhwVar);
    }

    protected final void zzac() {
        zzt();
        zzu();
        zza(new zzmb(this, zzc(true)));
    }

    protected final void zzad() {
        zzt();
        zzu();
        zzp zzpVarZzc = zzc(true);
        zzh().zzab();
        zza(new zzly(this, zzpVarZzc));
    }

    @Override // com.google.android.gms.measurement.internal.zzg, com.google.android.gms.measurement.internal.zziy
    public final /* bridge */ /* synthetic */ void zzr() {
        super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzg, com.google.android.gms.measurement.internal.zziy
    public final /* bridge */ /* synthetic */ void zzs() {
        super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzg, com.google.android.gms.measurement.internal.zziy
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    final void zzae() {
        zzt();
        zzu();
        if (zzal()) {
            return;
        }
        if (zzap()) {
            this.zza.zza();
            return;
        }
        if (zze().zzaa()) {
            return;
        }
        List<ResolveInfo> listQueryIntentServices = zza().getPackageManager().queryIntentServices(new Intent().setClassName(zza(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
        if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            intent.setComponent(new ComponentName(zza(), "com.google.android.gms.measurement.AppMeasurementService"));
            this.zza.zza(intent);
            return;
        }
        zzj().zzg().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
    }

    public final void zzaf() {
        zzt();
        zzu();
        this.zza.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(zza(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaq() {
        zzt();
        zzj().zzp().zza("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        Iterator<Runnable> it = this.zzf.iterator();
        while (it.hasNext()) {
            try {
                it.next().run();
            } catch (RuntimeException e) {
                zzj().zzg().zza("Task exception while flushing queue", e);
            }
        }
        this.zzf.clear();
        this.zzg.zza();
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdl zzdlVar) {
        zzt();
        zzu();
        zza(new zzlz(this, zzc(false), zzdlVar));
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzt();
        zzu();
        zza(new zzlw(this, atomicReference, zzc(false)));
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzdl zzdlVar, String str, String str2) {
        zzt();
        zzu();
        zza(new zzmk(this, str, str2, zzc(false), zzdlVar));
    }

    protected final void zza(AtomicReference<List<zzaf>> atomicReference, String str, String str2, String str3) {
        zzt();
        zzu();
        zza(new zzml(this, atomicReference, str, str2, str3, zzc(false)));
    }

    protected final void zza(AtomicReference<List<zznk>> atomicReference, Bundle bundle) {
        zzt();
        zzu();
        zza(new zzlv(this, atomicReference, zzc(false), bundle));
    }

    protected final void zza(AtomicReference<List<zzok>> atomicReference, boolean z) {
        zzt();
        zzu();
        zza(new zzls(this, atomicReference, zzc(false), z));
    }

    protected final void zza(com.google.android.gms.internal.measurement.zzdl zzdlVar, String str, String str2, boolean z) {
        zzt();
        zzu();
        zza(new zzlt(this, str, str2, zzc(false), z, zzdlVar));
    }

    protected final void zza(AtomicReference<List<zzok>> atomicReference, String str, String str2, String str3, boolean z) {
        zzt();
        zzu();
        zza(new zzmn(this, atomicReference, str, str2, str3, zzc(false), z));
    }

    final /* synthetic */ void zzag() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send Dma consent settings to service");
            return;
        }
        try {
            zzp zzpVarZzc = zzc(false);
            Preconditions.checkNotNull(zzpVarZzc);
            zzgbVar.zzg(zzpVarZzc);
            zzar();
        } catch (RemoteException e) {
            zzj().zzg().zza("Failed to send Dma consent settings to the service", e);
        }
    }

    final /* synthetic */ void zzah() {
        zzgb zzgbVar = this.zzb;
        if (zzgbVar == null) {
            zzj().zzg().zza("Failed to send storage consent settings to service");
            return;
        }
        try {
            zzp zzpVarZzc = zzc(false);
            Preconditions.checkNotNull(zzpVarZzc);
            zzgbVar.zzi(zzpVarZzc);
            zzar();
        } catch (RemoteException e) {
            zzj().zzg().zza("Failed to send storage consent settings to the service", e);
        }
    }

    protected final void zza(zzbh zzbhVar, String str) {
        Preconditions.checkNotNull(zzbhVar);
        zzt();
        zzu();
        zza(new zzmj(this, true, zzc(true), zzh().zza(zzbhVar), zzbhVar, str));
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdl zzdlVar, zzbh zzbhVar, String str) {
        zzt();
        zzu();
        if (zzq().zza(12451000) != 0) {
            zzj().zzu().zza("Not bundling data. Service unavailable or out of date");
            zzq().zza(zzdlVar, new byte[0]);
        } else {
            zza(new zzme(this, zzbhVar, str, zzdlVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzar() {
        zzt();
        this.zze.zzb();
        this.zzd.zza(zzbj.zzal.zza(null).longValue());
    }

    protected final void zzai() {
        zzt();
        zzu();
        zzp zzpVarZzc = zzc(false);
        zzh().zzaa();
        zza(new zzlx(this, zzpVarZzc));
    }

    private final void zza(Runnable runnable) throws IllegalStateException {
        zzt();
        if (zzal()) {
            runnable.run();
        } else {
            if (this.zzf.size() >= 1000) {
                zzj().zzg().zza("Discarding data. Max runnable queue size reached");
                return;
            }
            this.zzf.add(runnable);
            this.zzg.zza(DateUtils.MILLIS_PER_MINUTE);
            zzae();
        }
    }

    final void zza(zzgb zzgbVar, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) throws Throwable {
        int size;
        zzt();
        zzu();
        int i = 100;
        int i2 = 0;
        while (i2 < 1001 && i == 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> listZza = zzh().zza(100);
            if (listZza != null) {
                arrayList.addAll(listZza);
                size = listZza.size();
            } else {
                size = 0;
            }
            if (abstractSafeParcelable != null && size < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj = arrayList.get(i3);
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzbh) {
                    try {
                        zzgbVar.zza((zzbh) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e) {
                        zzj().zzg().zza("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzok) {
                    try {
                        zzgbVar.zza((zzok) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        zzj().zzg().zza("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzaf) {
                    try {
                        zzgbVar.zza((zzaf) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        zzj().zzg().zza("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    zzj().zzg().zza("Discarding data. Unrecognized parcel type.");
                }
            }
            i2++;
            i = size;
        }
    }

    protected final void zza(zzaf zzafVar) {
        Preconditions.checkNotNull(zzafVar);
        zzt();
        zzu();
        zza(new zzmi(this, true, zzc(true), zzh().zza(zzafVar), new zzaf(zzafVar), zzafVar));
    }

    protected final void zza(boolean z) {
        zzt();
        zzu();
        if ((!zzpd.zza() || !zze().zza(zzbj.zzdb)) && z) {
            zzh().zzaa();
        }
        if (zzan()) {
            zza(new zzmg(this, zzc(false)));
        }
    }

    protected final void zza(zzlh zzlhVar) {
        zzt();
        zzu();
        zza(new zzma(this, zzlhVar));
    }

    public final void zza(Bundle bundle) {
        zzt();
        zzu();
        zza(new zzmc(this, zzc(false), bundle));
    }

    public final void zzb(Bundle bundle) {
        zzt();
        zzu();
        if (zze().zza(zzbj.zzdl)) {
            zza(new zzmf(this, zzc(false), bundle));
        }
    }

    protected final void zzaj() {
        zzt();
        zzu();
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlr
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzag();
            }
        });
    }

    protected final void zzak() {
        zzt();
        zzu();
        zza(new zzmh(this, zzc(true)));
    }

    protected final void zza(zzgb zzgbVar) {
        zzt();
        Preconditions.checkNotNull(zzgbVar);
        this.zzb = zzgbVar;
        zzar();
        zzaq();
    }

    protected final void zzb(boolean z) {
        zzt();
        zzu();
        if ((!zzpd.zza() || !zze().zza(zzbj.zzdb)) && z) {
            zzh().zzaa();
        }
        zza(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlo
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzah();
            }
        });
    }

    protected final void zza(zzok zzokVar) {
        zzt();
        zzu();
        zza(new zzlu(this, zzc(true), zzh().zza(zzokVar), zzokVar));
    }

    public final boolean zzal() {
        zzt();
        zzu();
        return this.zzb != null;
    }

    final boolean zzam() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= 200900;
    }

    final boolean zzan() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= zzbj.zzbs.zza(null).intValue();
    }

    final boolean zzao() {
        zzt();
        zzu();
        return !zzap() || zzq().zzg() >= 241200;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final boolean zzap() {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlp.zzap():boolean");
    }
}
