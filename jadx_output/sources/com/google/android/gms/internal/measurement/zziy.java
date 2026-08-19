package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.common.base.Optional;
import com.google.common.base.Supplier;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zziy {
    zziy() {
    }

    abstract Context zza();

    @Nullable
    abstract Supplier<Optional<zzil>> zzb();
}
