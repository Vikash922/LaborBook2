package com.google.android.gms.internal.measurement;

import android.util.Log;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zziu extends zzir<Boolean> {
    @Override // com.google.android.gms.internal.measurement.zzir
    @Nullable
    final /* synthetic */ Boolean zza(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzhq.zzc.matcher(str).matches()) {
                return true;
            }
            if (zzhq.zzd.matcher(str).matches()) {
                return false;
            }
        }
        Log.e("PhenotypeFlag", "Invalid boolean value for " + super.zzb() + ": " + String.valueOf(obj));
        return null;
    }

    zziu(zziz zzizVar, String str, Boolean bool, boolean z) {
        super(zzizVar, str, bool);
    }
}
