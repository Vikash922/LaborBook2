package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
enum zzal {
    UNSET('0'),
    REMOTE_DEFAULT('1'),
    REMOTE_DELEGATION('2'),
    MANIFEST('3'),
    INITIALIZATION('4'),
    API('5'),
    CHILD_ACCOUNT('6'),
    TCF('7'),
    REMOTE_ENFORCED_DEFAULT('8'),
    FAILSAFE('9');

    private final char zzl;

    public static zzal zza(char c) {
        for (zzal zzalVar : values()) {
            if (zzalVar.zzl == c) {
                return zzalVar;
            }
        }
        return UNSET;
    }

    zzal(char c) {
        this.zzl = c;
    }
}
