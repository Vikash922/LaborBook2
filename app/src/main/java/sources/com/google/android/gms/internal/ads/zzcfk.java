package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Looper;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzbbn;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzfqf;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
final class zzcfk extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcel {
    public static final /* synthetic */ int zza = 0;
    private final String zzA;
    private zzcfn zzB;
    private boolean zzC;
    private boolean zzD;
    private zzbfh zzE;
    private zzbff zzF;
    private zzazu zzG;
    private int zzH;
    private int zzI;
    private zzbcu zzJ;
    private final zzbcu zzK;
    private zzbcu zzL;
    private final zzbcv zzM;
    private int zzN;
    private com.google.android.gms.ads.internal.overlay.zzm zzO;
    private boolean zzP;
    private final com.google.android.gms.ads.internal.util.zzck zzQ;
    private int zzR;
    private int zzS;
    private int zzT;
    private int zzU;
    private int zzV;
    private Map zzW;
    private final WindowManager zzX;
    private final zzbbg zzY;
    private boolean zzZ;
    private final zzcge zzb;
    private final zzauy zzc;
    private final zzfbt zzd;
    private final zzbdp zze;
    private final VersionInfoParcel zzf;
    private com.google.android.gms.ads.internal.zzn zzg;
    private final com.google.android.gms.ads.internal.zza zzh;
    private final DisplayMetrics zzi;
    private final float zzj;
    private zzfau zzk;
    private zzfax zzl;
    private boolean zzm;
    private boolean zzn;
    private zzcet zzo;
    private com.google.android.gms.ads.internal.overlay.zzm zzp;
    private zzeca zzq;
    private zzeby zzr;
    private zzcgf zzs;
    private final String zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private Boolean zzy;
    private boolean zzz;

