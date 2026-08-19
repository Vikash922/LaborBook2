package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzei {
    private static zzei zza;
    private final Executor zzb;
    private final CopyOnWriteArrayList zzc;
    private final Object zzd;
    private int zze;
    private boolean zzf;

    private zzei(final Context context) {
        Executor executorZza = zzdd.zza();
        this.zzb = executorZza;
        this.zzc = new CopyOnWriteArrayList();
        this.zzd = new Object();
        this.zze = 0;
        executorZza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeb
            @Override // java.lang.Runnable
            public final void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(new zzeg(this.zza, null), intentFilter);
            }
        });
    }

    public static synchronized zzei zzb(Context context) {
        if (zza == null) {
            zza = new zzei(context);
        }
        return zza;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void zzd(com.google.android.gms.internal.ads.zzei r9, android.content.Context r10) {
        /*
            java.lang.String r0 = "connectivity"
            java.lang.Object r0 = r10.getSystemService(r0)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            r1 = 0
            r2 = 5
            if (r0 != 0) goto Ld
            goto L4f
        Ld:
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: java.lang.SecurityException -> L4f
            r3 = 1
            if (r0 == 0) goto L4e
            boolean r4 = r0.isConnected()
            if (r4 != 0) goto L1b
            goto L4e
        L1b:
            int r4 = r0.getType()
            r5 = 2
            r6 = 9
            r7 = 6
            r8 = 4
            if (r4 == 0) goto L39
            if (r4 == r3) goto L37
            if (r4 == r8) goto L39
            if (r4 == r2) goto L39
            if (r4 == r7) goto L35
            if (r4 == r6) goto L33
            r1 = 8
            goto L4f
        L33:
            r1 = 7
            goto L4f
        L35:
            r1 = r2
            goto L4f
        L37:
            r1 = r5
            goto L4f
        L39:
            int r0 = r0.getSubtype()
            switch(r0) {
                case 1: goto L4c;
                case 2: goto L4c;
                case 3: goto L4a;
                case 4: goto L4a;
                case 5: goto L4a;
                case 6: goto L4a;
                case 7: goto L4a;
                case 8: goto L4a;
                case 9: goto L4a;
                case 10: goto L4a;
                case 11: goto L4a;
                case 12: goto L4a;
                case 13: goto L35;
                case 14: goto L4a;
                case 15: goto L4a;
                case 16: goto L40;
                case 17: goto L4a;
                case 18: goto L37;
                case 19: goto L40;
                case 20: goto L42;
                default: goto L40;
            }
        L40:
            r1 = r7
            goto L4f
        L42:
            int r0 = com.google.android.gms.internal.ads.zzeu.zza
            r3 = 29
            if (r0 < r3) goto L4f
            r1 = r6
            goto L4f
        L4a:
            r1 = r8
            goto L4f
        L4c:
            r1 = 3
            goto L4f
        L4e:
            r1 = r3
        L4f:
            int r0 = com.google.android.gms.internal.ads.zzeu.zza
            r3 = 31
            if (r0 < r3) goto L78
            if (r1 != r2) goto L78
            java.lang.String r0 = "phone"
            java.lang.Object r10 = r10.getSystemService(r0)     // Catch: java.lang.RuntimeException -> L74
            android.telephony.TelephonyManager r10 = (android.telephony.TelephonyManager) r10     // Catch: java.lang.RuntimeException -> L74
            if (r10 == 0) goto L72
            r0 = r10
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: java.lang.RuntimeException -> L74
            com.google.android.gms.internal.ads.zzec r0 = new com.google.android.gms.internal.ads.zzec     // Catch: java.lang.RuntimeException -> L74
            r0.<init>(r9)     // Catch: java.lang.RuntimeException -> L74
            java.util.concurrent.Executor r1 = r9.zzb     // Catch: java.lang.RuntimeException -> L74
            r10.registerTelephonyCallback(r1, r0)     // Catch: java.lang.RuntimeException -> L74
            r10.unregisterTelephonyCallback(r0)     // Catch: java.lang.RuntimeException -> L74
            return
        L72:
            r10 = 0
            throw r10     // Catch: java.lang.RuntimeException -> L74
        L74:
            r9.zzh(r2)
            return
        L78:
            r9.zzh(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzei.zzd(com.google.android.gms.internal.ads.zzei, android.content.Context):void");
    }

    private final void zzg() {
        CopyOnWriteArrayList<zzee> copyOnWriteArrayList = this.zzc;
        for (zzee zzeeVar : copyOnWriteArrayList) {
            if (zzeeVar.zzc()) {
                copyOnWriteArrayList.remove(zzeeVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(int i) {
        zzg();
        synchronized (this.zzd) {
            if (this.zzf && this.zze == i) {
                return;
            }
            this.zzf = true;
            this.zze = i;
            Iterator it = this.zzc.iterator();
            while (it.hasNext()) {
                ((zzee) it.next()).zzb();
            }
        }
    }

    public final int zza() {
        int i;
        synchronized (this.zzd) {
            i = this.zze;
        }
        return i;
    }

    public final void zzf(zzzf zzzfVar, Executor executor) {
        boolean z;
        zzg();
        zzee zzeeVar = new zzee(this, zzzfVar, executor);
        synchronized (this.zzd) {
            this.zzc.add(zzeeVar);
            z = this.zzf;
        }
        if (z) {
            zzeeVar.zzb();
        }
    }
}
