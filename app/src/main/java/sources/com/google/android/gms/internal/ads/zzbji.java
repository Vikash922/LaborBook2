package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbji {
    public static final zzbjj zza = new zzbjj() { // from class: com.google.android.gms.internal.ads.zzbig
        @Override // com.google.android.gms.internal.ads.zzbjj
        public final void zza(Object obj, Map map) {
            zzcfs zzcfsVar = (zzcfs) obj;
            zzbjj zzbjjVar = zzbji.zza;
            String str = (String) map.get("urls");
            if (TextUtils.isEmpty(str)) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] strArrSplit = str.split(",");
            HashMap map2 = new HashMap();
            PackageManager packageManager = zzcfsVar.getContext().getPackageManager();
            for (String str2 : strArrSplit) {
                String[] strArrSplit2 = str2.split(";", 2);
                boolean z = true;
                if (packageManager.resolveActivity(new Intent(strArrSplit2.length > 1 ? strArrSplit2[1].trim() : "android.intent.action.VIEW", Uri.parse(strArrSplit2[0].trim())), 65536) == null) {
                    z = false;
                }
                Boolean boolValueOf = Boolean.valueOf(z);
                map2.put(str2, boolValueOf);
                com.google.android.gms.ads.internal.util.zze.zza("/canOpenURLs;" + str2 + ";" + boolValueOf);
            }
            ((zzbme) zzcfsVar).zzd("openableURLs", map2);
        }
    };
    public static final zzbjj zzb = new zzbjj() { // from class: com.google.android.gms.internal.ads.zzbii
        @Override // com.google.android.gms.internal.ads.zzbjj
        public final void zza(Object obj, Map map) {
            zzcfs zzcfsVar = (zzcfs) obj;
            zzbjj zzbjjVar = zzbji.zza;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzio)).booleanValue()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("canOpenAppGmsgHandler disabled.");
                return;
            }
            String str = (String) map.get(InMobiNetworkValues.PACKAGE_NAME);
            if (TextUtils.isEmpty(str)) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Package name missing in canOpenApp GMSG.");
                return;
            }
            HashMap map2 = new HashMap();
            Boolean boolValueOf = Boolean.valueOf(zzcfsVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
            map2.put(str, boolValueOf);
            com.google.android.gms.ads.internal.util.zze.zza("/canOpenApp;" + str + ";" + boolValueOf);
            ((zzbme) zzcfsVar).zzd("openableApp", map2);
        }
    };
    public static final zzbjj zzc = new zzbjj() { // from class: com.google.android.gms.internal.ads.zzbil
        @Override // com.google.android.gms.internal.ads.zzbjj
        public final void zza(Object obj, Map map) {
            zzbji.zzb((zzcfs) obj, map);
        }
    };
    public static final zzbjj zzd = new zzbja();
    public static final zzbjj zze = new zzbjb();
    public static final zzbjj zzf = new zzbjj() { // from class: com.google.android.gms.internal.ads.zzbim
        @Override // com.google.android.gms.internal.ads.zzbjj
        public final void zza(Object obj, Map map) {
            zzcfs zzcfsVar = (zzcfs) obj;
            zzbjj zzbjjVar = zzbji.zza;
            String str = (String) map.get("u");
            if (str == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from httpTrack GMSG.");
            } else {
                zzcec zzcecVar = (zzcec) zzcfsVar;
                new com.google.android.gms.ads.internal.util.zzbw(zzcfsVar.getContext(), ((zzcfz) zzcfsVar).zzm().afmaVersion, str, null, zzcecVar.zzD() != null ? zzcecVar.zzD().zzax : null).zzb();
            }
        }
    };
    public static final zzbjj zzg = new zzbjc();
    public static final zzbjj zzh = new zzbjd();
    public static final zzbjj zzi = new zzbjj() { // from class: com.google.android.gms.internal.ads.zzbij
        @Override // com.google.android.gms.internal.ads.zzbjj
        public final void zza(Object obj, Map map) {
            zzcfy zzcfyVar = (zzcfy) obj;
            zzbjj zzbjjVar = zzbji.zza;
            String str = (String) map.get("tx");
            String str2 = (String) map.get("ty");
            String str3 = (String) map.get("td");
            try {
                int i = Integer.parseInt(str);
                int i2 = Integer.parseInt(str2);
                int i3 = Integer.parseInt(str3);
                zzauy zzauyVarZzI = zzcfyVar.zzI();
                if (zzauyVarZzI != null) {
                    zzauyVarZzI.zzc().zzl(i, i2, i3);
                }
            } catch (NumberFormatException unused) {
                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse touch parameters from gmsg.");
            }
        }
    };
    public static final zzbjj zzj = new zzbje();
    public static final zzbjj zzk = new zzbjf();
    public static final zzbjj zzl = new zzccg();
    public static final zzbjj zzm = new zzcch();
    public static final zzbjj zzn = new zzbic();
    public static final zzbjz zzo = new zzbjz();
    public static final zzbjj zzp = new zzbjg();
    public static final zzbjj zzq = new zzbjh();
    public static final zzbjj zzr = new zzbin();
    public static final zzbjj zzs = new zzbio();
    public static final zzbjj zzt = new zzbip();
    public static final zzbjj zzu = new zzbiq();
    public static final zzbjj zzv = new zzbir();
    public static final zzbjj zzw = new zzbis();
    public static final zzbjj zzx = new zzbit();
    public static final zzbjj zzy = new zzbiu();
    public static final zzbjj zzz = new zzbiv();
    public static final zzbjj zzA = new zzbiw();
    public static final zzbjj zzB = new zzbiy();
    public static final zzbjj zzC = new zzbiz();

    public static ListenableFuture zza(zzcel zzcelVar, String str) {
        Uri uriZza = Uri.parse(str);
        try {
            zzauy zzauyVarZzI = zzcelVar.zzI();
            zzfbt zzfbtVarZzS = zzcelVar.zzS();
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmc)).booleanValue() || zzfbtVarZzS == null) {
                if (zzauyVarZzI != null && zzauyVarZzI.zzf(uriZza)) {
                    uriZza = zzauyVarZzI.zza(uriZza, zzcelVar.getContext(), zzcelVar.zzF(), zzcelVar.zzi());
                }
            } else if (zzauyVarZzI != null && zzauyVarZzI.zzf(uriZza)) {
                uriZza = zzfbtVarZzS.zza(uriZza, zzcelVar.getContext(), zzcelVar.zzF(), zzcelVar.zzi());
            }
        } catch (zzauz unused) {
            String strConcat = "Unable to append parameter to URL: ".concat(str);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(strConcat);
        }
        Map map = new HashMap();
        if (zzcelVar.zzD() != null) {
            map = zzcelVar.zzD().zzaw;
        }
        final String strZzb = zzbxy.zzb(uriZza, zzcelVar.getContext(), map);
        long jLongValue = ((Long) zzbeh.zze.zze()).longValue();
        if (jLongValue <= 0 || jLongValue > 251310000) {
            return zzgbs.zzh(strZzb);
        }
        zzgbj zzgbjVar = (zzgbj) zzgbs.zze(zzgbj.zzE(zzcelVar.zzT()), Throwable.class, new zzftl() { // from class: com.google.android.gms.internal.ads.zzbid
            @Override // com.google.android.gms.internal.ads.zzftl
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzbjj zzbjjVar = zzbji.zza;
                if (!((Boolean) zzbeh.zzi.zze()).booleanValue()) {
                    return "failure_click_attok";
                }
                com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "prepareClickUrl.attestation1");
                return "failure_click_attok";
            }
        }, zzbzk.zzg);
        zzftl zzftlVar = new zzftl() { // from class: com.google.android.gms.internal.ads.zzbie
            /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
            @Override // com.google.android.gms.internal.ads.zzftl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object apply(java.lang.Object r7) {
                /*
                    r6 = this;
                    java.lang.String r7 = (java.lang.String) r7
                    com.google.android.gms.internal.ads.zzbjj r0 = com.google.android.gms.internal.ads.zzbji.zza
                    java.lang.String r0 = r1
                    if (r7 != 0) goto L9
                    goto L7a
                L9:
                    com.google.android.gms.internal.ads.zzbds r1 = com.google.android.gms.internal.ads.zzbeh.zzf
                    java.lang.Object r1 = r1.zze()
                    java.lang.Boolean r1 = (java.lang.Boolean) r1
                    boolean r1 = r1.booleanValue()
                    if (r1 != 0) goto L18
                    goto L3f
                L18:
                    r1 = 3
                    java.lang.String[] r2 = new java.lang.String[r1]
                    r3 = 0
                    java.lang.String r4 = ".doubleclick.net"
                    r2[r3] = r4
                    java.lang.String r4 = ".googleadservices.com"
                    r5 = 1
                    r2[r5] = r4
                    r4 = 2
                    java.lang.String r5 = ".googlesyndication.com"
                    r2[r4] = r5
                    android.net.Uri r4 = android.net.Uri.parse(r0)
                    java.lang.String r4 = r4.getHost()
                L32:
                    if (r3 >= r1) goto L7a
                    r5 = r2[r3]
                    boolean r5 = r4.endsWith(r5)
                    if (r5 != 0) goto L3f
                    int r3 = r3 + 1
                    goto L32
                L3f:
                    com.google.android.gms.internal.ads.zzbds r1 = com.google.android.gms.internal.ads.zzbeh.zza
                    java.lang.Object r1 = r1.zze()
                    java.lang.String r1 = (java.lang.String) r1
                    com.google.android.gms.internal.ads.zzbds r2 = com.google.android.gms.internal.ads.zzbeh.zzb
                    java.lang.Object r2 = r2.zze()
                    java.lang.String r2 = (java.lang.String) r2
                    boolean r3 = android.text.TextUtils.isEmpty(r1)
                    if (r3 != 0) goto L59
                    java.lang.String r0 = r0.replace(r1, r7)
                L59:
                    boolean r1 = android.text.TextUtils.isEmpty(r2)
                    if (r1 != 0) goto L7a
                    android.net.Uri r1 = android.net.Uri.parse(r0)
                    java.lang.String r3 = r1.getQueryParameter(r2)
                    boolean r3 = android.text.TextUtils.isEmpty(r3)
                    if (r3 == 0) goto L7a
                    android.net.Uri$Builder r0 = r1.buildUpon()
                    android.net.Uri$Builder r7 = r0.appendQueryParameter(r2, r7)
                    java.lang.String r7 = r7.toString()
                    return r7
                L7a:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbie.apply(java.lang.Object):java.lang.Object");
            }
        };
        zzgcd zzgcdVar = zzbzk.zzg;
        return (zzgbj) zzgbs.zze((zzgbj) zzgbs.zzm(zzgbjVar, zzftlVar, zzgcdVar), Throwable.class, new zzftl() { // from class: com.google.android.gms.internal.ads.zzbif
            @Override // com.google.android.gms.internal.ads.zzftl
            public final Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzbjj zzbjjVar = zzbji.zza;
                if (((Boolean) zzbeh.zzi.zze()).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "prepareClickUrl.attestation2");
                }
                return strZzb;
            }
        }, zzgcdVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void zzb(com.google.android.gms.internal.ads.zzcfs r16, java.util.Map r17) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbji.zzb(com.google.android.gms.internal.ads.zzcfs, java.util.Map):void");
    }

    public static void zzc(Map map, zzddc zzddcVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzkP)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals(AppEventsConstants.EVENT_PARAM_VALUE_YES) && zzddcVar != null) {
            zzddcVar.zzdd();
        }
    }
}
