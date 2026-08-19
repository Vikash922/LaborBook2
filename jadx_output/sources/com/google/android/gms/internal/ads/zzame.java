package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.jacoco.core.runtime.AgentOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzame implements zzamg {
    private final zzek zza;
    private final String zzc;
    private final int zzd;
    private String zzf;
    private zzaei zzg;
    private int zzi;
    private int zzj;
    private long zzk;
    private zzz zzl;
    private int zzm;
    private int zzn;
    private int zzh = 0;
    private long zzq = -9223372036854775807L;
    private final AtomicInteger zzb = new AtomicInteger();
    private int zzo = -1;
    private int zzp = -1;
    private final String zze = "video/mp2t";

    public zzame(String str, int i, int i2, String str2) {
        this.zza = new zzek(new byte[i2]);
        this.zzc = str;
        this.zzd = i;
    }

    @RequiresNonNull({AgentOptions.OUTPUT})
    private final void zzf(zzacz zzaczVar) {
        int i;
        int i2 = zzaczVar.zzb;
        if (i2 == -2147483647 || (i = zzaczVar.zzc) == -1) {
            return;
        }
        zzz zzzVar = this.zzl;
        if (zzzVar != null && i == zzzVar.zzE && i2 == zzzVar.zzF && Objects.equals(zzaczVar.zza, zzzVar.zzo)) {
            return;
        }
        zzz zzzVar2 = this.zzl;
        zzx zzxVar = zzzVar2 == null ? new zzx() : zzzVar2.zzb();
        zzxVar.zzO(this.zzf);
        zzxVar.zzE(this.zze);
        zzxVar.zzad(zzaczVar.zza);
        zzxVar.zzB(i);
        zzxVar.zzae(i2);
        zzxVar.zzS(this.zzc);
        zzxVar.zzab(this.zzd);
        zzz zzzVarZzaj = zzxVar.zzaj();
        this.zzl = zzzVarZzaj;
        this.zzg.zzm(zzzVarZzaj);
    }

    private final boolean zzg(zzek zzekVar, byte[] bArr, int i) {
        int iMin = Math.min(zzekVar.zza(), i - this.zzi);
        zzekVar.zzH(bArr, this.zzi, iMin);
        int i2 = this.zzi + iMin;
        this.zzi = i2;
        return i2 == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01de  */
    @Override // com.google.android.gms.internal.ads.zzamg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r21) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instruction units count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzame.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzb(zzadf zzadfVar, zzanu zzanuVar) {
        zzanuVar.zzc();
        this.zzf = zzanuVar.zzb();
        this.zzg = zzadfVar.zzw(zzanuVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzd(long j, int i) {
        this.zzq = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zze() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = 0;
        this.zzq = -9223372036854775807L;
        this.zzb.set(0);
    }
}
