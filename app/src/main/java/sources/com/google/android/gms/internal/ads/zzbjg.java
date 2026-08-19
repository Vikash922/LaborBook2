package com.google.android.gms.internal.ads;

import com.itextpdf.svg.SvgConstants;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbjg implements zzbjj {
    zzbjg() {
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcel zzcelVar = (zzcel) obj;
        if (map.keySet().contains("start")) {
            zzcelVar.zzN().zzp();
        } else if (map.keySet().contains(SvgConstants.Tags.STOP)) {
            zzcelVar.zzN().zzq();
        } else if (map.keySet().contains("cancel")) {
            zzcelVar.zzN().zzo();
        }
    }
}