    protected zzcfk(zzcge zzcgeVar, zzcgf zzcgfVar, String str, boolean z, boolean z2, zzauy zzauyVar, zzbdp zzbdpVar, VersionInfoParcel versionInfoParcel, zzbcx zzbcxVar, com.google.android.gms.ads.internal.zzn zznVar, com.google.android.gms.ads.internal.zza zzaVar, zzbbg zzbbgVar, zzfau zzfauVar, zzfax zzfaxVar, zzfbt zzfbtVar) {
        zzfax zzfaxVar2;
        super(zzcgeVar);
        this.zzm = false;
        this.zzn = false;
        this.zzz = true;
        this.zzA = "";
        this.zzR = -1;
        this.zzS = -1;
        this.zzT = -1;
        this.zzU = -1;
        this.zzV = -1;
        this.zzb = zzcgeVar;
        this.zzs = zzcgfVar;
        this.zzt = str;
        this.zzw = z;
        this.zzc = zzauyVar;
        this.zzd = zzfbtVar;
        this.zze = zzbdpVar;
        this.zzf = versionInfoParcel;
        this.zzg = zznVar;
        this.zzh = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzX = windowManager;
        com.google.android.gms.ads.internal.zzv.zzq();
        DisplayMetrics displayMetricsZzu = com.google.android.gms.ads.internal.util.zzs.zzu(windowManager);
        this.zzi = displayMetricsZzu;
        this.zzj = displayMetricsZzu.density;
        this.zzY = zzbbgVar;
        this.zzk = zzfauVar;
        this.zzl = zzfaxVar;
        this.zzQ = new com.google.android.gms.ads.internal.util.zzck(zzcgeVar.zza(), this, this, null);
        this.zzZ = false;
        setBackgroundColor(0);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzlH)).booleanValue()) {
            setSoundEffectsEnabled(false);
        }
        final WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzlG)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzni)).booleanValue()) {
            settings.setGeolocationEnabled(false);
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzv.zzq().zzc(zzcgeVar, versionInfoParcel.afmaVersion));
        com.google.android.gms.ads.internal.zzv.zzq();
        final Context context = getContext();
        com.google.android.gms.ads.internal.util.zzcd.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfqf zzfqfVar = zzs.zza;
                String absolutePath = context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath();
                WebSettings webSettings = settings;
                webSettings.setDatabasePath(absolutePath);
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzaZ)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return true;
            }
        });
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        zzba();
        addJavascriptInterface(new zzcfr(this, new zzcfq(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzbi();
        zzbcv zzbcvVar = new zzbcv(new zzbcx(true, "make_wv", this.zzt));
        this.zzM = zzbcvVar;
        zzbcvVar.zza().zzc(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzcc)).booleanValue() && (zzfaxVar2 = this.zzl) != null && zzfaxVar2.zzb != null) {
            zzbcvVar.zza().zzd("gqi", this.zzl.zzb);
        }
        zzbcvVar.zza();
        zzbcu zzbcuVarZzf = zzbcx.zzf();
        this.zzK = zzbcuVarZzf;
        zzbcvVar.zzb("native:view_create", zzbcuVarZzf);
        this.zzL = null;
        this.zzJ = null;
        com.google.android.gms.ads.internal.util.zzcg.zza().zzb(zzcgeVar);
        com.google.android.gms.ads.internal.zzv.zzp().zzt();
    }

    private final synchronized void zzba() {
        zzfau zzfauVar = this.zzk;
        if (zzfauVar != null && zzfauVar.zzam) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Disabling hardware acceleration on an overlay.");
            zzbc();
            return;
        }
        if (!this.zzw && !this.zzs.zzi()) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Enabling hardware acceleration on an AdView.");
            zzbe();
            return;
        }
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Enabling hardware acceleration on an overlay.");
        zzbe();
    }

    private final synchronized void zzbb() {
        if (this.zzP) {
            return;
        }
        this.zzP = true;
        com.google.android.gms.ads.internal.zzv.zzp().zzr();
    }

    private final synchronized void zzbc() {
        if (!this.zzx) {
            setLayerType(1, null);
        }
        this.zzx = true;
    }

    private final void zzbd(boolean z) {
        HashMap map = new HashMap();
        map.put("isVisible", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        zzd("onAdVisibilityChanged", map);
    }

    private final synchronized void zzbe() {
        if (this.zzx) {
            setLayerType(0, null);
        }
        this.zzx = false;
    }

    private final synchronized void zzbf(String str) {
        final String str2 = "about:blank";
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable(str2) { // from class: com.google.android.gms.internal.ads.zzcff
                public final /* synthetic */ String zzb = "about:blank";

                @Override // java.lang.Runnable
                public final void run() {
                    zzcfk zzcfkVar = this.zza;
                    String str3 = this.zzb;
                    super/*android.webkit.WebView*/.loadUrl("about:blank");
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "AdWebViewImpl.loadUrlUnsafe");
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not call loadUrl in destroy(). ", th);
        }
    }

    private final void zzbg() {
        zzbcp.zza(this.zzM.zza(), this.zzK, "aeh2");
    }

    private final synchronized void zzbh() {
        Map map = this.zzW;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((zzccs) it.next()).release();
            }
        }
        this.zzW = null;
    }

    private final void zzbi() {
        zzbcv zzbcvVar = this.zzM;
        if (zzbcvVar == null) {
            return;
        }
        zzbcx zzbcxVarZza = zzbcvVar.zza();
        zzbcn zzbcnVarZzg = com.google.android.gms.ads.internal.zzv.zzp().zzg();
        if (zzbcnVarZzg != null) {
            zzbcnVarZzg.zzf(zzbcxVarZza);
        }
    }

    private final synchronized void zzbj() {
        Boolean boolZzl = com.google.android.gms.ads.internal.zzv.zzp().zzl();
        this.zzy = boolZzl;
        if (boolZzl == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                zzaY(true);
            } catch (IllegalStateException unused) {
                zzaY(false);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcel
    public final synchronized void destroy() {
        zzbi();
        this.zzQ.zza();
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzb();
            this.zzp.zzm();
            this.zzp = null;
        }
        this.zzq = null;
        this.zzr = null;
        this.zzo.zzl();
        this.zzG = null;
        this.zzg = null;
        setOnClickListener(null);
        setOnTouchListener(null);
        if (this.zzv) {
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzz().zzd(this);
        zzbh();
        this.zzv = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzkR)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
            zzX();
            return;
        }
        Activity activityZza = this.zzb.zza();
        if (activityZza != null && activityZza.isDestroyed()) {
            com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
            zzX();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("Initiating WebView self destruct sequence in 3...");
            com.google.android.gms.ads.internal.util.zze.zza("Loading blank page in WebView, 2...");
            zzbf("about:blank");
        }
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(final String str, final ValueCallback valueCallback) {
        if (zzaE()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzkS)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
            super.evaluateJavascript(str, valueCallback);
        } else {
            zzbzk.zzf.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfe
                @Override // java.lang.Runnable
                public final void run() {
                    super/*android.webkit.WebView*/.evaluateJavascript(str, valueCallback);
                }
            });
        }
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzv) {
                    this.zzo.zzl();
                    com.google.android.gms.ads.internal.zzv.zzz().zzd(this);
                    zzbh();
                    zzbb();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcel
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!zzaE()) {
            super.loadData(str, str2, str3);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcel
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!zzaE()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcel
    public final synchronized void loadUrl(final String str) {
        if (zzaE()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfh
                @Override // java.lang.Runnable
                public final void run() {
                    super/*android.webkit.WebView*/.loadUrl(str);
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "AdWebViewImpl.loadUrl");
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not call loadUrl. ", th);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcet zzcetVar = this.zzo;
        if (zzcetVar != null) {
            zzcetVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!zzaE()) {
            this.zzQ.zzc();
        }
        if (this.zzZ) {
            onResume();
            this.zzZ = false;
        }
        boolean z = this.zzC;
        zzcet zzcetVar = this.zzo;
        if (zzcetVar != null && zzcetVar.zzU()) {
            if (!this.zzD) {
                this.zzo.zza();
                this.zzo.zzb();
                this.zzD = true;
            }
            zzaZ();
            z = true;
        }
        zzbd(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        zzcet zzcetVar;
        synchronized (this) {
            if (!zzaE()) {
                this.zzQ.zzd();
            }
            super.onDetachedFromWindow();
            if (this.zzD && (zzcetVar = this.zzo) != null && zzcetVar.zzU() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzo.zza();
                this.zzo.zzb();
                this.zzD = false;
            }
        }
        zzbd(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzlg)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            com.google.android.gms.ads.internal.zzv.zzq();
            com.google.android.gms.ads.internal.util.zzs.zzU(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            String str5 = "Couldn't find an Activity to view url/mimetype: " + str + " / " + str4;
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze(str5);
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdWebViewImpl.onDownloadStart: ".concat(String.valueOf(str)));
        }
    }

    @Override // android.webkit.WebView, android.view.View
    protected final void onDraw(Canvas canvas) {
        if (zzaE()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zZzaZ = zzaZ();
        com.google.android.gms.ads.internal.overlay.zzm zzmVarZzL = zzL();
        if (zzmVarZzL == null || !zZzaZ) {
            return;
        }
        zzmVarZzL.zzn();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0089  */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final synchronized void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instruction units count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfk.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcel
    public final void onPause() {
        if (zzaE()) {
            return;
        }
        try {
            super.onPause();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmF)).booleanValue() && WebViewFeature.isFeatureSupported("MUTE_AUDIO")) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Muting webview");
                WebViewCompat.setAudioMuted(this, true);
            }
        } catch (Exception e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not pause webview.", e);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmI)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdWebViewImpl.onPause");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcel
    public final void onResume() {
        if (zzaE()) {
            return;
        }
        try {
            super.onResume();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmF)).booleanValue() && WebViewFeature.isFeatureSupported("MUTE_AUDIO")) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Unmuting webview");
                WebViewCompat.setAudioMuted(this, false);
            }
        } catch (Exception e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not resume webview.", e);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmI)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdWebViewImpl.onResume");
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzdK)).booleanValue() && this.zzo.zzR();
        if ((!this.zzo.zzU() || this.zzo.zzS()) && !z) {
            zzauy zzauyVar = this.zzc;
            if (zzauyVar != null) {
                zzauyVar.zzd(motionEvent);
            }
            zzbdp zzbdpVar = this.zze;
            if (zzbdpVar != null) {
                zzbdpVar.zzb(motionEvent);
            }
        } else {
            synchronized (this) {
                zzbfh zzbfhVar = this.zzE;
                if (zzbfhVar != null) {
                    zzbfhVar.zzd(motionEvent);
                }
            }
        }
        if (zzaE()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcel
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcet) {
            this.zzo = (zzcet) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzaE()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final synchronized void zzA(int i) {
        this.zzN = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzB(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcbg
    public final synchronized void zzC(zzcfn zzcfnVar) {
        if (this.zzB == null) {
            this.zzB = zzcfnVar;
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Attempt to create multiple AdWebViewVideoControllers.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcec
    public final zzfau zzD() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final Context zzE() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcga
    public final View zzF() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final WebView zzG() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final WebViewClient zzH() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcfy
    public final zzauy zzI() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized zzazu zzJ() {
        return this.zzG;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized zzbfh zzK() {
        return this.zzE;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzL() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzM() {
        return this.zzO;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final /* synthetic */ zzcgd zzN() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcfx
    public final synchronized zzcgf zzO() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized zzeby zzP() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized zzeca zzQ() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcfo
    public final zzfax zzR() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final zzfbt zzS() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final ListenableFuture zzT() {
        zzbdp zzbdpVar = this.zze;
        return zzbdpVar == null ? zzgbs.zzh(null) : zzbdpVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized String zzU() {
        return this.zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final List zzV() {
        return new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzW(zzfau zzfauVar, zzfax zzfaxVar) {
        this.zzk = zzfauVar;
        this.zzl = zzfaxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzX() {
        com.google.android.gms.ads.internal.util.zze.zza("Destroying WebView!");
        zzbb();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcfj(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzY() {
        zzbg();
        HashMap map = new HashMap(1);
        map.put("version", this.zzf.afmaVersion);
        zzd("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzZ(int i) {
        if (i == 0) {
            zzbcv zzbcvVar = this.zzM;
            zzbcp.zza(zzbcvVar.zza(), this.zzK, "aebb2");
        }
        zzbg();
        zzbcv zzbcvVar2 = this.zzM;
        zzbcvVar2.zza();
        zzbcvVar2.zza().zzd("close_type", String.valueOf(i));
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i));
        map.put("version", this.zzf.afmaVersion);
        zzd("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzbmq
    public final void zza(String str) {
        zzaW(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzaA(String str, Predicate predicate) {
        zzcet zzcetVar = this.zzo;
        if (zzcetVar != null) {
            zzcetVar.zzQ(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized boolean zzaB() {
        return this.zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized boolean zzaC() {
        return this.zzH > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final boolean zzaD(final boolean z, final int i) {
        destroy();
        zzbbf zzbbfVar = new zzbbf() { // from class: com.google.android.gms.internal.ads.zzcfg
            @Override // com.google.android.gms.internal.ads.zzbbf
            public final void zza(zzbbn.zzt.zza zzaVar) {
                int i2 = zzcfk.zza;
                zzbbn.zzbl.zza zzaVarZzb = zzbbn.zzbl.zzb();
                boolean zZzf = zzaVarZzb.zzf();
                boolean z2 = z;
                if (zZzf != z2) {
                    zzaVarZzb.zzd(z2);
                }
                zzaVarZzb.zze(i);
                zzaVar.zzab(zzaVarZzb.zzbr());
            }
        };
        zzbbg zzbbgVar = this.zzY;
        zzbbgVar.zzb(zzbbfVar);
        zzbbgVar.zzc(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized boolean zzaE() {
        return this.zzv;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized boolean zzaF() {
        return this.zzw;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final boolean zzaG() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized boolean zzaH() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void zzaJ(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        this.zzo.zzv(zzcVar, z, z2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void zzaK(String str, String str2, int i) {
        this.zzo.zzw(str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void zzaL(boolean z, int i, boolean z2) {
        this.zzo.zzx(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void zzaM(boolean z, int i, String str, String str2, boolean z2) {
        this.zzo.zzz(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final void zzaN(boolean z, int i, String str, boolean z2, boolean z3) {
        this.zzo.zzA(z, i, str, z2, z3);
    }

    public final zzcet zzaO() {
        return this.zzo;
    }

    final synchronized Boolean zzaP() {
        return this.zzy;
    }

    protected final synchronized void zzaV(String str, ValueCallback valueCallback) {
        if (!zzaE()) {
            evaluateJavascript(str, null);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    protected final void zzaW(String str) {
        if (!PlatformVersion.isAtLeastKitKat()) {
            zzaX("javascript:".concat(str));
            return;
        }
        if (zzaP() == null) {
            zzbj();
        }
        if (zzaP().booleanValue()) {
            zzaV(str, null);
        } else {
            zzaX("javascript:".concat(str));
        }
    }

    protected final synchronized void zzaX(String str) {
        if (!zzaE()) {
            loadUrl(str);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
        }
    }

    final void zzaY(Boolean bool) {
        synchronized (this) {
            this.zzy = bool;
        }
        com.google.android.gms.ads.internal.zzv.zzp().zzy(bool);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
    
        if (r10.zzV != r9) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzaZ() {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzcet r0 = r10.zzo
            boolean r0 = r0.zzT()
            r1 = 0
            if (r0 != 0) goto L11
            com.google.android.gms.internal.ads.zzcet r0 = r10.zzo
            boolean r0 = r0.zzU()
            if (r0 == 0) goto L86
        L11:
            com.google.android.gms.ads.internal.client.zzbb.zzb()
            android.util.DisplayMetrics r0 = r10.zzi
            int r2 = r0.widthPixels
            int r4 = com.google.android.gms.ads.internal.util.client.zzf.zzw(r0, r2)
            com.google.android.gms.ads.internal.client.zzbb.zzb()
            int r2 = r0.heightPixels
            int r5 = com.google.android.gms.ads.internal.util.client.zzf.zzw(r0, r2)
            com.google.android.gms.internal.ads.zzcge r2 = r10.zzb
            android.app.Activity r2 = r2.zza()
            r3 = 1
            if (r2 == 0) goto L50
            android.view.Window r6 = r2.getWindow()
            if (r6 != 0) goto L35
            goto L50
        L35:
            com.google.android.gms.ads.internal.zzv.zzq()
            int[] r2 = com.google.android.gms.ads.internal.util.zzs.zzR(r2)
            com.google.android.gms.ads.internal.client.zzbb.zzb()
            r6 = r2[r1]
            int r6 = com.google.android.gms.ads.internal.util.client.zzf.zzw(r0, r6)
            com.google.android.gms.ads.internal.client.zzbb.zzb()
            r2 = r2[r3]
            int r2 = com.google.android.gms.ads.internal.util.client.zzf.zzw(r0, r2)
            r7 = r2
            goto L52
        L50:
            r6 = r4
            r7 = r5
        L52:
            com.google.android.gms.ads.internal.zzv.zzq()
            android.view.WindowManager r2 = r10.zzX
            android.view.Display r2 = r2.getDefaultDisplay()
            int r9 = r2.getRotation()
            int r2 = r10.zzS
            if (r2 != r4) goto L87
            int r2 = r10.zzR
            if (r2 != r5) goto L87
            int r2 = r10.zzT
            if (r2 != r6) goto L87
            int r2 = r10.zzU
            if (r2 != r7) goto L87
            com.google.android.gms.internal.ads.zzbbz r2 = com.google.android.gms.internal.ads.zzbci.zzah
            com.google.android.gms.internal.ads.zzbcg r8 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r8.zzb(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L86
            int r2 = r10.zzV
            if (r2 == r9) goto L86
            goto L87
        L86:
            return r1
        L87:
            int r2 = r10.zzS
            if (r2 != r4) goto La5
            int r2 = r10.zzR
            if (r2 != r5) goto La5
            com.google.android.gms.internal.ads.zzbbz r2 = com.google.android.gms.internal.ads.zzbci.zzah
            com.google.android.gms.internal.ads.zzbcg r8 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r8.zzb(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto La6
            int r2 = r10.zzV
            if (r2 == r9) goto La6
        La5:
            r1 = r3
        La6:
            r10.zzS = r4
            r10.zzR = r5
            r10.zzT = r6
            r10.zzU = r7
            r10.zzV = r9
            com.google.android.gms.internal.ads.zzbsc r3 = new com.google.android.gms.internal.ads.zzbsc
            java.lang.String r2 = ""
            r3.<init>(r10, r2)
            float r8 = r0.density
            r3.zzj(r4, r5, r6, r7, r8, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfk.zzaZ():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzaa() {
        if (this.zzJ == null) {
            zzbcv zzbcvVar = this.zzM;
            zzbcp.zza(zzbcvVar.zza(), this.zzK, "aes2");
            zzbcvVar.zza();
            zzbcu zzbcuVarZzf = zzbcx.zzf();
            this.zzJ = zzbcuVarZzf;
            zzbcvVar.zzb("native:view_show", zzbcuVarZzf);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.zzf.afmaVersion);
        zzd("onshow", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzab() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzv.zzs().zze()));
        map.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzv.zzs().zza()));
        map.put("device_volume", String.valueOf(com.google.android.gms.ads.internal.util.zzab.zzb(getContext())));
        zzd("volume", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzac(boolean z) {
        this.zzo.zzm(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzad() {
        this.zzQ.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzae(String str, String str2, String str3) {
        String str4;
        if (zzaE()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        String[] strArr = new String[1];
        String str5 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzae);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", str5);
            jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, "Google Mobile Ads");
            jSONObject.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, "12.4.51-000");
            str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
        } catch (JSONException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to build MRAID_ENV", e);
            str4 = null;
        }
        strArr[0] = str4;
        super.loadDataWithBaseURL(str, zzcfw.zzb(str2, strArr), "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzaf() {
        if (this.zzL == null) {
            zzbcv zzbcvVar = this.zzM;
            zzbcvVar.zza();
            zzbcu zzbcuVarZzf = zzbcx.zzf();
            this.zzL = zzbcuVarZzf;
            zzbcvVar.zzb("native:view_load", zzbcuVarZzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzag(String str, zzbjj zzbjjVar) {
        zzcet zzcetVar = this.zzo;
        if (zzcetVar != null) {
            zzcetVar.zzB(str, zzbjjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzah() {
        com.google.android.gms.ads.internal.util.zze.zza("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzai(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzp = zzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzaj(zzcgf zzcgfVar) {
        this.zzs = zzcgfVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzak(zzazu zzazuVar) {
        this.zzG = zzazuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzal(boolean z) {
        this.zzz = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzam() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzan(Context context) {
        zzcge zzcgeVar = this.zzb;
        zzcgeVar.setBaseContext(context);
        this.zzQ.zze(zzcgeVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzao(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzy(this.zzo.zzT(), z);
        } else {
            this.zzu = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzap(zzbff zzbffVar) {
        this.zzF = zzbffVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzaq(boolean z) {
        boolean z2 = this.zzw;
        this.zzw = z;
        zzba();
        if (z != z2) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzaf)).booleanValue() || !this.zzs.zzi()) {
                new zzbsc(this, "").zzl(true != z ? "default" : "expanded");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzar(zzbfh zzbfhVar) {
        this.zzE = zzbfhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzas(zzeby zzebyVar) {
        this.zzr = zzebyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzat(zzeca zzecaVar) {
        this.zzq = zzecaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzau(int i) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzA(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzav(boolean z) {
        this.zzZ = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzaw(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzO = zzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final synchronized void zzax(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        int i = this.zzH + (true != z ? -1 : 1);
        this.zzH = i;
        if (i > 0 || (zzmVar = this.zzp) == null) {
            return;
        }
        zzmVar.zzE();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0010 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000b A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:6:0x0007, B:8:0x000b), top: B:16:0x0004 }] */
    @Override // com.google.android.gms.internal.ads.zzcel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzay(boolean r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 == 0) goto L7
            r0 = 0
            r1.setBackgroundColor(r0)     // Catch: java.lang.Throwable -> L12
        L7:
            com.google.android.gms.ads.internal.overlay.zzm r0 = r1.zzp     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            r0.zzB(r2)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r1)
            return
        L10:
            monitor-exit(r1)
            return
        L12:
            r2 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L12
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfk.zzay(boolean):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcel
    public final void zzaz(String str, zzbjj zzbjjVar) {
        zzcet zzcetVar = this.zzo;
        if (zzcetVar != null) {
            zzcetVar.zzP(str, zzbjjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmq
    public final void zzb(String str, String str2) {
        zzaW(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzd(String str, Map map) {
        try {
            zze(str, com.google.android.gms.ads.internal.client.zzbb.zzb().zzk(map));
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddc
    public final void zzdd() {
        zzcet zzcetVar = this.zzo;
        if (zzcetVar != null) {
            zzcetVar.zzdd();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final synchronized void zzde() {
        com.google.android.gms.ads.internal.zzn zznVar = this.zzg;
        if (zznVar != null) {
            zznVar.zzde();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final synchronized void zzdf() {
        com.google.android.gms.ads.internal.zzn zznVar = this.zzg;
        if (zznVar != null) {
            zznVar.zzdf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzdg() {
        com.google.android.gms.ads.internal.overlay.zzm zzmVarZzL = zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final void zzdn(zzayg zzaygVar) {
        synchronized (this) {
            this.zzC = zzaygVar.zzj;
        }
        zzbd(zzaygVar.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zze(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(string);
        sb.append(");");
        String string2 = sb.toString();
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Dispatching AFMA event: ".concat(string2));
        zzaW(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final synchronized int zzf() {
        return this.zzN;
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final int zzg() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final int zzh() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcfs, com.google.android.gms.internal.ads.zzcbg
    public final Activity zzi() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcbg
    public final com.google.android.gms.ads.internal.zza zzj() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final zzbcu zzk() {
        return this.zzK;
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcbg
    public final zzbcv zzl() {
        return this.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcfz, com.google.android.gms.internal.ads.zzcbg
    public final VersionInfoParcel zzm() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final zzcav zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final synchronized zzccs zzo(String str) {
        Map map = this.zzW;
        if (map == null) {
            return null;
        }
        return (zzccs) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbmq
    public final void zzp(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcbg
    public final synchronized zzcfn zzq() {
        return this.zzB;
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final synchronized String zzr() {
        zzfax zzfaxVar = this.zzl;
        if (zzfaxVar == null) {
            return null;
        }
        return zzfaxVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final synchronized String zzs() {
        return this.zzA;
    }

    @Override // com.google.android.gms.internal.ads.zzcel, com.google.android.gms.internal.ads.zzcbg
    public final synchronized void zzt(String str, zzccs zzccsVar) {
        if (this.zzW == null) {
            this.zzW = new HashMap();
        }
        this.zzW.put(str, zzccsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzddc
    public final void zzu() {
        zzcet zzcetVar = this.zzo;
        if (zzcetVar != null) {
            zzcetVar.zzu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzv(boolean z, long j) {
        HashMap map = new HashMap(2);
        map.put("success", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        map.put(TypedValues.TransitionType.S_DURATION, Long.toString(j));
        zzd("onCacheAccessComplete", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final synchronized void zzw() {
        zzbff zzbffVar = this.zzF;
        if (zzbffVar != null) {
            final zzdlu zzdluVar = (zzdlu) zzbffVar;
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdls
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdluVar.zzd();
                    } catch (RemoteException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzy(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzz(boolean z) {
        this.zzo.zzE(false);
    }
}
