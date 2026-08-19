package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzglk extends zzgdv {
    private final String zza;
    private final zzgtt zzb;

    /* synthetic */ zzglk(String str, zzgtt zzgttVar, zzgll zzgllVar) {
        this.zza = str;
        this.zzb = zzgttVar;
    }

    public final String toString() {
        String str = this.zza;
        int iOrdinal = this.zzb.ordinal();
        return String.format("(typeUrl=%s, outputPrefixType=%s)", str, iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK");
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    public final boolean zza() {
        return this.zzb != zzgtt.RAW;
    }
}
