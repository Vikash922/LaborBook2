package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorT] */
/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznh<FieldDescriptorT> extends zzne<FieldDescriptorT, Object> {
    zznh() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzne
    public final void zzd() {
        if (!zze()) {
            for (int i = 0; i < zza(); i++) {
                Map.Entry<FieldDescriptorT, Object> entryZza = zza(i);
                if (((zzkx) entryZza.getKey()).zze()) {
                    entryZza.setValue(Collections.unmodifiableList((List) entryZza.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorT, Object> entry : zzb()) {
                if (((zzkx) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzd();
    }
}
