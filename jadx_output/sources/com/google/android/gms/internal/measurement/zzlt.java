package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzlt {
    private volatile zzml zza;
    private volatile zzjs zzb;

    public int hashCode() {
        return 1;
    }

    public final int zza() {
        if (this.zzb != null) {
            return this.zzb.zzb();
        }
        if (this.zza != null) {
            return this.zza.zzcb();
        }
        return 0;
    }

    public final zzjs zzb() {
        if (this.zzb != null) {
            return this.zzb;
        }
        synchronized (this) {
            if (this.zzb != null) {
                return this.zzb;
            }
            if (this.zza == null) {
                this.zzb = zzjs.zza;
            } else {
                this.zzb = this.zza.zzbz();
            }
            return this.zzb;
        }
    }

    private final zzml zzb(zzml zzmlVar) {
        if (this.zza == null) {
            synchronized (this) {
                if (this.zza == null) {
                    try {
                        this.zza = zzmlVar;
                        this.zzb = zzjs.zza;
                    } catch (zzlk unused) {
                        this.zza = zzmlVar;
                        this.zzb = zzjs.zza;
                    }
                }
            }
        }
        return this.zza;
    }

    public final zzml zza(zzml zzmlVar) {
        zzml zzmlVar2 = this.zza;
        this.zzb = null;
        this.zza = zzmlVar;
        return zzmlVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzlt)) {
            return false;
        }
        zzlt zzltVar = (zzlt) obj;
        zzml zzmlVar = this.zza;
        zzml zzmlVar2 = zzltVar.zza;
        if (zzmlVar == null && zzmlVar2 == null) {
            return zzb().equals(zzltVar.zzb());
        }
        if (zzmlVar != null && zzmlVar2 != null) {
            return zzmlVar.equals(zzmlVar2);
        }
        if (zzmlVar != null) {
            return zzmlVar.equals(zzltVar.zzb(zzmlVar.zzck()));
        }
        return zzb(zzmlVar2.zzck()).equals(zzmlVar2);
    }
}
