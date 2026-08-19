package com.google.android.gms.measurement.internal;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.measurement.internal.zzjc;
import java.util.EnumMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzai {
    private final EnumMap<zzjc.zza, zzal> zza;

    public final zzal zza(zzjc.zza zzaVar) {
        zzal zzalVar = this.zza.get(zzaVar);
        return zzalVar == null ? zzal.UNSET : zzalVar;
    }

    public static zzai zza(String str) {
        EnumMap enumMap = new EnumMap(zzjc.zza.class);
        if (str.length() >= zzjc.zza.values().length) {
            int i = 0;
            if (str.charAt(0) == '1') {
                zzjc.zza[] zzaVarArrValues = zzjc.zza.values();
                int length = zzaVarArrValues.length;
                int i2 = 1;
                while (i < length) {
                    enumMap.put(zzaVarArrValues[i], zzal.zza(str.charAt(i2)));
                    i++;
                    i2++;
                }
                return new zzai(enumMap);
            }
        }
        return new zzai();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(AppEventsConstants.EVENT_PARAM_VALUE_YES);
        for (zzjc.zza zzaVar : zzjc.zza.values()) {
            zzal zzalVar = this.zza.get(zzaVar);
            if (zzalVar == null) {
                zzalVar = zzal.UNSET;
            }
            sb.append(zzalVar.zzl);
        }
        return sb.toString();
    }

    zzai() {
        this.zza = new EnumMap<>(zzjc.zza.class);
    }

    private zzai(EnumMap<zzjc.zza, zzal> enumMap) {
        EnumMap<zzjc.zza, zzal> enumMap2 = new EnumMap<>(zzjc.zza.class);
        this.zza = enumMap2;
        enumMap2.putAll(enumMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.measurement.internal.zzjc.zza r3, int r4) {
        /*
            r2 = this;
            com.google.android.gms.measurement.internal.zzal r0 = com.google.android.gms.measurement.internal.zzal.UNSET
            r1 = -30
            if (r4 == r1) goto L1e
            r1 = -20
            if (r4 == r1) goto L1b
            r1 = -10
            if (r4 == r1) goto L18
            if (r4 == 0) goto L1b
            r1 = 30
            if (r4 == r1) goto L15
            goto L20
        L15:
            com.google.android.gms.measurement.internal.zzal r0 = com.google.android.gms.measurement.internal.zzal.INITIALIZATION
            goto L20
        L18:
            com.google.android.gms.measurement.internal.zzal r0 = com.google.android.gms.measurement.internal.zzal.MANIFEST
            goto L20
        L1b:
            com.google.android.gms.measurement.internal.zzal r0 = com.google.android.gms.measurement.internal.zzal.API
            goto L20
        L1e:
            com.google.android.gms.measurement.internal.zzal r0 = com.google.android.gms.measurement.internal.zzal.TCF
        L20:
            java.util.EnumMap<com.google.android.gms.measurement.internal.zzjc$zza, com.google.android.gms.measurement.internal.zzal> r4 = r2.zza
            r4.put(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzai.zza(com.google.android.gms.measurement.internal.zzjc$zza, int):void");
    }

    public final void zza(zzjc.zza zzaVar, zzal zzalVar) {
        this.zza.put(zzaVar, zzalVar);
    }
}
