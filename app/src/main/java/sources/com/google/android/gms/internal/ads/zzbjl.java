package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbjl implements zzbjj {
    private final zzbjm zza;

    public zzbjl(zzbjm zzbjmVar) {
        this.zza = zzbjmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcel zzcelVar = (zzcel) obj;
        boolean zEquals = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("transparentBackground"));
        boolean zEquals2 = AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Fail to parse float", e);
        }
        zzbjm zzbjmVar = this.zza;
        zzbjmVar.zzc(zEquals);
        zzbjmVar.zzb(zEquals2, f);
        zzcelVar.zzay(zEquals);
    }
}
