package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzjc {
    public static final zzjc zza = new zzjc(null, null, 100);
    private final EnumMap<zza, zzjb> zzb;
    private final int zzc;

    public static boolean zza(int i, int i2) {
        if (i == -20 && i2 == -30) {
            return true;
        }
        return (i == -30 && i2 == -20) || i == i2 || i < i2;
    }

    static char zza(zzjb zzjbVar) {
        if (zzjbVar == null) {
            return SignatureVisitor.SUPER;
        }
        int iOrdinal = zzjbVar.ordinal();
        if (iOrdinal == 1) {
            return SignatureVisitor.EXTENDS;
        }
        if (iOrdinal == 2) {
            return '0';
        }
        if (iOrdinal != 3) {
            return SignatureVisitor.SUPER;
        }
        return '1';
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
    public enum zza {
        AD_STORAGE("ad_storage"),
        ANALYTICS_STORAGE("analytics_storage"),
        AD_USER_DATA("ad_user_data"),
        AD_PERSONALIZATION("ad_personalization");

        public final String zze;

        zza(String str) {
            this.zze = str;
        }
    }

    public final int zza() {
        return this.zzc;
    }

    public final int hashCode() {
        int iHashCode = this.zzc * 17;
        Iterator<zzjb> it = this.zzb.values().iterator();
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + it.next().hashCode();
        }
        return iHashCode;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        Iterator it = this.zzb.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String strZzb = zzb((zzjb) entry.getValue());
            if (strZzb != null) {
                bundle.putString(((zza) entry.getKey()).zze, strZzb);
            }
        }
        return bundle;
    }

    static zzjb zza(String str) {
        if (str == null) {
            return zzjb.UNINITIALIZED;
        }
        if (str.equals("granted")) {
            return zzjb.GRANTED;
        }
        if (str.equals("denied")) {
            return zzjb.DENIED;
        }
        return zzjb.UNINITIALIZED;
    }

    public final zzjb zzc() {
        zzjb zzjbVar = this.zzb.get(zza.AD_STORAGE);
        return zzjbVar == null ? zzjb.UNINITIALIZED : zzjbVar;
    }

    public final zzjb zzd() {
        zzjb zzjbVar = this.zzb.get(zza.ANALYTICS_STORAGE);
        return zzjbVar == null ? zzjb.UNINITIALIZED : zzjbVar;
    }

    static zzjb zza(char c) {
        if (c == '+') {
            return zzjb.POLICY;
        }
        if (c == '0') {
            return zzjb.DENIED;
        }
        if (c == '1') {
            return zzjb.GRANTED;
        }
        return zzjb.UNINITIALIZED;
    }

    static zzjb zza(Boolean bool) {
        if (bool == null) {
            return zzjb.UNINITIALIZED;
        }
        if (bool.booleanValue()) {
            return zzjb.GRANTED;
        }
        return zzjb.DENIED;
    }

    public static zzjc zza(Bundle bundle, int i) {
        if (bundle == null) {
            return new zzjc(null, null, i);
        }
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzjd.STORAGE.zzd) {
            enumMap.put(zzaVar, zza(bundle.getString(zzaVar.zze)));
        }
        return new zzjc(enumMap, i);
    }

    public static zzjc zza(zzjb zzjbVar, zzjb zzjbVar2, int i) {
        EnumMap enumMap = new EnumMap(zza.class);
        enumMap.put(zza.AD_STORAGE, zzjbVar);
        enumMap.put(zza.ANALYTICS_STORAGE, zzjbVar2);
        return new zzjc(enumMap, -10);
    }

    public static zzjc zzb(String str) {
        return zza(str, 100);
    }

    public static zzjc zza(String str, int i) {
        EnumMap enumMap = new EnumMap(zza.class);
        if (str == null) {
            str = "";
        }
        zza[] zzaVarArrZza = zzjd.STORAGE.zza();
        for (int i2 = 0; i2 < zzaVarArrZza.length; i2++) {
            zza zzaVar = zzaVarArrZza[i2];
            int i3 = i2 + 2;
            if (i3 < str.length()) {
                enumMap.put(zzaVar, zza(str.charAt(i3)));
            } else {
                enumMap.put(zzaVar, zzjb.UNINITIALIZED);
            }
        }
        return new zzjc(enumMap, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzjc zza(com.google.android.gms.measurement.internal.zzjc r9) {
        /*
            r8 = this;
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<com.google.android.gms.measurement.internal.zzjc$zza> r1 = com.google.android.gms.measurement.internal.zzjc.zza.class
            r0.<init>(r1)
            com.google.android.gms.measurement.internal.zzjd r1 = com.google.android.gms.measurement.internal.zzjd.STORAGE
            com.google.android.gms.measurement.internal.zzjc$zza[] r1 = com.google.android.gms.measurement.internal.zzjd.zza(r1)
            int r2 = r1.length
            r3 = 0
        Lf:
            if (r3 >= r2) goto L54
            r4 = r1[r3]
            java.util.EnumMap<com.google.android.gms.measurement.internal.zzjc$zza, com.google.android.gms.measurement.internal.zzjb> r5 = r8.zzb
            java.lang.Object r5 = r5.get(r4)
            com.google.android.gms.measurement.internal.zzjb r5 = (com.google.android.gms.measurement.internal.zzjb) r5
            java.util.EnumMap<com.google.android.gms.measurement.internal.zzjc$zza, com.google.android.gms.measurement.internal.zzjb> r6 = r9.zzb
            java.lang.Object r6 = r6.get(r4)
            com.google.android.gms.measurement.internal.zzjb r6 = (com.google.android.gms.measurement.internal.zzjb) r6
            if (r5 != 0) goto L26
            goto L37
        L26:
            if (r6 != 0) goto L29
            goto L4c
        L29:
            com.google.android.gms.measurement.internal.zzjb r7 = com.google.android.gms.measurement.internal.zzjb.UNINITIALIZED
            if (r5 != r7) goto L2e
            goto L37
        L2e:
            com.google.android.gms.measurement.internal.zzjb r7 = com.google.android.gms.measurement.internal.zzjb.UNINITIALIZED
            if (r6 != r7) goto L33
            goto L4c
        L33:
            com.google.android.gms.measurement.internal.zzjb r7 = com.google.android.gms.measurement.internal.zzjb.POLICY
            if (r5 != r7) goto L39
        L37:
            r5 = r6
            goto L4c
        L39:
            com.google.android.gms.measurement.internal.zzjb r7 = com.google.android.gms.measurement.internal.zzjb.POLICY
            if (r6 != r7) goto L3e
            goto L4c
        L3e:
            com.google.android.gms.measurement.internal.zzjb r7 = com.google.android.gms.measurement.internal.zzjb.DENIED
            if (r5 == r7) goto L4a
            com.google.android.gms.measurement.internal.zzjb r5 = com.google.android.gms.measurement.internal.zzjb.DENIED
            if (r6 != r5) goto L47
            goto L4a
        L47:
            com.google.android.gms.measurement.internal.zzjb r5 = com.google.android.gms.measurement.internal.zzjb.GRANTED
            goto L4c
        L4a:
            com.google.android.gms.measurement.internal.zzjb r5 = com.google.android.gms.measurement.internal.zzjb.DENIED
        L4c:
            if (r5 == 0) goto L51
            r0.put(r4, r5)
        L51:
            int r3 = r3 + 1
            goto Lf
        L54:
            com.google.android.gms.measurement.internal.zzjc r9 = new com.google.android.gms.measurement.internal.zzjc
            r1 = 100
            r9.<init>(r0, r1)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjc.zza(com.google.android.gms.measurement.internal.zzjc):com.google.android.gms.measurement.internal.zzjc");
    }

    public final zzjc zzb(zzjc zzjcVar) {
        EnumMap enumMap = new EnumMap(zza.class);
        for (zza zzaVar : zzjd.STORAGE.zzd) {
            zzjb zzjbVar = this.zzb.get(zzaVar);
            if (zzjbVar == zzjb.UNINITIALIZED) {
                zzjbVar = zzjcVar.zzb.get(zzaVar);
            }
            if (zzjbVar != null) {
                enumMap.put(zzaVar, zzjbVar);
            }
        }
        return new zzjc(enumMap, this.zzc);
    }

    public final Boolean zze() {
        zzjb zzjbVar = this.zzb.get(zza.AD_STORAGE);
        if (zzjbVar == null) {
            return null;
        }
        int iOrdinal = zzjbVar.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                return false;
            }
            if (iOrdinal != 3) {
                return null;
            }
        }
        return true;
    }

    public final Boolean zzf() {
        zzjb zzjbVar = this.zzb.get(zza.ANALYTICS_STORAGE);
        if (zzjbVar == null) {
            return null;
        }
        int iOrdinal = zzjbVar.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal == 2) {
                return false;
            }
            if (iOrdinal != 3) {
                return null;
            }
        }
        return true;
    }

    static String zza(int i) {
        if (i == -30) {
            return "TCF";
        }
        if (i == -20) {
            return "API";
        }
        if (i == -10) {
            return "MANIFEST";
        }
        if (i == 0) {
            return "1P_API";
        }
        if (i == 30) {
            return "1P_INIT";
        }
        if (i == 90) {
            return "REMOTE_CONFIG";
        }
        if (i == 100) {
            return "UNKNOWN";
        }
        return "OTHER";
    }

    static String zzb(zzjb zzjbVar) {
        int iOrdinal = zzjbVar.ordinal();
        if (iOrdinal == 2) {
            return "denied";
        }
        if (iOrdinal != 3) {
            return null;
        }
        return "granted";
    }

    public static String zza(Bundle bundle) {
        String string;
        zza[] zzaVarArr = zzjd.STORAGE.zzd;
        int length = zzaVarArr.length;
        int i = 0;
        while (true) {
            Boolean bool = null;
            if (i >= length) {
                return null;
            }
            zza zzaVar = zzaVarArr[i];
            if (bundle.containsKey(zzaVar.zze) && (string = bundle.getString(zzaVar.zze)) != null) {
                if (string != null) {
                    if (string.equals("granted")) {
                        bool = Boolean.TRUE;
                    } else if (string.equals("denied")) {
                        bool = Boolean.FALSE;
                    }
                }
                if (bool == null) {
                    return string;
                }
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzg() {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "G1"
            r0.<init>(r1)
            com.google.android.gms.measurement.internal.zzjd r1 = com.google.android.gms.measurement.internal.zzjd.STORAGE
            com.google.android.gms.measurement.internal.zzjc$zza[] r1 = r1.zza()
            int r2 = r1.length
            r3 = 0
        Lf:
            if (r3 >= r2) goto L3a
            r4 = r1[r3]
            java.util.EnumMap<com.google.android.gms.measurement.internal.zzjc$zza, com.google.android.gms.measurement.internal.zzjb> r5 = r7.zzb
            java.lang.Object r4 = r5.get(r4)
            com.google.android.gms.measurement.internal.zzjb r4 = (com.google.android.gms.measurement.internal.zzjb) r4
            r5 = 45
            if (r4 == 0) goto L34
            int r4 = r4.ordinal()
            if (r4 == 0) goto L34
            r6 = 1
            if (r4 == r6) goto L32
            r6 = 2
            if (r4 == r6) goto L2f
            r6 = 3
            if (r4 == r6) goto L32
            goto L34
        L2f:
            r5 = 48
            goto L34
        L32:
            r5 = 49
        L34:
            r0.append(r5)
            int r3 = r3 + 1
            goto Lf
        L3a:
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjc.zzg():java.lang.String");
    }

    public final String zzh() {
        StringBuilder sb = new StringBuilder("G1");
        for (zza zzaVar : zzjd.STORAGE.zza()) {
            sb.append(zza(this.zzb.get(zzaVar)));
        }
        return sb.toString();
    }

    public final String toString() {
        StringBuilder sbAppend = new StringBuilder("source=").append(zza(this.zzc));
        for (zza zzaVar : zzjd.STORAGE.zzd) {
            sbAppend.append(",");
            sbAppend.append(zzaVar.zze);
            sbAppend.append("=");
            zzjb zzjbVar = this.zzb.get(zzaVar);
            if (zzjbVar == null) {
                zzjbVar = zzjb.UNINITIALIZED;
            }
            sbAppend.append(zzjbVar);
        }
        return sbAppend.toString();
    }

    private zzjc(EnumMap<zza, zzjb> enumMap, int i) {
        EnumMap<zza, zzjb> enumMap2 = new EnumMap<>(zza.class);
        this.zzb = enumMap2;
        enumMap2.putAll(enumMap);
        this.zzc = i;
    }

    public zzjc(Boolean bool, Boolean bool2, int i) {
        EnumMap<zza, zzjb> enumMap = new EnumMap<>(zza.class);
        this.zzb = enumMap;
        enumMap.put(zza.AD_STORAGE, zza(bool));
        enumMap.put(zza.ANALYTICS_STORAGE, zza(bool2));
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjc)) {
            return false;
        }
        zzjc zzjcVar = (zzjc) obj;
        for (zza zzaVar : zzjd.STORAGE.zzd) {
            if (this.zzb.get(zzaVar) != zzjcVar.zzb.get(zzaVar)) {
                return false;
            }
        }
        return this.zzc == zzjcVar.zzc;
    }

    public final boolean zza(zzjc zzjcVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            if (!zzjcVar.zza(zzaVar) && zza(zzaVar)) {
                return true;
            }
        }
        return false;
    }

    public final boolean zzi() {
        return zza(zza.AD_STORAGE);
    }

    public final boolean zza(zza zzaVar) {
        return this.zzb.get(zzaVar) != zzjb.DENIED;
    }

    public final boolean zzj() {
        return zza(zza.ANALYTICS_STORAGE);
    }

    public final boolean zzk() {
        Iterator<zzjb> it = this.zzb.values().iterator();
        while (it.hasNext()) {
            if (it.next() != zzjb.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final boolean zzc(zzjc zzjcVar) {
        return zzb(zzjcVar, (zza[]) this.zzb.keySet().toArray(new zza[0]));
    }

    public final boolean zzb(zzjc zzjcVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            zzjb zzjbVar = this.zzb.get(zzaVar);
            zzjb zzjbVar2 = zzjcVar.zzb.get(zzaVar);
            if (zzjbVar == zzjb.DENIED && zzjbVar2 != zzjb.DENIED) {
                return true;
            }
        }
        return false;
    }
}
