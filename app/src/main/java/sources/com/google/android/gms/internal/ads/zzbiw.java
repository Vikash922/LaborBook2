package com.google.android.gms.internal.ads;

import com.facebook.internal.ServerProtocol;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbiw implements zzbjj {
    zzbiw() {
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcel zzcelVar = (zzcel) obj;
        try {
            String str = (String) map.get(CommonCssConstants.ENABLED);
            zzbjj zzbjjVar = zzbji.zza;
            if (!zzftc.zzc(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE, str) && !zzftc.zzc("false", str)) {
                return;
            }
            zzfqk.zza(zzcelVar.getContext()).zzb(Boolean.parseBoolean(str));
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
