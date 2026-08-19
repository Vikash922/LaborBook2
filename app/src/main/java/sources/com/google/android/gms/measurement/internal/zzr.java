package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzrl;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzr extends BroadcastReceiver {
    private final zzhw zza;

    public zzr(zzhw zzhwVar) {
        this.zza = zzhwVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            this.zza.zzj().zzu().zza("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            this.zza.zzj().zzu().zza("App receiver called with null action");
            return;
        }
        action.hashCode();
        if (action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            final zzhw zzhwVar = this.zza;
            if (zzrl.zza() && zzhwVar.zzf().zzf(null, zzbj.zzch)) {
                zzhwVar.zzj().zzp().zza("App receiver notified triggers are available");
                zzhwVar.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzt
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzhw zzhwVar2 = zzhwVar;
                        if (!zzhwVar2.zzt().zzw()) {
                            zzhwVar2.zzj().zzu().zza("registerTrigger called but app not eligible");
                            return;
                        }
                        final zzjk zzjkVarZzp = zzhwVar2.zzp();
                        Objects.requireNonNull(zzjkVarZzp);
                        new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzq
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzjkVarZzp.zzap();
                            }
                        }).start();
                    }
                });
                return;
            }
            return;
        }
        this.zza.zzj().zzu().zza("App receiver called with unknown action");
    }
}
