package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcll implements zzckn {
    private final zzdud zza;

    zzcll(zzdud zzdudVar) {
        this.zza = zzdudVar;
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final void zza(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zza.zzo(str.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
    }
}
