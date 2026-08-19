package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhe {
    private final zza zza;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public interface zza {
        void doStartService(Context context, Intent intent);
    }

    public zzhe(zza zzaVar) {
        Preconditions.checkNotNull(zzaVar);
        this.zza = zzaVar;
    }

    public final void zza(Context context, Intent intent) {
        zzgi zzgiVarZzj = zzhw.zza(context, null, null).zzj();
        if (intent == null) {
            zzgiVarZzj.zzu().zza("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        zzgiVarZzj.zzp().zza("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzgiVarZzj.zzp().zza("Starting wakeful intent.");
            this.zza.doStartService(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            zzgiVarZzj.zzu().zza("Install Referrer Broadcasts are deprecated");
        }
    }
}
