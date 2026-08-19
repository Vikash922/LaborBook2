package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-api@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfui implements Iterable {
    final /* synthetic */ CharSequence zza;
    final /* synthetic */ zzful zzb;

    zzfui(zzful zzfulVar, CharSequence charSequence) {
        this.zza = charSequence;
        this.zzb = zzfulVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zzb.zzg(this.zza);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        zzfto.zzb(sb, this, ", ");
        sb.append(']');
        return sb.toString();
    }
}
