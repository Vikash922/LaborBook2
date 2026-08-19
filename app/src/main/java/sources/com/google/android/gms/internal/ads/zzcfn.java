package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.CollectionUtils;
import com.itextpdf.svg.SvgConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcfn extends com.google.android.gms.ads.internal.client.zzdz {
    private final zzcbg zza;
    private final boolean zzc;
    private final boolean zzd;
    private int zze;
    private com.google.android.gms.ads.internal.client.zzed zzf;
    private boolean zzg;
    private float zzi;
    private float zzj;
    private float zzk;
    private boolean zzl;
    private boolean zzm;
    private zzbhb zzn;
    private final Object zzb = new Object();
    private boolean zzh = true;

    public zzcfn(zzcbg zzcbgVar, float f, boolean z, boolean z2) {
        this.zza = zzcbgVar;
        this.zzi = f;
        this.zzc = z;
        this.zzd = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0055 A[Catch: RemoteException -> 0x003f, all -> 0x0072, TryCatch #1 {RemoteException -> 0x003f, blocks: (B:31:0x0037, B:33:0x003b, B:37:0x0043, B:39:0x0047, B:41:0x004c, B:43:0x0050, B:45:0x0055, B:47:0x0059, B:48:0x005c, B:50:0x0063, B:52:0x0067), top: B:62:0x0037, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0070 A[Catch: all -> 0x0072, DONT_GENERATE, TryCatch #0 {, blocks: (B:4:0x0003, B:29:0x0033, B:31:0x0037, B:33:0x003b, B:37:0x0043, B:39:0x0047, B:41:0x004c, B:43:0x0050, B:45:0x0055, B:47:0x0059, B:48:0x005c, B:50:0x0063, B:52:0x0067, B:55:0x0070, B:54:0x006b), top: B:60:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void zzd(com.google.android.gms.internal.ads.zzcfn r7, int r8, int r9, boolean r10, boolean r11) {
        /*
            java.lang.Object r0 = r7.zzb
            monitor-enter(r0)
            boolean r1 = r7.zzg     // Catch: java.lang.Throwable -> L72
            r2 = 0
            r3 = 1
            if (r1 != 0) goto Lf
            if (r9 != r3) goto Lf
            r9 = r3
            r4 = r9
            r5 = r4
            goto L11
        Lf:
            r4 = r9
            r5 = r2
        L11:
            if (r8 == r9) goto L15
            r8 = r3
            goto L16
        L15:
            r8 = r2
        L16:
            if (r8 == 0) goto L1d
            if (r4 != r3) goto L1d
            r9 = r3
            r4 = r9
            goto L1e
        L1d:
            r9 = r2
        L1e:
            if (r8 == 0) goto L25
            r6 = 2
            if (r4 != r6) goto L25
            r6 = r3
            goto L26
        L25:
            r6 = r2
        L26:
            if (r8 == 0) goto L2d
            r8 = 3
            if (r4 != r8) goto L2d
            r8 = r3
            goto L2e
        L2d:
            r8 = r2
        L2e:
            if (r1 != 0) goto L32
            if (r5 == 0) goto L33
        L32:
            r2 = r3
        L33:
            r7.zzg = r2     // Catch: java.lang.Throwable -> L72
            if (r5 == 0) goto L41
            com.google.android.gms.ads.internal.client.zzed r1 = r7.zzf     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r1 == 0) goto L41
            r1.zzi()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            goto L41
        L3f:
            r7 = move-exception
            goto L6b
        L41:
            if (r9 == 0) goto L4a
            com.google.android.gms.ads.internal.client.zzed r9 = r7.zzf     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r9 == 0) goto L4a
            r9.zzh()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L4a:
            if (r6 == 0) goto L53
            com.google.android.gms.ads.internal.client.zzed r9 = r7.zzf     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r9 == 0) goto L53
            r9.zzg()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L53:
            if (r8 == 0) goto L61
            com.google.android.gms.ads.internal.client.zzed r8 = r7.zzf     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r8 == 0) goto L5c
            r8.zze()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L5c:
            com.google.android.gms.internal.ads.zzcbg r8 = r7.zza     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            r8.zzw()     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
        L61:
            if (r10 == r11) goto L70
            com.google.android.gms.ads.internal.client.zzed r7 = r7.zzf     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            if (r7 == 0) goto L70
            r7.zzf(r11)     // Catch: android.os.RemoteException -> L3f java.lang.Throwable -> L72
            goto L70
        L6b:
            java.lang.String r8 = "#007 Could not call remote method."
            com.google.android.gms.ads.internal.util.client.zzo.zzl(r8, r7)     // Catch: java.lang.Throwable -> L72
        L70:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
            return
        L72:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfn.zzd(com.google.android.gms.internal.ads.zzcfn, int, int, boolean, boolean):void");
    }

    private final void zzw(final int i, final int i2, final boolean z, final boolean z2) {
        zzbzk.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfm
            @Override // java.lang.Runnable
            public final void run() {
                zzcfn.zzd(this.zza, i, i2, z, z2);
            }
        });
    }

    private final void zzx(String str, Map map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        zzbzk.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcfl
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza.zzd("pubVideoCmd", map2);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zze() {
        float f;
        synchronized (this.zzb) {
            f = this.zzk;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zzf() {
        float f;
        synchronized (this.zzb) {
            f = this.zzj;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final float zzg() {
        float f;
        synchronized (this.zzb) {
            f = this.zzi;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final int zzh() {
        int i;
        synchronized (this.zzb) {
            i = this.zze;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final com.google.android.gms.ads.internal.client.zzed zzi() throws RemoteException {
        com.google.android.gms.ads.internal.client.zzed zzedVar;
        synchronized (this.zzb) {
            zzedVar = this.zzf;
        }
        return zzedVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzj(boolean z) {
        zzx(true != z ? "unmute" : "mute", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzk() {
        zzx("pause", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzl() {
        zzx("play", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzm(com.google.android.gms.ads.internal.client.zzed zzedVar) {
        synchronized (this.zzb) {
            this.zzf = zzedVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final void zzn() {
        zzx(SvgConstants.Tags.STOP, null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzo() {
        boolean z;
        Object obj = this.zzb;
        boolean zZzp = zzp();
        synchronized (obj) {
            z = false;
            if (!zZzp) {
                try {
                    if (this.zzm && this.zzd) {
                        z = true;
                    }
                } finally {
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzp() {
        boolean z;
        synchronized (this.zzb) {
            z = false;
            if (this.zzc && this.zzl) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final boolean zzq() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzh;
        }
        return z;
    }

    public final void zzr(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.zzb) {
            z2 = true;
            if (f2 == this.zzi && f3 == this.zzk) {
                z2 = false;
            }
            this.zzi = f2;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmP)).booleanValue()) {
                this.zzj = f;
            }
            z3 = this.zzh;
            this.zzh = z;
            i2 = this.zze;
            this.zze = i;
            float f4 = this.zzk;
            this.zzk = f3;
            if (Math.abs(f3 - f4) > 1.0E-4f) {
                this.zza.zzF().invalidate();
            }
        }
        if (z2) {
            try {
                zzbhb zzbhbVar = this.zzn;
                if (zzbhbVar != null) {
                    zzbhbVar.zze();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzw(i2, i, z3, z);
    }

    public final void zzs(com.google.android.gms.ads.internal.client.zzfw zzfwVar) {
        Object obj = this.zzb;
        boolean z = zzfwVar.zzb;
        boolean z2 = zzfwVar.zzc;
        synchronized (obj) {
            this.zzl = z;
            this.zzm = z2;
        }
        boolean z3 = zzfwVar.zza;
        zzx("initialState", CollectionUtils.mapOf("muteStart", true != z3 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES, "customControlsRequested", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES, "clickToExpandRequested", true != z2 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES));
    }

    public final void zzt(float f) {
        synchronized (this.zzb) {
            this.zzj = f;
        }
    }

    public final void zzu() {
        boolean z;
        int i;
        synchronized (this.zzb) {
            z = this.zzh;
            i = this.zze;
            this.zze = 3;
        }
        zzw(i, 3, z, z);
    }

    public final void zzv(zzbhb zzbhbVar) {
        synchronized (this.zzb) {
            this.zzn = zzbhbVar;
        }
    }
}
