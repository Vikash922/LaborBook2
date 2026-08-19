package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfyz extends zzfxb {
    final transient Object zza;

    zzfyz(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfwr, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfxb, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfxb, com.google.android.gms.internal.ads.zzfwr, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzfxf(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.zza.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzfwr
    final int zza(Object[] objArr, int i) {
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfxb, com.google.android.gms.internal.ads.zzfwr
    public final zzfww zzd() {
        return zzfww.zzo(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfxb, com.google.android.gms.internal.ads.zzfwr
    /* JADX INFO: renamed from: zze */
    public final zzfzc iterator() {
        return new zzfxf(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfwr
    final boolean zzf() {
        return false;
    }
}
