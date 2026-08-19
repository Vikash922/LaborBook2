package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzauy;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzbdn;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzben;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbyh;
import com.google.android.gms.internal.ads.zzbym;
import com.google.android.gms.internal.ads.zzbzk;
import com.google.android.gms.internal.ads.zzcgl;
import com.google.android.gms.internal.ads.zzdmt;
import com.google.android.gms.internal.ads.zzdrj;
import com.google.android.gms.internal.ads.zzfbt;
import com.google.android.gms.internal.ads.zzfco;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfio;
import com.google.android.gms.internal.ads.zzftl;
import com.google.android.gms.internal.ads.zzfun;
import com.google.android.gms.internal.ads.zzgay;
import com.google.android.gms.internal.ads.zzgaz;
import com.google.android.gms.internal.ads.zzgbj;
import com.google.android.gms.internal.ads.zzgbs;
import com.google.android.gms.internal.ads.zzgcd;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzau extends zzbyh {
    protected static final List zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    protected static final List zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    protected static final List zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    protected static final List zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    private final List zzB;
    private final List zzC;
    private final List zzD;
    private final List zzE;
    private final zzbdn zzI;
    private final zzo zzJ;
    private final zzf zzK;
    private final zzcgl zzf;
    private Context zzg;
    private final zzauy zzh;
    private final zzfbt zzi;
    private final zzfco zzj;
    private final zzgcd zzk;
    private final ScheduledExecutorService zzl;
    private zzbtq zzm;
    private final zzdrj zzp;
    private final zzfio zzq;
    private final VersionInfoParcel zzy;
    private String zzz;
    private Point zzn = new Point();
    private Point zzo = new Point();
    private final AtomicInteger zzx = new AtomicInteger(0);
    private final AtomicBoolean zzF = new AtomicBoolean(false);
    private final AtomicBoolean zzG = new AtomicBoolean(false);
    private final AtomicInteger zzH = new AtomicInteger(0);
    private final boolean zzr = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhj)).booleanValue();
    private final boolean zzs = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhi)).booleanValue();
    private final boolean zzt = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhl)).booleanValue();
    private final boolean zzu = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhn)).booleanValue();
    private final String zzv = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhm);
    private final String zzw = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzho);
    private final String zzA = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhp);

    zzau(zzcgl zzcglVar, Context context, zzauy zzauyVar, zzfco zzfcoVar, zzgcd zzgcdVar, ScheduledExecutorService scheduledExecutorService, zzdrj zzdrjVar, zzfio zzfioVar, VersionInfoParcel versionInfoParcel, zzbdn zzbdnVar, zzfbt zzfbtVar, zzo zzoVar, zzf zzfVar) {
        List listZzZ;
        this.zzf = zzcglVar;
        this.zzg = context;
        this.zzh = zzauyVar;
        this.zzi = zzfbtVar;
        this.zzj = zzfcoVar;
        this.zzk = zzgcdVar;
        this.zzl = scheduledExecutorService;
        this.zzp = zzdrjVar;
        this.zzq = zzfioVar;
        this.zzy = versionInfoParcel;
        this.zzI = zzbdnVar;
        this.zzJ = zzoVar;
        this.zzK = zzfVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhq)).booleanValue()) {
            this.zzB = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhr));
            this.zzC = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhs));
            this.zzD = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzht));
            listZzZ = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhu));
        } else {
            this.zzB = zza;
            this.zzC = zzb;
            this.zzD = zzc;
            listZzZ = zzd;
        }
        this.zzE = listZzZ;
    }

    public static /* synthetic */ ArrayList zzC(zzau zzauVar, List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzauVar.zzQ(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zzaa(uri, "nas", str));
            }
        }
        return arrayList;
    }

    public static /* synthetic */ ArrayList zzD(zzau zzauVar, List list, IObjectWrapper iObjectWrapper) throws Exception {
        zzauy zzauyVar = zzauVar.zzh;
        String strZzh = zzauyVar.zzc() != null ? zzauyVar.zzc().zzh(zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null) : "";
        if (TextUtils.isEmpty(strZzh)) {
            throw new Exception("Failed to get view signals.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (zzauVar.zzQ(uri)) {
                arrayList.add(zzaa(uri, "ms", strZzh));
            } else {
                String strValueOf = String.valueOf(String.valueOf(uri));
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(strValueOf));
                arrayList.add(uri);
            }
        }
        if (arrayList.isEmpty()) {
            throw new Exception("Empty impression URLs result.");
        }
        return arrayList;
    }

    public static /* synthetic */ void zzH(zzau zzauVar, zzdmt[] zzdmtVarArr) {
        zzdmt zzdmtVar = zzdmtVarArr[0];
        if (zzdmtVar != null) {
            zzauVar.zzj.zzb(zzgbs.zzh(zzdmtVar));
        }
    }

    static /* bridge */ /* synthetic */ void zzJ(zzau zzauVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzauVar.zzP((Uri) it.next())) {
                zzauVar.zzx.getAndIncrement();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzac zzR(android.content.Context r14, java.lang.String r15, java.lang.String r16, com.google.android.gms.ads.internal.client.zzr r17, com.google.android.gms.ads.internal.client.zzm r18, int r19, java.lang.String r20, android.os.Bundle r21, com.google.android.gms.internal.ads.zzbym r22) {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzau.zzR(android.content.Context, java.lang.String, java.lang.String, com.google.android.gms.ads.internal.client.zzr, com.google.android.gms.ads.internal.client.zzm, int, java.lang.String, android.os.Bundle, com.google.android.gms.internal.ads.zzbym):com.google.android.gms.ads.nonagon.signalgeneration.zzac");
    }

    private final ListenableFuture zzS(final String str) {
        final zzdmt[] zzdmtVarArr = new zzdmt[1];
        ListenableFuture listenableFutureZza = this.zzj.zza();
        zzgaz zzgazVar = new zzgaz() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaf
            @Override // com.google.android.gms.internal.ads.zzgaz
            public final ListenableFuture zza(Object obj) {
                return zzau.zzx(this.zza, zzdmtVarArr, str, (zzdmt) obj);
            }
        };
        zzgcd zzgcdVar = this.zzk;
        ListenableFuture listenableFutureZzn = zzgbs.zzn(listenableFutureZza, zzgazVar, zzgcdVar);
        listenableFutureZzn.addListener(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzag
            @Override // java.lang.Runnable
            public final void run() {
                zzau.zzH(this.zza, zzdmtVarArr);
            }
        }, zzgcdVar);
        return (zzgbj) zzgbs.zze((zzgbj) zzgbs.zzm((zzgbj) zzgbs.zzo(zzgbj.zzE(listenableFutureZzn), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhH)).intValue(), TimeUnit.MILLISECONDS, this.zzl), new zzftl() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzam
            @Override // com.google.android.gms.internal.ads.zzftl
            public final Object apply(Object obj) {
                int i = zzau.zze;
                return ((JSONObject) obj).optString("nas");
            }
        }, zzgcdVar), Exception.class, new zzftl() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzan
            @Override // com.google.android.gms.internal.ads.zzftl
            public final Object apply(Object obj) {
                int i = zzau.zze;
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", (Exception) obj);
                return null;
            }
        }, zzgcdVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzT() {
        if (((Boolean) zzben.zze.zze()).booleanValue()) {
            this.zzJ.zze();
        } else {
            zzgbs.zzr(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzlh)).booleanValue() ? zzgbs.zzk(new zzgay() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzad
                @Override // com.google.android.gms.internal.ads.zzgay
                public final ListenableFuture zza() {
                    zzau zzauVar = this.zza;
                    return zzauVar.zzR(zzauVar.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb();
                }
            }, zzbzk.zza) : zzR(this.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb(), new zzat(this), this.zzf.zzA());
        }
    }

    private final void zzU() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjG)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjJ)).booleanValue()) {
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjN)).booleanValue() && this.zzF.getAndSet(true)) {
                return;
            }
            zzT();
        }
    }

    private final void zzV(List list, final IObjectWrapper iObjectWrapper, zzbtn zzbtnVar, boolean z) {
        ListenableFuture listenableFutureZzb;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhG)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The updating URL feature is not enabled.");
            try {
                zzbtnVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                return;
            }
        }
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (zzP((Uri) it.next())) {
                i2++;
            }
        }
        if (i2 > 1) {
            String strValueOf = String.valueOf(String.valueOf(list));
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Multiple google urls found: ".concat(strValueOf));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (zzP(uri)) {
                zzgcd zzgcdVar = this.zzk;
                listenableFutureZzb = zzgcdVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzah
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzau.zzn(this.zza, uri, iObjectWrapper);
                    }
                });
                if (zzY()) {
                    listenableFutureZzb = zzgbs.zzn(listenableFutureZzb, new zzgaz() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzai
                        @Override // com.google.android.gms.internal.ads.zzgaz
                        public final ListenableFuture zza(Object obj) {
                            zzau zzauVar = this.zza;
                            return zzgbs.zzm(zzauVar.zzS("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzftl() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaj
                                @Override // com.google.android.gms.internal.ads.zzftl
                                public final Object apply(Object obj2) {
                                    return zzau.zzd(zzauVar, uri, (String) obj2);
                                }
                            }, zzauVar.zzk);
                        }
                    }, zzgcdVar);
                } else {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
                }
            } else {
                String strValueOf2 = String.valueOf(String.valueOf(uri));
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(strValueOf2));
                listenableFutureZzb = zzgbs.zzh(uri);
            }
            arrayList.add(listenableFutureZzb);
        }
        zzgbs.zzr(zzgbs.zzd(arrayList), new zzas(this, zzbtnVar, z), this.zzf.zzA());
    }

    private final void zzW(final List list, final IObjectWrapper iObjectWrapper, zzbtn zzbtnVar, boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhG)).booleanValue()) {
            try {
                zzbtnVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                return;
            }
        }
        zzgcd zzgcdVar = this.zzk;
        ListenableFuture listenableFutureZzb = zzgcdVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzao
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzau.zzD(this.zza, list, iObjectWrapper);
            }
        });
        if (zzY()) {
            listenableFutureZzb = zzgbs.zzn(listenableFutureZzb, new zzgaz() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzap
                @Override // com.google.android.gms.internal.ads.zzgaz
                public final ListenableFuture zza(Object obj) {
                    zzau zzauVar = this.zza;
                    return zzgbs.zzm(zzauVar.zzS("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzftl() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzae
                        @Override // com.google.android.gms.internal.ads.zzftl
                        public final Object apply(Object obj2) {
                            return zzau.zzC(this.zza, list, (String) obj2);
                        }
                    }, zzauVar.zzk);
                }
            }, zzgcdVar);
        } else {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
        }
        zzgbs.zzr(listenableFutureZzb, new zzar(this, zzbtnVar, z), this.zzf.zzA());
    }

    private static boolean zzX(Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private final boolean zzY() {
        Map map;
        zzbtq zzbtqVar = this.zzm;
        return (zzbtqVar == null || (map = zzbtqVar.zzb) == null || map.isEmpty()) ? false : true;
    }

    private static final List zzZ(String str) {
        String[] strArrSplit = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            if (!zzfun.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri zzaa(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf("&adurl=");
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf("?adurl=");
        }
        if (iIndexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = iIndexOf + 1;
        return Uri.parse(string.substring(0, i) + str + "=" + str2 + "&" + string.substring(i));
    }

    public static /* synthetic */ Uri zzd(zzau zzauVar, Uri uri, String str) {
        return !TextUtils.isEmpty(str) ? zzaa(uri, "nas", str) : uri;
    }

    public static /* synthetic */ Uri zzn(zzau zzauVar, Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        zzfbt zzfbtVar;
        try {
            uri = (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmc)).booleanValue() || (zzfbtVar = zzauVar.zzi) == null) ? zzauVar.zzh.zza(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null) : zzfbtVar.zza(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } catch (zzauz e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    static /* bridge */ /* synthetic */ zzfgn zzs(ListenableFuture listenableFuture, zzbym zzbymVar) {
        if (!zzfgq.zza() || !((Boolean) zzbeb.zze.zze()).booleanValue()) {
            return null;
        }
        try {
            zzfgn zzfgnVarZza = ((zzac) zzgbs.zzp(listenableFuture)).zza();
            zzfgnVarZza.zzd(new ArrayList(Collections.singletonList(zzbymVar.zzb)));
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzbymVar.zzd;
            zzfgnVarZza.zzb(zzmVar == null ? "" : zzmVar.zzp);
            zzfgnVarZza.zzf(zzmVar.zzm);
            return zzfgnVarZza;
        } catch (ExecutionException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            return null;
        }
    }

    public static /* synthetic */ ListenableFuture zzx(zzau zzauVar, zzdmt[] zzdmtVarArr, String str, zzdmt zzdmtVar) throws JSONException {
        zzdmtVarArr[0] = zzdmtVar;
        Context context = zzauVar.zzg;
        zzbtq zzbtqVar = zzauVar.zzm;
        Map map = zzbtqVar.zzb;
        JSONObject jSONObjectZzd = zzbv.zzd(context, map, map, zzbtqVar.zza, null);
        JSONObject jSONObjectZzg = zzbv.zzg(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject jSONObjectZzf = zzbv.zzf(zzauVar.zzm.zza);
        JSONObject jSONObjectZze = zzbv.zze(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", jSONObjectZzd);
        jSONObject.put("ad_view_signal", jSONObjectZzg);
        jSONObject.put("scroll_view_signal", jSONObjectZzf);
        jSONObject.put("lock_screen_signal", jSONObjectZze);
        if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
            jSONObject.put("click_signal", zzbv.zzc(null, zzauVar.zzg, zzauVar.zzo, zzauVar.zzn));
        }
        return zzdmtVar.zzg(str, jSONObject);
    }

    final boolean zzP(Uri uri) {
        return zzX(uri, this.zzB, this.zzC);
    }

    final boolean zzQ(Uri uri) {
        return zzX(uri, this.zzD, this.zzE);
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjT)).booleanValue()) {
            return ObjectWrapper.wrap(null);
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        CustomTabsClient customTabsClient = (CustomTabsClient) ObjectWrapper.unwrap(iObjectWrapper2);
        CustomTabsCallback customTabsCallback = (CustomTabsCallback) ObjectWrapper.unwrap(iObjectWrapper3);
        zzbdn zzbdnVar = this.zzI;
        zzbdnVar.zzg(context, customTabsClient, str, customTabsCallback);
        if (((Boolean) zzben.zze.zze()).booleanValue()) {
            this.zzJ.zze();
        }
        if (((Boolean) zzben.zzc.zze()).booleanValue()) {
            this.zzK.zzb(null);
        }
        return ObjectWrapper.wrap(zzbdnVar.zzb());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007c A[PHI: r1
      0x007c: PHI (r1v3 int) = (r1v2 int), (r1v2 int), (r1v2 int), (r1v22 int) binds: [B:6:0x0057, B:8:0x0063, B:11:0x0070, B:14:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d5  */
    @Override // com.google.android.gms.internal.ads.zzbyi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(com.google.android.gms.dynamic.IObjectWrapper r11, final com.google.android.gms.internal.ads.zzbym r12, com.google.android.gms.internal.ads.zzbyf r13) {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzau.zzf(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.ads.zzbym, com.google.android.gms.internal.ads.zzbyf):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final void zzg(zzbtq zzbtqVar) {
        this.zzm = zzbtqVar;
        this.zzj.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzV(list, iObjectWrapper, zzbtnVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzW(list, iObjectWrapper, zzbtnVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjF)).booleanValue()) {
            zzbbz zzbbzVar = zzbci.zzhx;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbbzVar)).booleanValue()) {
                zzU();
            }
            WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("The webView cannot be null.");
                return;
            }
            zzf zzfVar = this.zzK;
            final zzj zzjVar = new zzj(webView, zzfVar, zzbzk.zzf);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzp, this.zzq, this.zzi, this.zzJ, zzfVar, zzjVar), "gmaSdk");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjP)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzs();
            }
            if (((Boolean) zzben.zzc.zze()).booleanValue()) {
                zzfVar.zzb(webView);
                if (((Boolean) zzben.zzd.zze()).booleanValue()) {
                    zzbzk.zzd.scheduleWithFixedDelay(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzjVar.zzb();
                        }
                    }, 0L, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjQ)).intValue(), TimeUnit.MILLISECONDS);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbbzVar)).booleanValue()) {
                zzU();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final void zzk(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzhG)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
            zzbtq zzbtqVar = this.zzm;
            this.zzn = zzbv.zza(motionEvent, zzbtqVar == null ? null : zzbtqVar.zza);
            if (motionEvent.getAction() == 0) {
                this.zzo = this.zzn;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setLocation(this.zzn.x, this.zzn.y);
            this.zzh.zzd(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzV(list, iObjectWrapper, zzbtnVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbyi
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzW(list, iObjectWrapper, zzbtnVar, false);
    }
}
