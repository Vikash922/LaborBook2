package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.amplitude.core.events.Identify;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzegb implements zzgaz {
    private final zzfft zza;
    private final zzcve zzb;
    private final zzfik zzc;
    private final zzfio zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzcqj zzg;
    private final zzefu zzh;
    private final zzeck zzi;
    private final Context zzj;
    private final zzfgn zzk;
    private final zzefe zzl;
    private final zzdqy zzm;

    zzegb(Context context, zzfft zzfftVar, zzefu zzefuVar, zzcve zzcveVar, zzfik zzfikVar, zzfio zzfioVar, zzcqj zzcqjVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzeck zzeckVar, zzfgn zzfgnVar, zzefe zzefeVar, zzdqy zzdqyVar) {
        this.zzj = context;
        this.zza = zzfftVar;
        this.zzh = zzefuVar;
        this.zzb = zzcveVar;
        this.zzc = zzfikVar;
        this.zzd = zzfioVar;
        this.zzg = zzcqjVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzeckVar;
        this.zzk = zzfgnVar;
        this.zzl = zzefeVar;
        this.zzm = zzdqyVar;
    }

    public static /* synthetic */ ListenableFuture zzb(zzegb zzegbVar, zzfau zzfauVar, zzfbg zzfbgVar, zzecf zzecfVar, Throwable th) {
        zzfgc zzfgcVarZza = zzfgb.zza(zzegbVar.zzj, 12);
        zzfgcVarZza.zzd(zzfauVar.zzE);
        zzfgcVarZza.zzi();
        ListenableFuture listenableFutureZzo = zzgbs.zzo(zzecfVar.zza(zzfbgVar, zzfauVar), zzfauVar.zzR, TimeUnit.MILLISECONDS, zzegbVar.zzf);
        zzegbVar.zzh.zzf(zzfbgVar, zzfauVar, listenableFutureZzo, zzegbVar.zzc);
        zzfgm.zza(listenableFutureZzo, zzegbVar.zzk, zzfgcVarZza);
        return listenableFutureZzo;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String zzc(com.google.android.gms.internal.ads.zzfbg r5) {
        /*
            com.google.android.gms.internal.ads.zzbbz r0 = com.google.android.gms.internal.ads.zzbci.zzfD
            com.google.android.gms.internal.ads.zzbcg r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.String r1 = "No fill."
            r2 = 1
            if (r2 == r0) goto L18
            java.lang.String r0 = "No ad config."
            goto L19
        L18:
            r0 = r1
        L19:
            com.google.android.gms.internal.ads.zzfbf r5 = r5.zzb
            com.google.android.gms.internal.ads.zzfax r5 = r5.zzb
            int r2 = r5.zzf
            if (r2 == 0) goto L54
            r3 = 200(0xc8, float:2.8E-43)
            r4 = 300(0x12c, float:4.2E-43)
            if (r2 < r3) goto L3c
            if (r2 >= r4) goto L3c
            com.google.android.gms.internal.ads.zzbbz r2 = com.google.android.gms.internal.ads.zzbci.zzfC
            com.google.android.gms.internal.ads.zzbcg r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.zzb(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L54
            goto L55
        L3c:
            if (r2 < r4) goto L45
            r0 = 400(0x190, float:5.6E-43)
            if (r2 >= r0) goto L45
            java.lang.String r1 = "No location header to follow redirect or too many redirects."
            goto L55
        L45:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Received error HTTP response code: "
            r0.<init>(r1)
            r0.append(r2)
            java.lang.String r1 = r0.toString()
            goto L55
        L54:
            r1 = r0
        L55:
            com.google.android.gms.internal.ads.zzfaw r5 = r5.zzj
            if (r5 == 0) goto L5e
            java.lang.String r5 = r5.zza()
            return r5
        L5e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzegb.zzc(com.google.android.gms.internal.ads.zzfbg):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.zzgaz
    public final /* synthetic */ ListenableFuture zza(Object obj) throws Exception {
        int i;
        zzbuy zzbuyVar;
        Bundle bundle;
        final zzfbg zzfbgVar = (zzfbg) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzcq)).booleanValue() && (zzbuyVar = zzfbgVar.zzb.zzd) != null && (bundle = zzbuyVar.zzm) != null) {
            this.zzm.zza().putAll(bundle);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzcr)).booleanValue()) {
            this.zzm.zza().putLong(zzdqm.RENDERING_START.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        String strZzc = zzc(zzfbgVar);
        zzeck zzeckVar = this.zzi;
        zzfbf zzfbfVar = zzfbgVar.zzb;
        zzfax zzfaxVar = zzfbfVar.zzb;
        zzeckVar.zzi(zzfaxVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzis)).booleanValue() && (i = zzfaxVar.zzf) != 0 && (i < 200 || i >= 300)) {
            return zzgbs.zzg(new zzefy(3, strZzc));
        }
        String str = zzfaxVar.zzq;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzdO)).booleanValue() || TextUtils.isEmpty(str)) {
            for (zzfau zzfauVar : zzfbfVar.zza) {
                zzeckVar.zzd(zzfauVar);
                Iterator it = zzfauVar.zza.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        zzeckVar.zzf(zzfauVar, 0L, zzfcq.zzd(1, null, null));
                        break;
                    }
                    zzecf zzecfVarZza = this.zzg.zza(zzfauVar.zzb, (String) it.next());
                    if (zzecfVarZza == null || !zzecfVarZza.zzb(zzfbgVar, zzfauVar)) {
                    }
                }
            }
        } else {
            zzeckVar.zzh(str, zzfbfVar.zza);
        }
        zzcve zzcveVar = this.zzb;
        zzcmb zzcmbVar = new zzcmb(zzfbgVar, this.zzd, this.zzc);
        Executor executor = this.zze;
        zzcveVar.zzo(zzcmbVar, executor);
        if (zzfaxVar.zzr > 1) {
            return this.zzl.zzb(zzfbgVar);
        }
        String strZzc2 = zzc(zzfbgVar);
        zzfft zzfftVar = this.zza;
        zzfez zzfezVarZza = zzffd.zzc(zzgbs.zzg(new zzefy(3, strZzc2)), zzffn.RENDER_CONFIG_INIT, zzfftVar).zza();
        final zzefu zzefuVar = this.zzh;
        zzefuVar.zzl();
        int i2 = 0;
        for (final zzfau zzfauVar2 : zzfbfVar.zza) {
            Iterator it2 = zzfauVar2.zza.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                String str2 = (String) it2.next();
                final zzecf zzecfVarZza2 = this.zzg.zza(zzfauVar2.zzb, str2);
                if (zzecfVarZza2 != null && zzecfVarZza2.zzb(zzfbgVar, zzfauVar2)) {
                    zzfezVarZza = zzfftVar.zzb(zzffn.RENDER_CONFIG_WATERFALL, zzfezVarZza).zzh("render-config-" + i2 + Identify.UNSET_VALUE + str2).zzc(Throwable.class, new zzgaz() { // from class: com.google.android.gms.internal.ads.zzefz
                        @Override // com.google.android.gms.internal.ads.zzgaz
                        public final ListenableFuture zza(Object obj2) {
                            return zzegb.zzb(this.zza, zzfauVar2, zzfbgVar, zzecfVarZza2, (Throwable) obj2);
                        }
                    }).zza();
                    break;
                }
            }
            i2++;
        }
        Objects.requireNonNull(zzefuVar);
        zzfezVarZza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzega
            @Override // java.lang.Runnable
            public final void run() {
                zzefuVar.zzj();
            }
        }, executor);
        return zzfezVarZza;
    }
}
