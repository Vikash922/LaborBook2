package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgln extends zzgdv {
    private final zzgnm zza;

    public zzgln(zzgnm zzgnmVar) {
        this.zza = zzgnmVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgln)) {
            return false;
        }
        zzgnm zzgnmVar = ((zzgln) obj).zza;
        zzgnm zzgnmVar2 = this.zza;
        return zzgnmVar2.zzc().zzg().equals(zzgnmVar.zzc().zzg()) && zzgnmVar2.zzc().zzi().equals(zzgnmVar.zzc().zzi()) && zzgnmVar2.zzc().zzh().equals(zzgnmVar.zzc().zzh());
    }

    public final int hashCode() {
        zzgnm zzgnmVar = this.zza;
        return Objects.hash(zzgnmVar.zzc(), zzgnmVar.zzd());
    }

    public final String toString() {
        zzgnm zzgnmVar = this.zza;
        String strZzi = zzgnmVar.zzc().zzi();
        int iOrdinal = zzgnmVar.zzc().zzg().ordinal();
        return String.format("(typeUrl=%s, outputPrefixType=%s)", strZzi, iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK");
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    public final boolean zza() {
        return this.zza.zzc().zzg() != zzgtt.RAW;
    }

    public final zzgnm zzb() {
        return this.zza;
    }
}
