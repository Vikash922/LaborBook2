package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcy extends zzcv {
    @Override // com.google.android.gms.internal.measurement.zzcv
    public final URLConnection zza(URL url, String str) throws IOException {
        return url.openConnection();
    }

    private zzcy() {
    }
}
