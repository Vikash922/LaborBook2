package com.google.android.gms.internal.measurement;

import java.util.Comparator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzju implements Comparator<zzjs> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzjs zzjsVar, zzjs zzjsVar2) {
        zzjs zzjsVar3 = zzjsVar;
        zzjs zzjsVar4 = zzjsVar2;
        zzjy zzjyVar = (zzjy) zzjsVar3.iterator();
        zzjy zzjyVar2 = (zzjy) zzjsVar4.iterator();
        while (zzjyVar.hasNext() && zzjyVar2.hasNext()) {
            int iCompare = Integer.compare(zzjs.zza(zzjyVar.zza()), zzjs.zza(zzjyVar2.zza()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzjsVar3.zzb(), zzjsVar4.zzb());
    }

    zzju() {
    }
}
