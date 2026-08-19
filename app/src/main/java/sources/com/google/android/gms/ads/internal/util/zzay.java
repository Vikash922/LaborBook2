package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.internal.ads.zzbci;
import com.google.android.gms.internal.ads.zzduc;
import com.google.android.gms.internal.ads.zzdud;
import com.google.common.net.HttpHeaders;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzay {
    private zzdud zzg;
    private final Object zzb = new Object();
    private String zzc = "";
    private String zzd = "";
    private boolean zze = false;
    private boolean zzf = false;
    protected String zza = "";

    /* JADX WARN: Multi-variable type inference failed */
    protected static final String zzo(Context context, String str, String str2) {
        HashMap map = new HashMap();
        map.put(HttpHeaders.USER_AGENT, com.google.android.gms.ads.internal.zzv.zzq().zzc(context, str2));
        ListenableFuture listenableFutureZzb = new zzbo(context).zzb(0, str, map, null);
        try {
            return (String) listenableFutureZzb.get(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzeY)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String strValueOf = String.valueOf(str);
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Interrupted while retrieving a response from: ".concat(strValueOf), e);
            listenableFutureZzb.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String strValueOf2 = String.valueOf(str);
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Timeout while retrieving a response from: ".concat(strValueOf2), e2);
            listenableFutureZzb.cancel(true);
            return null;
        } catch (Exception e3) {
            String strValueOf3 = String.valueOf(str);
            int i3 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error retrieving a response from: ".concat(strValueOf3), e3);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068 A[Catch: all -> 0x007f, TryCatch #2 {, blocks: (B:4:0x000b, B:6:0x0013, B:7:0x0018, B:10:0x0032, B:12:0x003a, B:14:0x004f, B:17:0x0061, B:9:0x0029, B:18:0x0068, B:19:0x006a), top: B:29:0x000b, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.net.Uri zzp(android.content.Context r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r4 = this;
            android.net.Uri r6 = android.net.Uri.parse(r6)
            android.net.Uri$Builder r6 = r6.buildUpon()
            java.lang.Object r0 = r4.zzb
            monitor-enter(r0)
            java.lang.String r1 = r4.zzc     // Catch: java.lang.Throwable -> L7f
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L7f
            if (r1 == 0) goto L68
            com.google.android.gms.ads.internal.zzv.zzq()     // Catch: java.lang.Throwable -> L7f
            java.lang.String r1 = "debug_signals_id.txt"
            java.io.FileInputStream r1 = r5.openFileInput(r1)     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7f
            java.lang.String r2 = new java.lang.String     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7f
            r3 = 1
            byte[] r1 = com.google.android.gms.common.util.IOUtils.readInputStreamFully(r1, r3)     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7f
            java.lang.String r3 = "UTF-8"
            r2.<init>(r1, r3)     // Catch: java.io.IOException -> L29 java.lang.Throwable -> L7f
            goto L32
        L29:
            java.lang.String r1 = "Error reading from internal storage."
            int r2 = com.google.android.gms.ads.internal.util.zze.zza     // Catch: java.lang.Throwable -> L7f
            com.google.android.gms.ads.internal.util.client.zzo.zze(r1)     // Catch: java.lang.Throwable -> L7f
            java.lang.String r2 = ""
        L32:
            r4.zzc = r2     // Catch: java.lang.Throwable -> L7f
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L7f
            if (r1 == 0) goto L68
            com.google.android.gms.ads.internal.zzv.zzq()     // Catch: java.lang.Throwable -> L7f
            java.util.UUID r1 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L7f
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7f
            r4.zzc = r1     // Catch: java.lang.Throwable -> L7f
            com.google.android.gms.ads.internal.zzv.zzq()     // Catch: java.lang.Throwable -> L7f
            java.lang.String r1 = r4.zzc     // Catch: java.lang.Throwable -> L7f
            java.lang.String r2 = "debug_signals_id.txt"
            r3 = 0
            java.io.FileOutputStream r5 = r5.openFileOutput(r2, r3)     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L7f
            java.lang.String r2 = "UTF-8"
            byte[] r1 = r1.getBytes(r2)     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L7f
            r5.write(r1)     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L7f
            r5.close()     // Catch: java.lang.Exception -> L60 java.lang.Throwable -> L7f
            goto L68
        L60:
            r5 = move-exception
            java.lang.String r1 = "Error writing to file in internal storage."
            int r2 = com.google.android.gms.ads.internal.util.zze.zza     // Catch: java.lang.Throwable -> L7f
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r1, r5)     // Catch: java.lang.Throwable -> L7f
        L68:
            java.lang.String r5 = r4.zzc     // Catch: java.lang.Throwable -> L7f
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            java.lang.String r0 = "linkedDeviceId"
            r6.appendQueryParameter(r0, r5)
            java.lang.String r5 = "adSlotPath"
            r6.appendQueryParameter(r5, r7)
            java.lang.String r5 = "afmaVersion"
            r6.appendQueryParameter(r5, r8)
            android.net.Uri r5 = r6.build()
            return r5
        L7f:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7f
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzay.zzp(android.content.Context, java.lang.String, java.lang.String, java.lang.String):android.net.Uri");
    }

    public final zzdud zza() {
        return this.zzg;
    }

    public final String zzb() {
        String str;
        synchronized (this.zzb) {
            str = this.zzd;
        }
        return str;
    }

    public final void zzc(Context context) {
        zzdud zzdudVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjn)).booleanValue() || (zzdudVar = this.zzg) == null) {
            return;
        }
        zzdudVar.zzh(new zzav(this, context), zzduc.DEBUG_MENU);
    }

    public final void zzd(Context context, String str, String str2) {
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzV(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzeU), str, str2));
    }

    public final void zze(Context context, String str, String str2, String str3) {
        Uri.Builder builderBuildUpon = zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzeX), str3, str).buildUpon();
        builderBuildUpon.appendQueryParameter("debugData", str2);
        com.google.android.gms.ads.internal.zzv.zzq();
        zzs.zzM(context, str, builderBuildUpon.build().toString());
    }

    public final void zzf(boolean z) {
        synchronized (this.zzb) {
            this.zzf = z;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjn)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzi().zzx(z);
                zzdud zzdudVar = this.zzg;
                if (zzdudVar != null) {
                    zzdudVar.zzl(z);
                }
            }
        }
    }

    public final void zzg(zzdud zzdudVar) {
        this.zzg = zzdudVar;
    }

    public final void zzh(boolean z) {
        synchronized (this.zzb) {
            this.zze = z;
        }
    }

    protected final void zzi(Context context, String str, boolean z, boolean z2) {
        if (context instanceof Activity) {
            zzs.zza.post(new zzax(this, context, str, z, z2));
        } else {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Can not create dialog without Activity Context");
        }
    }

    public final boolean zzj(Context context, String str, String str2) {
        String strZzo = zzo(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzeW), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzo)) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Not linked for debug signals.");
            return false;
        }
        try {
            boolean zEquals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(new JSONObject(strZzo.trim()).optString("debug_mode"));
            zzf(zEquals);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjn)).booleanValue()) {
                zzg zzgVarZzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                if (true != zEquals) {
                    str = "";
                }
                zzgVarZzi.zzw(str);
            }
            return zEquals;
        } catch (JSONException e) {
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to get debug mode response json.", e);
            return false;
        }
    }

    final boolean zzk(Context context, String str, String str2) {
        String strZzo = zzo(context, zzp(context, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzeV), str, str2).toString(), str2);
        if (TextUtils.isEmpty(strZzo)) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(strZzo.trim());
            String strOptString = jSONObject.optString("gct");
            this.zza = jSONObject.optString("status");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzjn)).booleanValue()) {
                boolean z = AppEventsConstants.EVENT_PARAM_VALUE_NO.equals(this.zza) || ExifInterface.GPS_MEASUREMENT_2D.equals(this.zza);
                zzf(z);
                zzg zzgVarZzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                if (!z) {
                    str = "";
                }
                zzgVarZzi.zzw(str);
            }
            synchronized (this.zzb) {
                this.zzd = strOptString;
            }
            return true;
        } catch (JSONException e) {
            int i2 = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Fail to get in app preview response json.", e);
            return false;
        }
    }

    public final boolean zzl() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzf;
        }
        return z;
    }

    public final boolean zzm() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zze;
        }
        return z;
    }

    public final boolean zzn(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzm()) {
            return false;
        }
        int i = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Sending troubleshooting signals to the server.");
        zze(context, str, str2, str3);
        return true;
    }
}
