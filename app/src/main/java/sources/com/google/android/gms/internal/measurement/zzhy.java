package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public interface zzhy {
    String zza(ContentResolver contentResolver, String str) throws zzhx;

    <T extends Map<String, String>> T zza(ContentResolver contentResolver, String[] strArr, zzhv<T> zzhvVar) throws zzhx;
}
