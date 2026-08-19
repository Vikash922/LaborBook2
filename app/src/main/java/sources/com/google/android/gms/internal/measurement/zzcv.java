package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcv {
    private static zzcv zza = new zzcy();

    public static synchronized zzcv zza() {
        return zza;
    }

    public abstract URLConnection zza(URL url, String str) throws IOException;
}
