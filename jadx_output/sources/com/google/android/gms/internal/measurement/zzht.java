package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzht extends ContentObserver {
    private final /* synthetic */ zzhr zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzht(zzhr zzhrVar, Handler handler) {
        super(null);
        this.zza = zzhrVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.zza.zza.set(true);
    }
}
