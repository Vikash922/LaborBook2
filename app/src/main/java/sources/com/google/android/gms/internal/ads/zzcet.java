package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.ViewCompat;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
public class zzcet extends WebViewClient implements zzcgd {
    public static final /* synthetic */ int zzb = 0;
    private zzdre zzA;
    private boolean zzB;
    private boolean zzC;
    private int zzD;
    private boolean zzE;
    private final zzebe zzG;
    private View.OnAttachStateChangeListener zzH;
    protected zzbxi zza;
    private final zzcel zzc;
    private final zzbbg zzd;
    private com.google.android.gms.ads.internal.client.zza zzg;
    private com.google.android.gms.ads.internal.overlay.zzr zzh;
    private zzcgb zzi;
    private zzcgc zzj;
    private zzbhz zzk;
    private zzbib zzl;
    private zzddc zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private com.google.android.gms.ads.internal.overlay.zzac zzw;
    private zzbsb zzx;
    private com.google.android.gms.ads.internal.zzb zzy;
    private final HashMap zze = new HashMap();
    private final Object zzf = new Object();
    private int zzp = 0;
    private String zzq = "";
    private String zzr = "";
    private zzbrw zzz = null;
    private final HashSet zzF = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzfJ)).split(",")));

    public zzcet(zzcel zzcelVar, zzbbg zzbbgVar, boolean z, zzbsb zzbsbVar, zzbrw zzbrwVar, zzebe zzebeVar) {
        this.zzd = zzbbgVar;
        this.zzc = zzcelVar;
        this.zzs = z;
        this.zzx = zzbsbVar;
        this.zzG = zzebeVar;
    }

    private static WebResourceResponse zzW() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzaY)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f5, code lost:
    
        com.google.android.gms.ads.internal.zzv.zzq();
        com.google.android.gms.ads.internal.zzv.zzq();
        r14 = r3.getContentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0103, code lost:
    
        r4 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0107, code lost:
    
        if (android.text.TextUtils.isEmpty(r14) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0109, code lost:
    
        r6 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010b, code lost:
    
        r6 = r14.split(";")[0].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0116, code lost:
    
        com.google.android.gms.ads.internal.zzv.zzq();
        r14 = r3.getContentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0121, code lost:
    
        if (android.text.TextUtils.isEmpty(r14) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0123, code lost:
    
        r7 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0125, code lost:
    
        r14 = r14.split(";");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x012a, code lost:
    
        if (r14.length != 1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012d, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012f, code lost:
    
        if (r0 >= r14.length) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x013d, code lost:
    
        if (r14[r0].trim().startsWith("charset") == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013f, code lost:
    
        r1 = r14[r0].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x014c, code lost:
    
        if (r1.length <= 1) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x014e, code lost:
    
        r4 = r1[1].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0155, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0158, code lost:
    
        r14 = r3.getHeaderFields();
        r10 = new java.util.HashMap(r14.size());
        r14 = r14.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0171, code lost:
    
        if (r14.hasNext() == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0173, code lost:
    
        r0 = r14.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x017d, code lost:
    
        if (r0.getKey() == null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0183, code lost:
    
        if (r0.getValue() == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x018f, code lost:
    
        if (r0.getValue().isEmpty() != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0191, code lost:
    
        r10.put(r0.getKey(), r0.getValue().get(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a7, code lost:
    
        r5 = com.google.android.gms.ads.internal.zzv.zzr().zzb(r6, r7, r3.getResponseCode(), r3.getResponseMessage(), r10, r3.getInputStream());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse zzX(java.lang.String r13, java.util.Map r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcet.zzX(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzY(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.zza("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbjj) it.next()).zza(this.zzc, map);
        }
    }

    private final void zzZ() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzH;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaa(final View view, final zzbxi zzbxiVar, final int i) {
        if (!zzbxiVar.zzi() || i <= 0) {
            return;
        }
        zzbxiVar.zzg(view);
        if (zzbxiVar.zzi()) {
            com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcem
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzaa(view, zzbxiVar, i - 1);
                }
            }, 100L);
        }
    }

    private static final boolean zzab(zzcel zzcelVar) {
        return zzcelVar.zzD() != null && zzcelVar.zzD().zzb();
    }

    private static final boolean zzac(boolean z, zzcel zzcelVar) {
        return (!z || zzcelVar.zzO().zzi() || zzcelVar.zzU().equals("interstitial_mb")) ? false : true;
    }

    public static /* synthetic */ void zzh(zzcet zzcetVar) {
        zzcel zzcelVar = zzcetVar.zzc;
        zzcelVar.zzad();
        com.google.android.gms.ads.internal.overlay.zzm zzmVarZzL = zzcelVar.zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzz();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            zzn(uri);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            zzcel zzcelVar = this.zzc;
            if (zzcelVar.zzaE()) {
                com.google.android.gms.ads.internal.util.zze.zza("Blank page loaded, 1...");
                zzcelVar.zzX();
                return;
            }
            this.zzB = true;
            zzcgc zzcgcVar = this.zzj;
            if (zzcgcVar != null) {
                zzcgcVar.zza();
                this.zzj = null;
            }
            zzk();
            zzcel zzcelVar2 = this.zzc;
            if (zzcelVar2.zzL() != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzlY)).booleanValue()) {
                    zzcelVar2.zzL().zzG(str);
                }
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
        this.zzp = i;
        this.zzq = str;
        this.zzr = str2;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzc.zzaD(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri uriZza = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriZza.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriZza.getHost())) {
            zzn(uriZza);
        } else {
            if (this.zzn && webView == this.zzc.zzG()) {
                String scheme = uriZza.getScheme();
                if (ProxyConfig.MATCH_HTTP.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                        zzbxi zzbxiVar = this.zza;
                        if (zzbxiVar != null) {
                            zzbxiVar.zzh(str);
                        }
                        this.zzg = null;
                    }
                    zzddc zzddcVar = this.zzm;
                    if (zzddcVar != null) {
                        zzddcVar.zzdd();
                        this.zzm = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            zzcel zzcelVar = this.zzc;
            if (zzcelVar.zzG().willNotDraw()) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            } else {
                try {
                    zzauy zzauyVarZzI = zzcelVar.zzI();
                    zzfbt zzfbtVarZzS = zzcelVar.zzS();
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmc)).booleanValue() || zzfbtVarZzS == null) {
                        if (zzauyVarZzI != null && zzauyVarZzI.zzf(uriZza)) {
                            uriZza = zzauyVarZzI.zza(uriZza, zzcelVar.getContext(), (View) zzcelVar, zzcelVar.zzi());
                        }
                    } else if (zzauyVarZzI != null && zzauyVarZzI.zzf(uriZza)) {
                        uriZza = zzfbtVarZzS.zza(uriZza, zzcelVar.getContext(), (View) zzcelVar, zzcelVar.zzi());
                    }
                } catch (zzauz unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzy;
                if (zzbVar == null || zzbVar.zzc()) {
                    com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", uriZza.toString(), null, null, null, null, null, null);
                    zzcel zzcelVar2 = this.zzc;
                    zzv(zzcVar, true, false, zzcelVar2 != null ? zzcelVar2.zzr() : "");
                } else {
                    zzbVar.zzb(str);
                }
            }
        }
        return true;
    }

    public final void zzA(boolean z, int i, String str, boolean z2, boolean z3) {
        zzcel zzcelVar = this.zzc;
        boolean zZzaF = zzcelVar.zzaF();
        boolean zZzac = zzac(zZzaF, zzcelVar);
        boolean z4 = true;
        if (!zZzac && z2) {
            z4 = false;
        }
        zzy(new AdOverlayInfoParcel(zZzac ? null : this.zzg, zZzaF ? null : new zzces(zzcelVar, this.zzh), this.zzk, this.zzl, this.zzw, zzcelVar, z, i, str, zzcelVar.zzm(), z4 ? null : this.zzm, zzab(zzcelVar) ? this.zzG : null, z3));
    }

    public final void zzB(String str, zzbjj zzbjjVar) {
        synchronized (this.zzf) {
            HashMap map = this.zze;
            List copyOnWriteArrayList = (List) map.get(str);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList();
                map.put(str, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(zzbjjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzC(zzcgb zzcgbVar) {
        this.zzi = zzcgbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzD(int i, int i2) {
        zzbrw zzbrwVar = this.zzz;
        if (zzbrwVar != null) {
            zzbrwVar.zze(i, i2);
        }
    }

    public final void zzE(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzF(boolean z) {
        synchronized (this.zzf) {
            this.zzu = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzG(boolean z) {
        synchronized (this.zzf) {
            this.zzv = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzH() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzs = true;
            zzbzk.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcen
                @Override // java.lang.Runnable
                public final void run() {
                    zzcet.zzh(this.zza);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzI(boolean z) {
        synchronized (this.zzf) {
            this.zzt = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzJ(zzcgc zzcgcVar) {
        this.zzj = zzcgcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzK(zzclx zzclxVar, zzeat zzeatVar, zzfio zzfioVar) {
        zzO("/click");
        if (zzeatVar != null && zzfioVar != null) {
            zzB("/click", new zzfbx(this.zzm, zzclxVar, zzfioVar, zzeatVar));
            return;
        }
        zzddc zzddcVar = this.zzm;
        zzbjj zzbjjVar = zzbji.zza;
        zzB("/click", new zzbih(zzddcVar, zzclxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzL(zzclx zzclxVar) {
        zzO("/click");
        zzddc zzddcVar = this.zzm;
        zzbjj zzbjjVar = zzbji.zza;
        zzB("/click", new zzbih(zzddcVar, zzclxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzM(zzclx zzclxVar, zzeat zzeatVar, zzdre zzdreVar) {
        zzO("/open");
        zzB("/open", new zzbjv(this.zzy, this.zzz, zzeatVar, zzdreVar, zzclxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzN(zzfau zzfauVar) {
        zzcel zzcelVar = this.zzc;
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcelVar.getContext())) {
            zzO("/logScionEvent");
            new HashMap();
            zzB("/logScionEvent", new zzbjp(zzcelVar.getContext(), zzfauVar.zzaw));
        }
    }

    public final void zzO(String str) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            list.clear();
        }
    }

    public final void zzP(String str, zzbjj zzbjjVar) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzbjjVar);
        }
    }

    public final void zzQ(String str, Predicate predicate) {
        synchronized (this.zzf) {
            List<zzbjj> list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbjj zzbjjVar : list) {
                if (predicate.apply(zzbjjVar)) {
                    arrayList.add(zzbjjVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final boolean zzR() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzu;
        }
        return z;
    }

    public final boolean zzS() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzv;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final boolean zzT() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzs;
        }
        return z;
    }

    public final boolean zzU() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzt;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzV(com.google.android.gms.ads.internal.client.zza zzaVar, zzbhz zzbhzVar, com.google.android.gms.ads.internal.overlay.zzr zzrVar, zzbib zzbibVar, com.google.android.gms.ads.internal.overlay.zzac zzacVar, boolean z, zzbjm zzbjmVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbsd zzbsdVar, zzbxi zzbxiVar, final zzeat zzeatVar, final zzfio zzfioVar, zzdre zzdreVar, zzbkd zzbkdVar, zzddc zzddcVar, zzbkc zzbkcVar, zzbjw zzbjwVar, zzbjk zzbjkVar, zzclx zzclxVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.zzc.getContext(), zzbxiVar, null) : zzbVar;
        zzcel zzcelVar = this.zzc;
        this.zzz = new zzbrw(zzcelVar, zzbsdVar);
        this.zza = zzbxiVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbf)).booleanValue()) {
            zzB("/adMetadata", new zzbhy(zzbhzVar));
        }
        if (zzbibVar != null) {
            zzB("/appEvent", new zzbia(zzbibVar));
        }
        zzB("/backButton", zzbji.zzj);
        zzB("/refresh", zzbji.zzk);
        zzB("/canOpenApp", zzbji.zzb);
        zzB("/canOpenURLs", zzbji.zza);
        zzB("/canOpenIntents", zzbji.zzc);
        zzB("/close", zzbji.zzd);
        zzB("/customClose", zzbji.zze);
        zzB("/instrument", zzbji.zzn);
        zzB("/delayPageLoaded", zzbji.zzp);
        zzB("/delayPageClosed", zzbji.zzq);
        zzB("/getLocationInfo", zzbji.zzr);
        zzB("/log", zzbji.zzg);
        zzB("/mraid", new zzbjq(zzbVar2, this.zzz, zzbsdVar));
        zzbsb zzbsbVar = this.zzx;
        if (zzbsbVar != null) {
            zzB("/mraidLoaded", zzbsbVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        zzB("/open", new zzbjv(zzbVar2, this.zzz, zzeatVar, zzdreVar, zzclxVar));
        zzB("/precache", new zzcct());
        zzB("/touch", zzbji.zzi);
        zzB("/video", zzbji.zzl);
        zzB("/videoMeta", zzbji.zzm);
        if (zzeatVar == null || zzfioVar == null) {
            zzB("/click", new zzbih(zzddcVar, zzclxVar));
            zzB("/httpTrack", zzbji.zzf);
        } else {
            zzB("/click", new zzfbx(zzddcVar, zzclxVar, zzfioVar, zzeatVar));
            zzB("/httpTrack", new zzbjj() { // from class: com.google.android.gms.internal.ads.zzfby
                @Override // com.google.android.gms.internal.ads.zzbjj
                public final void zza(Object obj, Map map) {
                    zzcec zzcecVar = (zzcec) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("URL missing from httpTrack GMSG.");
                        return;
                    }
                    zzfau zzfauVarZzD = zzcecVar.zzD();
                    if (zzfauVarZzD != null && !zzfauVarZzD.zzai) {
                        zzfioVar.zzd(str, zzfauVarZzD.zzax, null, null);
                        return;
                    }
                    zzfax zzfaxVarZzR = ((zzcfo) zzcecVar).zzR();
                    if (zzfaxVarZzR != null) {
                        zzeatVar.zzd(new zzeav(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis(), zzfaxVarZzR.zzb, str, 2));
                    } else {
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler");
                    }
                }
            });
        }
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcelVar.getContext())) {
            Map map = new HashMap();
            if (zzcelVar.zzD() != null) {
                map = zzcelVar.zzD().zzaw;
            }
            zzB("/logScionEvent", new zzbjp(zzcelVar.getContext(), map));
        }
        if (zzbjmVar != null) {
            zzB("/setInterstitialProperties", new zzbjl(zzbjmVar));
        }
        if (zzbkdVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zziY)).booleanValue()) {
                zzB("/inspectorNetworkExtras", zzbkdVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjr)).booleanValue() && zzbkcVar != null) {
            zzB("/shareSheet", zzbkcVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjw)).booleanValue() && zzbjwVar != null) {
            zzB("/inspectorOutOfContextTest", zzbjwVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjA)).booleanValue() && zzbjkVar != null) {
            zzB("/inspectorStorage", zzbjkVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzlD)).booleanValue()) {
            zzB("/bindPlayStoreOverlay", zzbji.zzu);
            zzB("/presentPlayStoreOverlay", zzbji.zzv);
            zzB("/expandPlayStoreOverlay", zzbji.zzw);
            zzB("/collapsePlayStoreOverlay", zzbji.zzx);
            zzB("/closePlayStoreOverlay", zzbji.zzy);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzdy)).booleanValue()) {
            zzB("/setPAIDPersonalizationEnabled", zzbji.zzA);
            zzB("/resetPAID", zzbji.zzz);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzlX)).booleanValue() && zzcelVar.zzD() != null && zzcelVar.zzD().zzar) {
            zzB("/writeToLocalStorage", zzbji.zzB);
            zzB("/clearLocalStorageKeys", zzbji.zzC);
        }
        this.zzg = zzaVar;
        this.zzh = zzrVar;
        this.zzk = zzbhzVar;
        this.zzl = zzbibVar;
        this.zzw = zzacVar;
        this.zzy = zzbVar3;
        this.zzm = zzddcVar;
        this.zzA = zzdreVar;
        this.zzn = z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01df A[Catch: all -> 0x01c5, TryCatch #2 {all -> 0x01c5, blocks: (B:59:0x017c, B:61:0x018e, B:62:0x0196, B:71:0x01cd, B:73:0x01df, B:74:0x01e6), top: B:103:0x00dd }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0288 A[Catch: NoClassDefFoundError -> 0x02b2, Exception | NoClassDefFoundError -> 0x02b4, TryCatch #11 {Exception | NoClassDefFoundError -> 0x02b4, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x001f, B:8:0x002f, B:10:0x0036, B:12:0x0044, B:14:0x0060, B:16:0x0079, B:18:0x0090, B:19:0x0093, B:21:0x0096, B:24:0x00b0, B:26:0x00c4, B:28:0x00dd, B:63:0x01a1, B:43:0x0161, B:88:0x0288, B:76:0x020f, B:77:0x0235, B:75:0x01ea, B:42:0x013d, B:27:0x00d1, B:78:0x0236, B:80:0x0240, B:82:0x0246, B:84:0x0279, B:90:0x0297, B:92:0x029d, B:94:0x02ab), top: B:106:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029d A[Catch: NoClassDefFoundError -> 0x02b2, Exception | NoClassDefFoundError -> 0x02b4, TryCatch #11 {Exception | NoClassDefFoundError -> 0x02b4, blocks: (B:3:0x000c, B:5:0x0019, B:6:0x001f, B:8:0x002f, B:10:0x0036, B:12:0x0044, B:14:0x0060, B:16:0x0079, B:18:0x0090, B:19:0x0093, B:21:0x0096, B:24:0x00b0, B:26:0x00c4, B:28:0x00dd, B:63:0x01a1, B:43:0x0161, B:88:0x0288, B:76:0x020f, B:77:0x0235, B:75:0x01ea, B:42:0x013d, B:27:0x00d1, B:78:0x0236, B:80:0x0240, B:82:0x0246, B:84:0x0279, B:90:0x0297, B:92:0x029d, B:94:0x02ab), top: B:106:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02b0 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final android.webkit.WebResourceResponse zzc(java.lang.String r20, java.util.Map r21) {
        /*
            Method dump skipped, instruction units count: 707
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcet.zzc(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final com.google.android.gms.ads.internal.zzb zzd() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzddc
    public final void zzdd() {
        zzddc zzddcVar = this.zzm;
        if (zzddcVar != null) {
            zzddcVar.zzdd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final zzdre zze() {
        return this.zzA;
    }

    public final void zzk() {
        if (this.zzi != null && ((this.zzB && this.zzD <= 0) || this.zzC || this.zzo)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzcc)).booleanValue()) {
                zzcel zzcelVar = this.zzc;
                if (zzcelVar.zzl() != null) {
                    zzbcp.zza(zzcelVar.zzl().zza(), zzcelVar.zzk(), "awfllc");
                }
            }
            this.zzi.zza((this.zzC || this.zzo) ? false : true, this.zzp, this.zzq, this.zzr);
            this.zzi = null;
        }
        this.zzc.zzaf();
    }

    public final void zzl() {
        zzbxi zzbxiVar = this.zza;
        if (zzbxiVar != null) {
            zzbxiVar.zzf();
            this.zza = null;
        }
        zzZ();
        synchronized (this.zzf) {
            this.zze.clear();
            this.zzg = null;
            this.zzh = null;
            this.zzi = null;
            this.zzj = null;
            this.zzk = null;
            this.zzl = null;
            this.zzn = false;
            this.zzs = false;
            this.zzt = false;
            this.zzu = false;
            this.zzw = null;
            this.zzy = null;
            this.zzx = null;
            zzbrw zzbrwVar = this.zzz;
            if (zzbrwVar != null) {
                zzbrwVar.zzb(true);
                this.zzz = null;
            }
        }
    }

    public final void zzm(boolean z) {
        this.zzE = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzn(Uri uri) {
        com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(String.valueOf(String.valueOf(uri))));
        HashMap map = this.zze;
        String path = uri.getPath();
        List list = (List) map.get(path);
        if (path == null || list == null) {
            com.google.android.gms.ads.internal.util.zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(String.valueOf(uri))));
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzgI)).booleanValue() || com.google.android.gms.ads.internal.zzv.zzp().zzg() == null) {
                return;
            }
            final String strSubstring = (path == null || path.length() < 2) ? Constants.ATTENDANCE_STATUS_NULL : path.substring(1);
            zzbzk.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzceo
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    int i = zzcet.zzb;
                    com.google.android.gms.ads.internal.zzv.zzp().zzg().zze(strSubstring);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzfI)).booleanValue() && this.zzF.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzfK)).intValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                zzgbs.zzr(com.google.android.gms.ads.internal.zzv.zzq().zzb(uri), new zzcer(this, list, path, uri), zzbzk.zzf);
                return;
            }
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        zzY(com.google.android.gms.ads.internal.util.zzs.zzQ(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzo() {
        zzbbg zzbbgVar = this.zzd;
        if (zzbbgVar != null) {
            zzbbgVar.zzc(10005);
        }
        this.zzC = true;
        this.zzp = 10004;
        this.zzq = "Page loaded delay cancel.";
        zzk();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzp() {
        synchronized (this.zzf) {
        }
        this.zzD++;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzq() {
        this.zzD--;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzr(int i, int i2, boolean z) {
        zzbsb zzbsbVar = this.zzx;
        if (zzbsbVar != null) {
            zzbsbVar.zzb(i, i2);
        }
        zzbrw zzbrwVar = this.zzz;
        if (zzbrwVar != null) {
            zzbrwVar.zzd(i, i2, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgd
    public final void zzs() {
        zzbxi zzbxiVar = this.zza;
        if (zzbxiVar != null) {
            zzcel zzcelVar = this.zzc;
            WebView webViewZzG = zzcelVar.zzG();
            if (ViewCompat.isAttachedToWindow(webViewZzG)) {
                zzaa(webViewZzG, zzbxiVar, 10);
                return;
            }
            zzZ();
            zzceq zzceqVar = new zzceq(this, zzbxiVar);
            this.zzH = zzceqVar;
            ((View) zzcelVar).addOnAttachStateChangeListener(zzceqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddc
    public final void zzu() {
        zzddc zzddcVar = this.zzm;
        if (zzddcVar != null) {
            zzddcVar.zzu();
        }
    }

    public final void zzv(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        zzcel zzcelVar = this.zzc;
        boolean zZzaF = zzcelVar.zzaF();
        boolean z3 = zzac(zZzaF, zzcelVar) || z2;
        zzy(new AdOverlayInfoParcel(zzcVar, z3 ? null : this.zzg, zZzaF ? null : this.zzh, this.zzw, zzcelVar.zzm(), zzcelVar, z3 || !z ? null : this.zzm, str));
    }

    public final void zzw(String str, String str2, int i) {
        zzebe zzebeVar = this.zzG;
        zzcel zzcelVar = this.zzc;
        zzy(new AdOverlayInfoParcel(zzcelVar, zzcelVar.zzm(), str, str2, 14, zzebeVar));
    }

    public final void zzx(boolean z, int i, boolean z2) {
        zzcel zzcelVar = this.zzc;
        boolean zZzac = zzac(zzcelVar.zzaF(), zzcelVar);
        boolean z3 = true;
        if (!zZzac && z2) {
            z3 = false;
        }
        zzy(new AdOverlayInfoParcel(zZzac ? null : this.zzg, this.zzh, this.zzw, zzcelVar, z, i, zzcelVar.zzm(), z3 ? null : this.zzm, zzab(zzcelVar) ? this.zzG : null));
    }

    public final void zzy(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbrw zzbrwVar = this.zzz;
        boolean zZzf = zzbrwVar != null ? zzbrwVar.zzf() : false;
        com.google.android.gms.ads.internal.zzv.zzj();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.zzc.getContext(), adOverlayInfoParcel, !zZzf, this.zzA);
        zzbxi zzbxiVar = this.zza;
        if (zzbxiVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzbxiVar.zzh(str);
        }
    }

    public final void zzz(boolean z, int i, String str, String str2, boolean z2) {
        zzcel zzcelVar = this.zzc;
        boolean zZzaF = zzcelVar.zzaF();
        boolean zZzac = zzac(zZzaF, zzcelVar);
        boolean z3 = true;
        if (!zZzac && z2) {
            z3 = false;
        }
        zzy(new AdOverlayInfoParcel(zZzac ? null : this.zzg, zZzaF ? null : new zzces(zzcelVar, this.zzh), this.zzk, this.zzl, this.zzw, zzcelVar, z, i, str, str2, zzcelVar.zzm(), z3 ? null : this.zzm, zzab(zzcelVar) ? this.zzG : null));
    }
}
