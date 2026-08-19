package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahl implements zzadc {
    private final zzek zza;
    private final zzadu zzb;
    private final zzadq zzc;
    private final zzads zzd;
    private final zzaei zze;
    private zzadf zzf;
    private zzaei zzg;
    private zzaei zzh;
    private int zzi;
    private zzav zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private int zzo;
    private zzahn zzp;
    private boolean zzq;

    public zzahl() {
        throw null;
    }

    public zzahl(int i) {
        this.zza = new zzek(10);
        this.zzb = new zzadu();
        this.zzc = new zzadq();
        this.zzk = -9223372036854775807L;
        this.zzd = new zzads();
        zzacx zzacxVar = new zzacx();
        this.zze = zzacxVar;
        this.zzh = zzacxVar;
        this.zzn = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0227  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzg(com.google.android.gms.internal.ads.zzadd r35) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahl.zzg(com.google.android.gms.internal.ads.zzadd):int");
    }

    private final long zzh(long j) {
        return this.zzk + ((j * 1000000) / ((long) this.zzb.zzd));
    }

    private final void zzj() {
        zzahn zzahnVar = this.zzp;
        if ((zzahnVar instanceof zzahi) && zzahnVar.zzh()) {
            long j = this.zzn;
            if (j == -1 || j == this.zzp.zzd()) {
                return;
            }
            this.zzp = ((zzahi) this.zzp).zzf(this.zzn);
            zzadf zzadfVar = this.zzf;
            zzadfVar.getClass();
            zzadfVar.zzP(this.zzp);
            this.zzg.getClass();
            this.zzp.zza();
        }
    }

    private static boolean zzk(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private final boolean zzl(zzadd zzaddVar) throws IOException {
        zzahn zzahnVar = this.zzp;
        if (zzahnVar != null) {
            long jZzd = zzahnVar.zzd();
            if (jZzd != -1 && zzaddVar.zze() > jZzd - 4) {
                return true;
            }
        }
        try {
            return !zzaddVar.zzm(this.zza.zzN(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean zzm(zzadd zzaddVar, boolean z) throws Throwable {
        int iZze;
        int i;
        int iZzb;
        zzaddVar.zzj();
        if (zzaddVar.zzf() == 0) {
            zzav zzavVarZza = this.zzd.zza(zzaddVar, null);
            this.zzj = zzavVarZza;
            if (zzavVarZza != null) {
                this.zzc.zzb(zzavVarZza);
            }
            iZze = (int) zzaddVar.zze();
            if (!z) {
                zzaddVar.zzk(iZze);
            }
            i = 0;
        } else {
            iZze = 0;
            i = 0;
        }
        int i2 = i;
        int i3 = i2;
        while (true) {
            if (!zzl(zzaddVar)) {
                zzek zzekVar = this.zza;
                zzekVar.zzL(0);
                int iZzg = zzekVar.zzg();
                if ((i == 0 || zzk(iZzg, i)) && (iZzb = zzadv.zzb(iZzg)) != -1) {
                    i2++;
                    if (i2 != 1) {
                        if (i2 == 4) {
                            break;
                        }
                    } else {
                        this.zzb.zza(iZzg);
                        i = iZzg;
                    }
                    zzaddVar.zzg(iZzb - 4);
                } else {
                    int i4 = i3 + 1;
                    if (i3 == (true != z ? 131072 : 32768)) {
                        if (z) {
                            return false;
                        }
                        zzj();
                        throw new EOFException();
                    }
                    if (z) {
                        zzaddVar.zzj();
                        zzaddVar.zzg(iZze + i4);
                    } else {
                        zzaddVar.zzk(1);
                    }
                    i = 0;
                    i3 = i4;
                    i2 = 0;
                }
            } else if (i2 <= 0) {
                zzj();
                throw new EOFException();
            }
        }
        if (z) {
            zzaddVar.zzk(iZze + i3);
        } else {
            zzaddVar.zzj();
        }
        this.zzi = i;
        return true;
    }

    public final void zza() {
        this.zzq = true;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final int zzb(zzadd zzaddVar, zzady zzadyVar) throws Throwable {
        zzdc.zzb(this.zzg);
        int i = zzeu.zza;
        int iZzg = zzg(zzaddVar);
        if (iZzg == -1 && (this.zzp instanceof zzahj)) {
            if (this.zzp.zza() != zzh(this.zzl)) {
                throw null;
            }
        }
        return iZzg;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ zzadc zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ List zzd() {
        return zzfww.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zze(zzadf zzadfVar) {
        this.zzf = zzadfVar;
        zzaei zzaeiVarZzw = zzadfVar.zzw(0, 1);
        this.zzg = zzaeiVarZzw;
        this.zzh = zzaeiVarZzw;
        this.zzf.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzf(long j, long j2) {
        this.zzi = 0;
        this.zzk = -9223372036854775807L;
        this.zzl = 0L;
        this.zzo = 0;
        zzahn zzahnVar = this.zzp;
        if (zzahnVar instanceof zzahj) {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final boolean zzi(zzadd zzaddVar) throws IOException {
        return zzm(zzaddVar, true);
    }
}
