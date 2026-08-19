package com.google.android.gms.internal.ads;

import androidx.core.view.MotionEventCompat;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzamc implements zzamg {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    private final String zze;
    private final int zzf;
    private final String zzg;
    private String zzh;
    private zzaei zzi;
    private zzaei zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzr;
    private boolean zzs;
    private int zzu;
    private zzaei zzw;
    private long zzx;
    private final zzej zzc = new zzej(new byte[7], 7);
    private final zzek zzd = new zzek(Arrays.copyOf(zza, 10));
    private int zzp = -1;
    private int zzq = -1;
    private long zzt = -9223372036854775807L;
    private long zzv = -9223372036854775807L;

    public zzamc(boolean z, String str, int i, String str2) {
        this.zzb = z;
        this.zze = str;
        this.zzf = i;
        this.zzg = str2;
        zzh();
    }

    public static boolean zzf(int i) {
        return (i & 65526) == 65520;
    }

    private final void zzg() {
        this.zzo = false;
        zzh();
    }

    private final void zzh() {
        this.zzk = 0;
        this.zzl = 0;
        this.zzm = 256;
    }

    private final void zzi() {
        this.zzk = 3;
        this.zzl = 0;
    }

    private final void zzj(zzaei zzaeiVar, long j, int i, int i2) {
        this.zzk = 4;
        this.zzl = i;
        this.zzw = zzaeiVar;
        this.zzx = j;
        this.zzu = i2;
    }

    private final boolean zzk(zzek zzekVar, byte[] bArr, int i) {
        int iMin = Math.min(zzekVar.zza(), i - this.zzl);
        zzekVar.zzH(bArr, this.zzl, iMin);
        int i2 = this.zzl + iMin;
        this.zzl = i2;
        return i2 == i;
    }

    private static final boolean zzl(byte b, byte b2) {
        return zzf((b2 & 255) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzek zzekVar, byte[] bArr, int i) {
        if (zzekVar.zza() < i) {
            return false;
        }
        zzekVar.zzH(bArr, 0, i);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0251, code lost:
    
        if (r17.zzo != false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0253, code lost:
    
        r17.zzk = 1;
        r17.zzl = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0259, code lost:
    
        zzi();
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x025c, code lost:
    
        r18.zzL(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x023f, code lost:
    
        r17.zzr = (r14 & 8) >> 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0248, code lost:
    
        if (1 == ((r14 & 1) ^ 1)) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x024a, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x024c, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x024d, code lost:
    
        r17.zzn = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:144:0x023f A[EDGE_INSN: B:144:0x023f->B:95:0x023f BREAK  A[LOOP:1: B:49:0x019a->B:170:0x019a], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f7  */
    @Override // com.google.android.gms.internal.ads.zzamg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r18) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instruction units count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamc.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzb(zzadf zzadfVar, zzanu zzanuVar) {
        zzanuVar.zzc();
        this.zzh = zzanuVar.zzb();
        zzaei zzaeiVarZzw = zzadfVar.zzw(zzanuVar.zza(), 1);
        this.zzi = zzaeiVarZzw;
        this.zzw = zzaeiVarZzw;
        if (!this.zzb) {
            this.zzj = new zzacx();
            return;
        }
        zzanuVar.zzc();
        zzaei zzaeiVarZzw2 = zzadfVar.zzw(zzanuVar.zza(), 5);
        this.zzj = zzaeiVarZzw2;
        zzx zzxVar = new zzx();
        zzxVar.zzO(zzanuVar.zzb());
        zzxVar.zzE(this.zzg);
        zzxVar.zzad("application/id3");
        zzaeiVarZzw2.zzm(zzxVar.zzaj());
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zzd(long j, int i) {
        this.zzv = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamg
    public final void zze() {
        this.zzv = -9223372036854775807L;
        zzg();
    }
}
