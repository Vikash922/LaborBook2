package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzesb implements zzesv {
    public static final /* synthetic */ int zzb = 0;
    private static final zzesc zzc = new zzesc(new JSONArray().toString(), new Bundle());
    final String zza;
    private final zzgcd zzd;
    private final ScheduledExecutorService zze;
    private final zzein zzf;
    private final Context zzg;
    private final zzfbp zzh;
    private final zzeij zzi;
    private final zzdou zzj;
    private final zzdtk zzk;
    private final int zzl;

    zzesb(zzgcd zzgcdVar, ScheduledExecutorService scheduledExecutorService, String str, zzein zzeinVar, Context context, zzfbp zzfbpVar, zzeij zzeijVar, zzdou zzdouVar, zzdtk zzdtkVar, int i) {
        this.zzd = zzgcdVar;
        this.zze = scheduledExecutorService;
        this.zza = str;
        this.zzf = zzeinVar;
        this.zzg = context;
        this.zzh = zzfbpVar;
        this.zzi = zzeijVar;
        this.zzj = zzdouVar;
        this.zzk = zzdtkVar;
        this.zzl = i;
    }

    public static /* synthetic */ ListenableFuture zzc(zzesb zzesbVar) {
        String lowerCase = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzkY)).booleanValue() ? zzesbVar.zzh.zzf.toLowerCase(Locale.ROOT) : zzesbVar.zzh.zzf;
        final Bundle bundleZzg = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbP)).booleanValue() ? zzesbVar.zzk.zzg() : new Bundle();
        final ArrayList arrayList = new ArrayList();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbY)).booleanValue()) {
            zzesbVar.zzi(arrayList, zzesbVar.zzf.zza(zzesbVar.zza, lowerCase));
        } else {
            zzein zzeinVar = zzesbVar.zzf;
            for (Map.Entry entry : ((zzfwz) zzeinVar.zzb(zzesbVar.zza, lowerCase)).entrySet()) {
                String str = (String) entry.getKey();
                arrayList.add(zzesbVar.zzg(str, (List) entry.getValue(), zzesbVar.zzf(str), true, true));
            }
            zzesbVar.zzi(arrayList, zzeinVar.zzc());
        }
        return zzgbs.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzerw
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i = zzesb.zzb;
                JSONArray jSONArray = new JSONArray();
                for (ListenableFuture listenableFuture : arrayList) {
                    if (((JSONObject) listenableFuture.get()) != null) {
                        jSONArray.put(listenableFuture.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzesc(jSONArray.toString(), bundleZzg);
            }
        }, zzesbVar.zzd);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.common.util.concurrent.ListenableFuture zzd(final com.google.android.gms.internal.ads.zzesb r8, java.lang.String r9, final java.util.List r10, final android.os.Bundle r11, boolean r12, boolean r13) throws android.os.RemoteException {
        /*
            com.google.android.gms.internal.ads.zzbzp r7 = new com.google.android.gms.internal.ads.zzbzp
            r7.<init>()
            r0 = 0
            if (r13 == 0) goto L24
            com.google.android.gms.internal.ads.zzbbz r13 = com.google.android.gms.internal.ads.zzbci.zzbQ
            com.google.android.gms.internal.ads.zzbcg r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r13 = r1.zzb(r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 != 0) goto L24
            com.google.android.gms.internal.ads.zzeij r13 = r8.zzi
            r13.zzb(r9)
            com.google.android.gms.internal.ads.zzbqx r13 = r13.zza(r9)
            goto L32
        L24:
            com.google.android.gms.internal.ads.zzdou r13 = r8.zzj     // Catch: android.os.RemoteException -> L2b
            com.google.android.gms.internal.ads.zzbqx r13 = r13.zzb(r9)     // Catch: android.os.RemoteException -> L2b
            goto L32
        L2b:
            r13 = move-exception
            java.lang.String r1 = "Couldn't create RTB adapter : "
            com.google.android.gms.ads.internal.util.zze.zzb(r1, r13)
            r13 = r0
        L32:
            if (r13 != 0) goto L4c
            com.google.android.gms.internal.ads.zzbbz r8 = com.google.android.gms.internal.ads.zzbci.zzbG
            com.google.android.gms.internal.ads.zzbcg r10 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r8 = r10.zzb(r8)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L4b
            com.google.android.gms.internal.ads.zzeiq.zzb(r9, r7)
            goto Lbb
        L4b:
            throw r0
        L4c:
            com.google.android.gms.internal.ads.zzeiq r6 = new com.google.android.gms.internal.ads.zzeiq
            com.google.android.gms.common.util.Clock r0 = com.google.android.gms.ads.internal.zzv.zzC()
            long r4 = r0.elapsedRealtime()
            r0 = r6
            r1 = r9
            r2 = r13
            r3 = r7
            r0.<init>(r1, r2, r3, r4)
            com.google.android.gms.internal.ads.zzbbz r9 = com.google.android.gms.internal.ads.zzbci.zzbL
            com.google.android.gms.internal.ads.zzbcg r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r9 = r0.zzb(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L8e
            java.util.concurrent.ScheduledExecutorService r9 = r8.zze
            java.util.Objects.requireNonNull(r6)
            com.google.android.gms.internal.ads.zzesa r0 = new com.google.android.gms.internal.ads.zzesa
            r0.<init>()
            com.google.android.gms.internal.ads.zzbbz r1 = com.google.android.gms.internal.ads.zzbci.zzbE
            com.google.android.gms.internal.ads.zzbcg r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            r9.schedule(r0, r1, r3)
        L8e:
            if (r12 == 0) goto Lb8
            com.google.android.gms.internal.ads.zzbbz r9 = com.google.android.gms.internal.ads.zzbci.zzbS
            com.google.android.gms.internal.ads.zzbcg r12 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r9 = r12.zzb(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lb4
            com.google.android.gms.internal.ads.zzgcd r9 = r8.zzd
            com.google.android.gms.internal.ads.zzerx r12 = new com.google.android.gms.internal.ads.zzerx
            r0 = r12
            r1 = r8
            r2 = r13
            r3 = r11
            r4 = r10
            r5 = r6
            r6 = r7
            r0.<init>()
            r9.zza(r12)
            goto Lbb
        Lb4:
            r8.zzh(r13, r11, r10, r6)
            goto Lbb
        Lb8:
            r6.zzd()
        Lbb:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzesb.zzd(com.google.android.gms.internal.ads.zzesb, java.lang.String, java.util.List, android.os.Bundle, boolean, boolean):com.google.common.util.concurrent.ListenableFuture");
    }

    public static /* synthetic */ void zze(zzesb zzesbVar, zzbqx zzbqxVar, Bundle bundle, List list, zzeiq zzeiqVar, zzbzp zzbzpVar) {
        try {
            zzesbVar.zzh(zzbqxVar, bundle, list, zzeiqVar);
        } catch (RemoteException e) {
            zzbzpVar.zzd(e);
        }
    }

    private final Bundle zzf(String str) {
        Bundle bundle = this.zzh.zzd.zzm;
        if (bundle != null) {
            return bundle.getBundle(str);
        }
        return null;
    }

    private final zzgbj zzg(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgay zzgayVar = new zzgay() { // from class: com.google.android.gms.internal.ads.zzery
            @Override // com.google.android.gms.internal.ads.zzgay
            public final ListenableFuture zza() {
                return zzesb.zzd(this.zza, str, list, bundle, z, z2);
            }
        };
        zzgcd zzgcdVar = this.zzd;
        zzgbj zzgbjVarZzE = zzgbj.zzE(zzgbs.zzk(zzgayVar, zzgcdVar));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbL)).booleanValue()) {
            zzgbjVarZzE = (zzgbj) zzgbs.zzo(zzgbjVarZzE, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbE)).longValue(), TimeUnit.MILLISECONDS, this.zze);
        }
        return (zzgbj) zzgbs.zze(zzgbjVarZzE, Throwable.class, new zzftl() { // from class: com.google.android.gms.internal.ads.zzerz
            @Override // com.google.android.gms.internal.ads.zzftl
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                int i = zzesb.zzb;
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                String str2 = str;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error calling adapter: ".concat(String.valueOf(str2)));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zznb)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                    return null;
                }
                com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                return null;
            }
        }, zzgcdVar);
    }

    private final void zzh(zzbqx zzbqxVar, Bundle bundle, List list, zzeiq zzeiqVar) throws RemoteException {
        zzbqxVar.zzh(ObjectWrapper.wrap(this.zzg), this.zza, bundle, (Bundle) list.get(0), this.zzh.zze, zzeiqVar);
    }

    private final void zzi(List list, Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            zzeir zzeirVar = (zzeir) ((Map.Entry) it.next()).getValue();
            String str = zzeirVar.zza;
            list.add(zzg(str, Collections.singletonList(zzeirVar.zze), zzf(str), zzeirVar.zzb, zzeirVar.zzc));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzesv
    public final ListenableFuture zzb() {
        if (this.zzl == 2) {
            return zzgbs.zzh(zzc);
        }
        zzfbp zzfbpVar = this.zzh;
        if (zzfbpVar.zzr) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbR)).split(",")).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfbpVar.zzd)))) {
                return zzgbs.zzh(zzc);
            }
        }
        return zzgbs.zzk(new zzgay() { // from class: com.google.android.gms.internal.ads.zzerv
            @Override // com.google.android.gms.internal.ads.zzgay
            public final ListenableFuture zza() {
                return zzesb.zzc(this.zza);
            }
        }, this.zzd);
    }
}
