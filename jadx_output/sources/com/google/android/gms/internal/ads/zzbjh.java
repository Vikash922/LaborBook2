package com.google.android.gms.internal.ads;

import com.itextpdf.svg.SvgConstants;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbjh implements zzbjj {
    zzbjh() {
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcel zzcelVar = (zzcel) obj;
        if (map.keySet().contains("start")) {
            zzcelVar.zzax(true);
        }
        if (map.keySet().contains(SvgConstants.Tags.STOP)) {
            zzcelVar.zzax(false);
        }
    }
}
