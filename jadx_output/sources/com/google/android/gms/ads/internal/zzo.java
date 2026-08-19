package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzfcq;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzo extends WebViewClient {
    final /* synthetic */ zzu zza;

    zzo(zzu zzuVar) {
        this.zza = zzuVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzu zzuVar = this.zza;
        if (zzuVar.zzg != null) {
            try {
                zzuVar.zzg.zzf(zzfcq.zzd(1, null, null));
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzu zzuVar2 = this.zza;
        if (zzuVar2.zzg != null) {
            try {
                zzuVar2.zzg.zze(0);
            } catch (RemoteException e2) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzu zzuVar = this.zza;
        if (str.startsWith(zzuVar.zzq())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            if (zzuVar.zzg != null) {
                try {
                    zzuVar.zzg.zzf(zzfcq.zzd(3, null, null));
                } catch (RemoteException e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                }
            }
            zzu zzuVar2 = this.zza;
            if (zzuVar2.zzg != null) {
                try {
                    zzuVar2.zzg.zze(3);
                } catch (RemoteException e2) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
                }
            }
            this.zza.zzV(0);
            return true;
        }
        if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzu zzuVar3 = this.zza;
            if (zzuVar3.zzg != null) {
                try {
                    zzuVar3.zzg.zzf(zzfcq.zzd(1, null, null));
                } catch (RemoteException e3) {
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e3);
                }
            }
            zzu zzuVar4 = this.zza;
            if (zzuVar4.zzg != null) {
                try {
                    zzuVar4.zzg.zze(0);
                } catch (RemoteException e4) {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e4);
                }
            }
            this.zza.zzV(0);
            return true;
        }
        if (str.startsWith("gmsg://adResized")) {
            zzu zzuVar5 = this.zza;
            if (zzuVar5.zzg != null) {
                try {
                    zzuVar5.zzg.zzi();
                } catch (RemoteException e5) {
                    int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e5);
                }
            }
            zzu zzuVar6 = this.zza;
            zzuVar6.zzV(zzuVar6.zzb(str));
            return true;
        }
        if (str.startsWith("gmsg://")) {
            return true;
        }
        zzu zzuVar7 = this.zza;
        if (zzuVar7.zzg != null) {
            try {
                zzuVar7.zzg.zzc();
                zzuVar7.zzg.zzh();
            } catch (RemoteException e6) {
                int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e6);
            }
        }
        zzu zzuVar8 = this.zza;
        zzu.zzw(zzuVar8, zzu.zzo(zzuVar8, str));
        return true;
    }
}
