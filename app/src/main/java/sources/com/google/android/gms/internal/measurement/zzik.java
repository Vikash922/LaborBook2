package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzik implements zzif {
    private static zzik zza;

    @Nullable
    private final Context zzb;

    @Nullable
    private final ContentObserver zzc;

    static zzik zza(Context context) {
        zzik zzikVar;
        synchronized (zzik.class) {
            if (zza == null) {
                zza = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzik(context) : new zzik();
            }
            zzikVar = zza;
        }
        return zzikVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzif
    @Nullable
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final String zza(final String str) {
        Context context = this.zzb;
        if (context != null && !zzia.zza(context)) {
            try {
                return (String) zzii.zza(new zzih() { // from class: com.google.android.gms.internal.measurement.zzij
                    @Override // com.google.android.gms.internal.measurement.zzih
                    public final Object zza() {
                        return this.zza.zzb(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e) {
                Log.e("GservicesLoader", "Unable to read GServices for: " + str, e);
            }
        }
        return null;
    }

    final /* synthetic */ String zzb(String str) {
        return zzhn.zza(this.zzb.getContentResolver(), str, null);
    }

    private zzik() {
        this.zzb = null;
        this.zzc = null;
    }

    private zzik(Context context) {
        this.zzb = context;
        zzim zzimVar = new zzim(this, null);
        this.zzc = zzimVar;
        context.getContentResolver().registerContentObserver(zzhq.zza, true, zzimVar);
    }

    static synchronized void zza() {
        Context context;
        zzik zzikVar = zza;
        if (zzikVar != null && (context = zzikVar.zzb) != null && zzikVar.zzc != null) {
            context.getContentResolver().unregisterContentObserver(zza.zzc);
        }
        zza = null;
    }
}
