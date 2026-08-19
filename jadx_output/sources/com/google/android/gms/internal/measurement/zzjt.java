package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzjt implements zzjy {
    @Override // java.util.Iterator
    public /* synthetic */ Byte next() {
        return Byte.valueOf(zza());
    }

    zzjt() {
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
