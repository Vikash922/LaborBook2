package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzqn;
import com.google.firebase.messaging.Constants;
import java.net.URL;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzhw implements zzja {
    private static volatile zzhw zzb;
    final long zza;
    private Boolean zzaa;
    private long zzab;
    private volatile Boolean zzac;
    private Boolean zzad;
    private Boolean zzae;
    private volatile boolean zzaf;
    private int zzag;
    private int zzah;
    private final Context zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final boolean zzg;
    private final zzac zzh;
    private final zzah zzi;
    private final zzgu zzj;
    private final zzgi zzk;
    private final zzhp zzl;
    private final zznb zzm;
    private final zzop zzn;
    private final zzgh zzo;
    private final Clock zzp;
    private final zzlg zzq;
    private final zzjk zzr;
    private final zza zzs;
    private final zzlb zzt;
    private final String zzu;
    private zzgf zzv;
    private zzlp zzw;
    private zzbb zzx;
    private zzgc zzy;
    private boolean zzz = false;
    private AtomicInteger zzai = new AtomicInteger(0);

    public final int zzc() {
        zzl().zzt();
        if (this.zzi.zzz()) {
            return 1;
        }
        Boolean bool = this.zzae;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        if (!zzad()) {
            return 8;
        }
        Boolean boolZzv = zzn().zzv();
        if (boolZzv != null) {
            return boolZzv.booleanValue() ? 0 : 3;
        }
        Boolean boolZze = this.zzi.zze("firebase_analytics_collection_enabled");
        if (boolZze != null) {
            return boolZze.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.zzad;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.zzac == null || this.zzac.booleanValue()) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public final Context zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public final Clock zzb() {
        return this.zzp;
    }

    @Pure
    public final zza zze() {
        zza zzaVar = this.zzs;
        if (zzaVar != null) {
            return zzaVar;
        }
        throw new IllegalStateException("Component not created");
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public final zzac zzd() {
        return this.zzh;
    }

    @Pure
    public final zzah zzf() {
        return this.zzi;
    }

    @Pure
    public final zzbb zzg() {
        zza((zzix) this.zzx);
        return this.zzx;
    }

    @Pure
    public final zzgc zzh() {
        zza((zzf) this.zzy);
        return this.zzy;
    }

    @Pure
    public final zzgf zzi() {
        zza((zzf) this.zzv);
        return this.zzv;
    }

    @Pure
    public final zzgh zzk() {
        return this.zzo;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public final zzgi zzj() {
        zza((zzix) this.zzk);
        return this.zzk;
    }

    public final zzgi zzm() {
        zzgi zzgiVar = this.zzk;
        if (zzgiVar == null || !zzgiVar.zzaf()) {
            return null;
        }
        return this.zzk;
    }

    @Pure
    public final zzgu zzn() {
        zza((zziy) this.zzj);
        return this.zzj;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    @Pure
    public final zzhp zzl() {
        zza((zzix) this.zzl);
        return this.zzl;
    }

    @SideEffectFree
    final zzhp zzo() {
        return this.zzl;
    }

    public static zzhw zza(Context context, com.google.android.gms.internal.measurement.zzdt zzdtVar, Long l) {
        if (zzdtVar != null && (zzdtVar.zze == null || zzdtVar.zzf == null)) {
            zzdtVar = new com.google.android.gms.internal.measurement.zzdt(zzdtVar.zza, zzdtVar.zzb, zzdtVar.zzc, zzdtVar.zzd, null, null, zzdtVar.zzg, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzhw.class) {
                if (zzb == null) {
                    zzb = new zzhw(new zzji(context, zzdtVar, l));
                }
            }
        } else if (zzdtVar != null && zzdtVar.zzg != null && zzdtVar.zzg.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(zzb);
            zzb.zza(zzdtVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(zzb);
        return zzb;
    }

    @Pure
    public final zzjk zzp() {
        zza((zzf) this.zzr);
        return this.zzr;
    }

    @Pure
    private final zzlb zzai() {
        zza((zzix) this.zzt);
        return this.zzt;
    }

    @Pure
    public final zzlg zzq() {
        zza((zzf) this.zzq);
        return this.zzq;
    }

    @Pure
    public final zzlp zzr() {
        zza((zzf) this.zzw);
        return this.zzw;
    }

    @Pure
    public final zznb zzs() {
        zza((zzf) this.zzm);
        return this.zzm;
    }

    @Pure
    public final zzop zzt() {
        zza((zziy) this.zzn);
        return this.zzn;
    }

    @Pure
    public final String zzu() {
        return this.zzd;
    }

    @Pure
    public final String zzv() {
        return this.zze;
    }

    @Pure
    public final String zzw() {
        return this.zzf;
    }

    @Pure
    public final String zzx() {
        return this.zzu;
    }

    static /* synthetic */ void zza(zzhw zzhwVar, zzji zzjiVar) {
        zzhwVar.zzl().zzt();
        zzbb zzbbVar = new zzbb(zzhwVar);
        zzbbVar.zzad();
        zzhwVar.zzx = zzbbVar;
        zzgc zzgcVar = new zzgc(zzhwVar, zzjiVar.zzf);
        zzgcVar.zzv();
        zzhwVar.zzy = zzgcVar;
        zzgf zzgfVar = new zzgf(zzhwVar);
        zzgfVar.zzv();
        zzhwVar.zzv = zzgfVar;
        zzlp zzlpVar = new zzlp(zzhwVar);
        zzlpVar.zzv();
        zzhwVar.zzw = zzlpVar;
        zzhwVar.zzn.zzae();
        zzhwVar.zzj.zzae();
        zzhwVar.zzy.zzw();
        zzhwVar.zzj().zzn().zza("App measurement initialized, version", 102001L);
        zzhwVar.zzj().zzn().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzad = zzgcVar.zzad();
        if (TextUtils.isEmpty(zzhwVar.zzd)) {
            if (zzhwVar.zzt().zzd(strZzad, zzhwVar.zzi.zzw())) {
                zzhwVar.zzj().zzn().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzhwVar.zzj().zzn().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app " + strZzad);
            }
        }
        zzhwVar.zzj().zzc().zza("Debug-level message logging enabled");
        if (zzhwVar.zzag != zzhwVar.zzai.get()) {
            zzhwVar.zzj().zzg().zza("Not all components initialized", Integer.valueOf(zzhwVar.zzag), Integer.valueOf(zzhwVar.zzai.get()));
        }
        zzhwVar.zzz = true;
    }

    private zzhw(zzji zzjiVar) {
        long jCurrentTimeMillis;
        boolean z = false;
        Preconditions.checkNotNull(zzjiVar);
        zzac zzacVar = new zzac(zzjiVar.zza);
        this.zzh = zzacVar;
        zzfw.zza = zzacVar;
        Context context = zzjiVar.zza;
        this.zzc = context;
        this.zzd = zzjiVar.zzb;
        this.zze = zzjiVar.zzc;
        this.zzf = zzjiVar.zzd;
        this.zzg = zzjiVar.zzh;
        this.zzac = zzjiVar.zze;
        this.zzu = zzjiVar.zzj;
        this.zzaf = true;
        com.google.android.gms.internal.measurement.zzdt zzdtVar = zzjiVar.zzg;
        if (zzdtVar != null && zzdtVar.zzg != null) {
            Object obj = zzdtVar.zzg.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zzad = (Boolean) obj;
            }
            Object obj2 = zzdtVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzae = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.zzir.zzb(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzp = defaultClock;
        if (zzjiVar.zzi != null) {
            jCurrentTimeMillis = zzjiVar.zzi.longValue();
        } else {
            jCurrentTimeMillis = defaultClock.currentTimeMillis();
        }
        this.zza = jCurrentTimeMillis;
        this.zzi = new zzah(this);
        zzgu zzguVar = new zzgu(this);
        zzguVar.zzad();
        this.zzj = zzguVar;
        zzgi zzgiVar = new zzgi(this);
        zzgiVar.zzad();
        this.zzk = zzgiVar;
        zzop zzopVar = new zzop(this);
        zzopVar.zzad();
        this.zzn = zzopVar;
        this.zzo = new zzgh(new zzjl(zzjiVar, this));
        this.zzs = new zza(this);
        zzlg zzlgVar = new zzlg(this);
        zzlgVar.zzv();
        this.zzq = zzlgVar;
        zzjk zzjkVar = new zzjk(this);
        zzjkVar.zzv();
        this.zzr = zzjkVar;
        zznb zznbVar = new zznb(this);
        zznbVar.zzv();
        this.zzm = zznbVar;
        zzlb zzlbVar = new zzlb(this);
        zzlbVar.zzad();
        this.zzt = zzlbVar;
        zzhp zzhpVar = new zzhp(this);
        zzhpVar.zzad();
        this.zzl = zzhpVar;
        if (zzjiVar.zzg != null && zzjiVar.zzg.zzb != 0) {
            z = true;
        }
        boolean z2 = !z;
        if (context.getApplicationContext() instanceof Application) {
            zzp().zzb(z2);
        } else {
            zzj().zzu().zza("Application context is not an Application");
        }
        zzhpVar.zzb(new zzhx(this, zzjiVar));
    }

    private static void zza(zziy zziyVar) {
        if (zziyVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void zza(zzf zzfVar) {
        if (zzfVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (zzfVar.zzy()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(zzfVar.getClass()));
    }

    private static void zza(zzix zzixVar) {
        if (zzixVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (zzixVar.zzaf()) {
            return;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(zzixVar.getClass()));
    }

    final void zzy() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    final void zzz() {
        this.zzai.incrementAndGet();
    }

    final /* synthetic */ void zza(String str, int i, Throwable th, byte[] bArr, Map map) {
        if ((i != 200 && i != 204 && i != 304) || th != null) {
            zzj().zzu().zza("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i), th);
            return;
        }
        zzn().zzo.zza(true);
        if (bArr == null || bArr.length == 0) {
            zzj().zzc().zza("Deferred Deep Link response empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            String strOptString = jSONObject.optString(SDKConstants.PARAM_TOURNAMENTS_DEEPLINK, "");
            if (TextUtils.isEmpty(strOptString)) {
                zzj().zzc().zza("Deferred Deep Link is empty.");
                return;
            }
            String strOptString2 = jSONObject.optString("gclid", "");
            String strOptString3 = jSONObject.optString("gbraid", "");
            String strOptString4 = jSONObject.optString("gad_source", "");
            double dOptDouble = jSONObject.optDouble(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, 0.0d);
            Bundle bundle = new Bundle();
            if (zzqn.zza() && this.zzi.zza(zzbj.zzcs)) {
                if (!zzt().zzi(strOptString)) {
                    zzj().zzu().zza("Deferred Deep Link validation failed. gclid, gbraid, deep link", strOptString2, strOptString3, strOptString);
                    return;
                }
                if (!TextUtils.isEmpty(strOptString3)) {
                    bundle.putString("gbraid", strOptString3);
                }
                if (!TextUtils.isEmpty(strOptString4)) {
                    bundle.putString("gad_source", strOptString4);
                }
            } else if (!zzt().zzi(strOptString)) {
                zzj().zzu().zza("Deferred Deep Link validation failed. gclid, deep link", strOptString2, strOptString);
                return;
            }
            if (zzqn.zza()) {
                this.zzi.zza(zzbj.zzcs);
            }
            bundle.putString("gclid", strOptString2);
            bundle.putString("_cis", "ddp");
            this.zzr.zzc("auto", Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN, bundle);
            zzop zzopVarZzt = zzt();
            if (TextUtils.isEmpty(strOptString) || !zzopVarZzt.zza(strOptString, dOptDouble)) {
                return;
            }
            zzopVarZzt.zza().sendBroadcast(new Intent("android.google.analytics.action.DEEPLINK_ACTION"));
        } catch (JSONException e) {
            zzj().zzg().zza("Failed to parse the Deferred Deep Link response. exception", e);
        }
    }

    final void zzaa() {
        this.zzag++;
    }

    final void zza(boolean z) {
        this.zzac = Boolean.valueOf(z);
    }

    public final void zzb(boolean z) {
        zzl().zzt();
        this.zzaf = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0203  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zza(com.google.android.gms.internal.measurement.zzdt r13) {
        /*
            Method dump skipped, instruction units count: 1309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhw.zza(com.google.android.gms.internal.measurement.zzdt):void");
    }

    public final boolean zzab() {
        return this.zzac != null && this.zzac.booleanValue();
    }

    public final boolean zzac() {
        return zzc() == 0;
    }

    public final boolean zzad() {
        zzl().zzt();
        return this.zzaf;
    }

    @Pure
    public final boolean zzae() {
        return TextUtils.isEmpty(this.zzd);
    }

    protected final boolean zzaf() {
        if (!this.zzz) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        zzl().zzt();
        Boolean bool = this.zzaa;
        if (bool == null || this.zzab == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.zzp.elapsedRealtime() - this.zzab) > 1000)) {
            this.zzab = this.zzp.elapsedRealtime();
            boolean z = true;
            Boolean boolValueOf = Boolean.valueOf(zzt().zze("android.permission.INTERNET") && zzt().zze("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zzc).isCallerInstantApp() || this.zzi.zzaa() || (zzop.zza(this.zzc) && zzop.zza(this.zzc, false))));
            this.zzaa = boolValueOf;
            if (boolValueOf.booleanValue()) {
                if (!zzt().zza(zzh().zzae(), zzh().zzac()) && TextUtils.isEmpty(zzh().zzac())) {
                    z = false;
                }
                this.zzaa = Boolean.valueOf(z);
            }
        }
        return this.zzaa.booleanValue();
    }

    @Pure
    public final boolean zzag() {
        return this.zzg;
    }

    public final boolean zzah() {
        zzl().zzt();
        zza((zzix) zzai());
        String strZzad = zzh().zzad();
        Pair<String, Boolean> pairZza = zzn().zza(strZzad);
        if (!this.zzi.zzx() || ((Boolean) pairZza.second).booleanValue() || TextUtils.isEmpty((CharSequence) pairZza.first)) {
            zzj().zzc().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        if (!zzai().zzc()) {
            zzj().zzu().zza("Network is not available for Deferred Deep Link request. Skipping");
            return false;
        }
        StringBuilder sb = new StringBuilder();
        zzlp zzlpVarZzr = zzr();
        zzlpVarZzr.zzt();
        zzlpVarZzr.zzu();
        if (!zzlpVarZzr.zzap() || zzlpVarZzr.zzq().zzg() >= 234200) {
            zzak zzakVarZzab = zzp().zzab();
            Bundle bundle = zzakVarZzab != null ? zzakVarZzab.zza : null;
            if (bundle == null) {
                int i = this.zzah;
                this.zzah = i + 1;
                boolean z = i < 10;
                zzj().zzc().zza("Failed to retrieve DMA consent from the service, " + (z ? "Retrying." : "Skipping.") + " retryCount", Integer.valueOf(this.zzah));
                return z;
            }
            sb.append("&gcs=").append(zzjc.zza(bundle, 100).zzg());
            zzaz zzazVarZza = zzaz.zza(bundle, 100);
            sb.append("&dma=").append(zzazVarZza.zzd() == Boolean.FALSE ? 0 : 1);
            if (!TextUtils.isEmpty(zzazVarZza.zze())) {
                sb.append("&dma_cps=").append(zzazVarZza.zze());
            }
            sb.append("&npa=").append(zzaz.zza(bundle) == Boolean.TRUE ? 0 : 1);
            zzj().zzp().zza("Consent query parameters to Bow", sb);
        }
        zzop zzopVarZzt = zzt();
        zzh();
        URL urlZza = zzopVarZzt.zza(102001L, strZzad, (String) pairZza.first, zzn().zzp.zza() - 1, sb.toString());
        if (urlZza != null) {
            zzlb zzlbVarZzai = zzai();
            zzla zzlaVar = new zzla() { // from class: com.google.android.gms.measurement.internal.zzhy
                @Override // com.google.android.gms.measurement.internal.zzla
                public final void zza(String str, int i2, Throwable th, byte[] bArr, Map map) {
                    this.zza.zza(str, i2, th, bArr, map);
                }
            };
            zzlbVarZzai.zzt();
            zzlbVarZzai.zzac();
            Preconditions.checkNotNull(urlZza);
            Preconditions.checkNotNull(zzlaVar);
            zzlbVarZzai.zzl().zza(new zzld(zzlbVarZzai, strZzad, urlZza, null, null, zzlaVar));
        }
        return false;
    }
}
