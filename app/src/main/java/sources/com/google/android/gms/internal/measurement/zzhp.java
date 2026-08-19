package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhp {
    private static zzhs zza;

    public static synchronized zzhs zza() {
        if (zza == null) {
            zza(new zzhr());
        }
        return zza;
    }

    private static synchronized void zza(zzhs zzhsVar) {
        if (zza != null) {
            throw new IllegalStateException("init() already called");
        }
        zza = zzhsVar;
    }
}
