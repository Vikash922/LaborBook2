package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzccf extends zzaqs {
    static final zzccf zzb = new zzccf();

    zzccf() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqs
    public final zzaqw zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzaqy() : "mvhd".equals(str) ? new zzaqz() : new zzara(str);
    }
}
