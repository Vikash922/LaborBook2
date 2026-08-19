package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzqn;
import com.google.firebase.messaging.Constants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhf implements Runnable {
    private final /* synthetic */ com.google.android.gms.internal.measurement.zzbz zza;
    private final /* synthetic */ ServiceConnection zzb;
    private final /* synthetic */ zzhc zzc;

    zzhf(zzhc zzhcVar, com.google.android.gms.internal.measurement.zzbz zzbzVar, ServiceConnection serviceConnection) {
        this.zza = zzbzVar;
        this.zzb = serviceConnection;
        this.zzc = zzhcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhd zzhdVar = this.zzc.zza;
        String str = this.zzc.zzb;
        com.google.android.gms.internal.measurement.zzbz zzbzVar = this.zza;
        ServiceConnection serviceConnection = this.zzb;
        Bundle bundleZza = zzhdVar.zza(str, zzbzVar);
        zzhdVar.zza.zzl().zzt();
        zzhdVar.zza.zzy();
        if (bundleZza != null) {
            long j = bundleZza.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzhdVar.zza.zzj().zzu().zza("Service response is missing Install Referrer install timestamp");
            } else {
                String string = bundleZza.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzhdVar.zza.zzj().zzg().zza("No referrer defined in Install Referrer response");
                } else {
                    zzhdVar.zza.zzj().zzp().zza("InstallReferrer API result", string);
                    boolean z = zzqn.zza() && zzhdVar.zza.zzf().zza(zzbj.zzct);
                    Bundle bundleZza2 = zzhdVar.zza.zzt().zza(Uri.parse("?" + string), z);
                    if (bundleZza2 == null) {
                        zzhdVar.zza.zzj().zzg().zza("No campaign params defined in Install Referrer result");
                    } else {
                        if (!z) {
                            String string2 = bundleZza2.getString("medium");
                            if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                                long j2 = bundleZza.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                                if (j2 == 0) {
                                    zzhdVar.zza.zzj().zzg().zza("Install Referrer is missing click timestamp for ad campaign");
                                } else {
                                    bundleZza2.putLong("click_timestamp", j2);
                                }
                            }
                        } else if (bundleZza2.containsKey("gclid") || bundleZza2.containsKey("gbraid")) {
                            long j3 = bundleZza.getLong("referrer_click_timestamp_server_seconds", 0L) * 1000;
                            if (j3 > 0) {
                                bundleZza2.putLong("click_timestamp", j3);
                            }
                        }
                        if (j == zzhdVar.zza.zzn().zzd.zza()) {
                            zzhdVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from module while it may have already been logged.");
                        }
                        if (zzhdVar.zza.zzac()) {
                            zzhdVar.zza.zzn().zzd.zza(j);
                            zzhdVar.zza.zzj().zzp().zza("Logging Install Referrer campaign from gmscore with ", "referrer API v2");
                            bundleZza2.putString("_cis", "referrer API v2");
                            zzhdVar.zza.zzp().zza("auto", Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN, bundleZza2, str);
                        }
                    }
                }
            }
        }
        if (serviceConnection != null) {
            ConnectionTracker.getInstance().unbindService(zzhdVar.zza.zza(), serviceConnection);
        }
    }
}
