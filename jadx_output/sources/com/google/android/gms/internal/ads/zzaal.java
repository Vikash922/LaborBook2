package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Surface;
import androidx.core.app.NotificationManagerCompat;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.PriorityQueue;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaal extends zztg implements zzaba {
    private static final int[] zzb = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private int zzA;
    private int zzB;
    private long zzC;
    private int zzD;
    private long zzE;
    private zzcd zzF;
    private zzcd zzG;
    private int zzH;
    private int zzI;
    private zzaay zzJ;
    private long zzK;
    private long zzL;
    private boolean zzM;
    private boolean zzN;
    private int zzO;
    private final Context zze;
    private final boolean zzf;
    private final zzabr zzg;
    private final boolean zzh;
    private final zzabb zzi;
    private final zzaaz zzj;
    private final long zzk;
    private final PriorityQueue zzl;
    private zzaak zzm;
    private boolean zzn;
    private boolean zzo;
    private zzabv zzp;
    private boolean zzq;
    private List zzr;
    private Surface zzs;
    private zzaao zzt;
    private zzel zzu;
    private boolean zzv;
    private int zzw;
    private int zzx;
    private long zzy;
    private int zzz;

    protected zzaal(zzaaj zzaajVar) {
        super(2, zzaajVar.zzd, zzaajVar.zzc, false, 30.0f);
        Context applicationContext = zzaajVar.zza.getApplicationContext();
        this.zze = applicationContext;
        this.zzp = null;
        this.zzg = new zzabr(zzaajVar.zze, zzaajVar.zzf);
        this.zzf = this.zzp == null;
        this.zzi = new zzabb(applicationContext, this, 0L);
        this.zzj = new zzaaz();
        this.zzh = "NVIDIA".equals(Build.MANUFACTURER);
        this.zzu = zzel.zza;
        this.zzw = 1;
        this.zzx = 0;
        this.zzF = zzcd.zza;
        this.zzI = 0;
        this.zzG = null;
        this.zzH = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        this.zzK = -9223372036854775807L;
        this.zzL = -9223372036854775807L;
        this.zzl = new PriorityQueue();
        this.zzk = -9223372036854775807L;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007e A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0081 A[Catch: all -> 0x07a8, TRY_ENTER, TryCatch #0 {, blocks: (B:7:0x000d, B:9:0x0011, B:11:0x001f, B:514:0x07a0, B:42:0x0081, B:44:0x0087, B:47:0x0092, B:82:0x0101, B:507:0x078a, B:515:0x07a4), top: B:521:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static final boolean zzaU(java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 2924
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaal.zzaU(java.lang.String):boolean");
    }

    protected static final boolean zzaV(zzsz zzszVar) {
        return zzeu.zza >= 35 && zzszVar.zzh;
    }

    private final Surface zzaW(zzsz zzszVar) {
        if (this.zzp != null) {
            zzdc.zzf(false);
            throw null;
        }
        Surface surface = this.zzs;
        if (surface != null) {
            return surface;
        }
        if (zzaV(zzszVar)) {
            return null;
        }
        zzdc.zzf(zzaT(zzszVar));
        zzaao zzaaoVar = this.zzt;
        if (zzaaoVar != null) {
            if (zzaaoVar.zza != zzszVar.zzf) {
                zzaZ();
            }
        }
        if (this.zzt == null) {
            this.zzt = zzaao.zza(this.zze, zzszVar.zzf);
        }
        return this.zzt;
    }

    private static List zzaX(Context context, zzti zztiVar, zzz zzzVar, boolean z, boolean z2) throws zztn {
        String str = zzzVar.zzo;
        if (str == null) {
            return zzfww.zzn();
        }
        if (zzeu.zza >= 26 && "video/dolby-vision".equals(str) && !zzaai.zza(context)) {
            List listZzc = zztt.zzc(zztiVar, zzzVar, z, z2);
            if (!listZzc.isEmpty()) {
                return listZzc;
            }
        }
        return zztt.zze(zztiVar, zzzVar, z, z2);
    }

    private final void zzaY() {
        zzcd zzcdVar = this.zzG;
        if (zzcdVar != null) {
            this.zzg.zzt(zzcdVar);
        }
    }

    private final void zzaZ() {
        zzaao zzaaoVar = this.zzt;
        if (zzaaoVar != null) {
            zzaaoVar.release();
            this.zzt = null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zzad(com.google.android.gms.internal.ads.zzsz r11, com.google.android.gms.internal.ads.zzz r12) {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaal.zzad(com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zzz):int");
    }

    protected static int zzae(zzsz zzszVar, zzz zzzVar) {
        int i = zzzVar.zzp;
        if (i == -1) {
            return zzad(zzszVar, zzzVar);
        }
        List list = zzzVar.zzr;
        int size = list.size();
        int length = 0;
        for (int i2 = 0; i2 < size; i2++) {
            length += ((byte[]) list.get(i2)).length;
        }
        return i + length;
    }

    private final void zzba(Object obj) throws zzii {
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        if (this.zzs == surface) {
            if (surface != null) {
                zzaY();
                Surface surface2 = this.zzs;
                if (surface2 == null || !this.zzv) {
                    return;
                }
                this.zzg.zzq(surface2);
                return;
            }
            return;
        }
        this.zzs = surface;
        if (this.zzp == null) {
            this.zzi.zzk(surface);
        }
        this.zzv = false;
        int iZzcT = zzcT();
        zzsw zzswVarZzaz = zzaz();
        if (zzswVarZzaz != null && this.zzp == null) {
            zzsz zzszVarZzaB = zzaB();
            zzszVarZzaB.getClass();
            boolean zZzbb = zzbb(zzszVarZzaB);
            int i = zzeu.zza;
            if (!zZzbb || this.zzn) {
                zzaG();
                zzaD();
            } else {
                Surface surfaceZzaW = zzaW(zzszVarZzaB);
                if (surfaceZzaW != null) {
                    zzswVarZzaz.zzp(surfaceZzaW);
                } else {
                    if (zzeu.zza < 35) {
                        throw new IllegalStateException();
                    }
                    zzswVarZzaz.zzi();
                }
            }
        }
        if (surface != null) {
            zzaY();
        } else {
            this.zzG = null;
            zzabv zzabvVar = this.zzp;
            if (zzabvVar != null) {
                ((zzaas) zzabvVar).zza.zzn();
            }
        }
        if (iZzcT == 2) {
            zzabv zzabvVar2 = this.zzp;
            if (zzabvVar2 != null) {
                zzabvVar2.zzd(true);
            } else {
                this.zzi.zzc(true);
            }
        }
    }

    private final boolean zzbb(zzsz zzszVar) {
        if (this.zzp != null) {
            return true;
        }
        Surface surface = this.zzs;
        return (surface != null && surface.isValid()) || zzaV(zzszVar) || zzaT(zzszVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    protected final void zzA() {
        zzabv zzabvVar = this.zzp;
        if (zzabvVar == null || !this.zzf) {
            return;
        }
        ((zzaas) zzabvVar).zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzhx
    protected final void zzC() {
        try {
            super.zzC();
        } finally {
            this.zzq = false;
            this.zzK = -9223372036854775807L;
            zzaZ();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    protected final void zzD() {
        this.zzz = 0;
        this.zzy = zzi().zzb();
        this.zzC = 0L;
        this.zzD = 0;
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            ((zzaas) zzabvVar).zza.zzg.zzf();
        } else {
            this.zzi.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    protected final void zzE() {
        if (this.zzz > 0) {
            long jZzb = zzi().zzb();
            this.zzg.zzn(this.zzz, jZzb - this.zzy);
            this.zzz = 0;
            this.zzy = jZzb;
        }
        int i = this.zzD;
        if (i != 0) {
            this.zzg.zzr(this.zzC, i);
            this.zzC = 0L;
            this.zzD = 0;
        }
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            ((zzaas) zzabvVar).zza.zzg.zzg();
        } else {
            this.zzi.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzhx
    protected final void zzF(zzz[] zzzVarArr, long j, long j2, zzuy zzuyVar) throws zzii {
        super.zzF(zzzVarArr, j, j2, zzuyVar);
        zzbl zzblVarZzh = zzh();
        if (zzblVarZzh.zzo()) {
            this.zzL = -9223372036854775807L;
        } else {
            this.zzL = zzblVarZzh.zzn(zzuyVar.zza, new zzbj()).zzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzhx, com.google.android.gms.internal.ads.zzlu
    public final void zzM(float f, float f2) throws zzii {
        super.zzM(f, f2);
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            ((zzaas) zzabvVar).zza.zzg.zzj(f);
        } else {
            this.zzi.zzl(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlu, com.google.android.gms.internal.ads.zzlx
    public final String zzU() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzlu
    public final void zzV(long j, long j2) throws Throwable {
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            try {
                ((zzaas) zzabvVar).zza.zzg.zzh(j, j2);
            } catch (zzabu e) {
                throw zzcW(e, e.zza, false, 7001);
            }
        }
        super.zzV(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzlu
    public final boolean zzW() {
        return super.zzW() && this.zzp == null;
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzlu
    public final boolean zzX() {
        boolean zZzX = super.zzX();
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            return ((zzaas) zzabvVar).zza.zzg.zzn(false);
        }
        if (zZzX && zzaz() == null) {
            return true;
        }
        return this.zzi.zzm(zZzX);
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final float zzZ(float f, zzz zzzVar, zzz[] zzzVarArr) {
        float fMax = -1.0f;
        for (zzz zzzVar2 : zzzVarArr) {
            float f2 = zzzVar2.zzx;
            if (f2 != -1.0f) {
                fMax = Math.max(fMax, f2);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final zzsy zzaA(Throwable th, zzsz zzszVar) {
        return new zzaah(th, zzszVar, this.zzs);
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzaE(long j) {
        super.zzaE(j);
        this.zzB--;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzaF(zzhn zzhnVar) throws zzii {
        this.zzO = 0;
        this.zzB++;
        int i = zzeu.zza;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzaH() {
        super.zzaH();
        this.zzl.clear();
        this.zzN = false;
        this.zzB = 0;
        this.zzO = 0;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final boolean zzaN(zzz zzzVar) throws zzii {
        zzabv zzabvVar = this.zzp;
        if (zzabvVar == null) {
            return true;
        }
        try {
            return zzaax.zzs(((zzaas) zzabvVar).zza, zzzVar, 0);
        } catch (zzabu e) {
            throw zzcW(e, zzzVar, false, 7000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final boolean zzaO(zzhn zzhnVar) {
        if (!zzQ() && !zzhnVar.zzh() && this.zzL != -9223372036854775807L) {
            if (this.zzL - (zzhnVar.zze - zzav()) > 100000 && !zzhnVar.zzl()) {
                boolean z = zzhnVar.zze < zzf();
                if ((z || this.zzN) && !zzhnVar.zze() && zzhnVar.zzi()) {
                    zzhnVar.zzb();
                    if (z) {
                        this.zza.zzd++;
                    } else if (this.zzN) {
                        this.zzl.add(Long.valueOf(zzhnVar.zze));
                        this.zzO++;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final boolean zzaP(zzsz zzszVar) {
        return zzbb(zzszVar);
    }

    protected final void zzaR(long j) {
        zzhy zzhyVar = this.zza;
        zzhyVar.zzk += j;
        zzhyVar.zzl++;
        this.zzC += j;
        this.zzD++;
    }

    @Override // com.google.android.gms.internal.ads.zzaba
    public final boolean zzaS(long j, long j2, long j3, boolean z, boolean z2) throws zzii {
        int iZzd;
        long j4 = this.zzk;
        if (j4 != -9223372036854775807L) {
            this.zzN = j < j4;
        }
        if (j >= -500000 || z || (iZzd = zzd(j2)) == 0) {
            return false;
        }
        if (z2) {
            zzhy zzhyVar = this.zza;
            int i = zzhyVar.zzd + iZzd;
            zzhyVar.zzd = i;
            zzhyVar.zzf += this.zzB;
            zzhyVar.zzd = i + this.zzl.size();
        } else {
            this.zza.zzj++;
            zzao(iZzd + this.zzl.size(), this.zzB);
        }
        zzaJ();
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            zzabvVar.zzc(false);
        }
        return true;
    }

    protected final boolean zzaT(zzsz zzszVar) {
        int i = zzeu.zza;
        if (zzaU(zzszVar.zza)) {
            return false;
        }
        return !zzszVar.zzf || zzaao.zzb(this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final int zzaa(zzti zztiVar, zzz zzzVar) throws zztn {
        boolean z;
        String str = zzzVar.zzo;
        if (!zzay.zzj(str)) {
            return 128;
        }
        Context context = this.zze;
        int i = 0;
        boolean z2 = zzzVar.zzs != null;
        List listZzaX = zzaX(context, zztiVar, zzzVar, z2, false);
        if (z2 && listZzaX.isEmpty()) {
            listZzaX = zzaX(context, zztiVar, zzzVar, false, false);
        }
        if (listZzaX.isEmpty()) {
            return 129;
        }
        if (!zzaQ(zzzVar)) {
            return 130;
        }
        zzsz zzszVar = (zzsz) listZzaX.get(0);
        boolean zZze = zzszVar.zze(zzzVar);
        if (zZze) {
            z = true;
        } else {
            for (int i2 = 1; i2 < listZzaX.size(); i2++) {
                zzsz zzszVar2 = (zzsz) listZzaX.get(i2);
                if (zzszVar2.zze(zzzVar)) {
                    zZze = true;
                    z = false;
                    zzszVar = zzszVar2;
                    break;
                }
            }
            z = true;
        }
        int i3 = true != zZze ? 3 : 4;
        int i4 = true != zzszVar.zzf(zzzVar) ? 8 : 16;
        int i5 = true != zzszVar.zzg ? 0 : 64;
        int i6 = true != z ? 0 : 128;
        if (zzeu.zza >= 26 && "video/dolby-vision".equals(str) && !zzaai.zza(context)) {
            i6 = 256;
        }
        if (zZze) {
            List listZzaX2 = zzaX(context, zztiVar, zzzVar, z2, true);
            if (!listZzaX2.isEmpty()) {
                zzsz zzszVar3 = (zzsz) zztt.zzf(listZzaX2, zzzVar).get(0);
                if (zzszVar3.zze(zzzVar) && zzszVar3.zzf(zzzVar)) {
                    i = 32;
                }
            }
        }
        return i6 | i3 | i4 | i | i5;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final zzhz zzab(zzsz zzszVar, zzz zzzVar, zzz zzzVar2) {
        int i;
        int i2;
        zzhz zzhzVarZzb = zzszVar.zzb(zzzVar, zzzVar2);
        int i3 = zzhzVarZzb.zze;
        zzaak zzaakVar = this.zzm;
        zzaakVar.getClass();
        if (zzzVar2.zzv > zzaakVar.zza || zzzVar2.zzw > zzaakVar.zzb) {
            i3 |= 256;
        }
        if (zzae(zzszVar, zzzVar2) > zzaakVar.zzc) {
            i3 |= 64;
        }
        String str = zzszVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzhzVarZzb.zzd;
            i2 = 0;
        }
        return new zzhz(str, zzzVar, zzzVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final zzhz zzac(zzkp zzkpVar) throws zzii {
        zzhz zzhzVarZzac = super.zzac(zzkpVar);
        zzz zzzVar = zzkpVar.zza;
        zzzVar.getClass();
        this.zzg.zzp(zzzVar, zzhzVarZzac);
        return zzhzVarZzac;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0100, code lost:
    
        r3 = null;
     */
    @Override // com.google.android.gms.internal.ads.zztg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.zzst zzaf(com.google.android.gms.internal.ads.zzsz r21, com.google.android.gms.internal.ads.zzz r22, android.media.MediaCrypto r23, float r24) {
        /*
            Method dump skipped, instruction units count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaal.zzaf(com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zzz, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzst");
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final List zzag(zzti zztiVar, zzz zzzVar, boolean z) throws zztn {
        return zztt.zzf(zzaX(this.zze, zztiVar, zzzVar, false, false), zzzVar);
    }

    protected final void zzah(zzsw zzswVar, int i, long j, long j2) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        zzswVar.zzn(i, j2);
        Trace.endSection();
        this.zza.zze++;
        this.zzA = 0;
        if (this.zzp == null) {
            zzcd zzcdVar = this.zzF;
            if (!zzcdVar.equals(zzcd.zza) && !zzcdVar.equals(this.zzG)) {
                this.zzG = zzcdVar;
                this.zzg.zzt(zzcdVar);
            }
            if (!this.zzi.zzn() || (surface = this.zzs) == null) {
                return;
            }
            this.zzg.zzq(surface);
            this.zzv = true;
        }
    }

    protected final void zzai(zzsw zzswVar, int i, long j) {
        Trace.beginSection("skipVideoBuffer");
        zzswVar.zzo(i, false);
        Trace.endSection();
        this.zza.zzf++;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzaj(zzhn zzhnVar) throws zzii {
        if (this.zzo) {
            ByteBuffer byteBuffer = zzhnVar.zzf;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzsw zzswVarZzaz = zzaz();
                        zzswVarZzaz.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzswVarZzaz.zzq(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzak(Exception exc) {
        zzdx.zzd("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzal(String str, zzst zzstVar, long j, long j2) {
        this.zzg.zzk(str, j, j2);
        this.zzn = zzaU(str);
        zzsz zzszVarZzaB = zzaB();
        zzszVarZzaB.getClass();
        boolean z = false;
        if (zzeu.zza >= 29 && "video/x-vnd.on2.vp9".equals(zzszVarZzaB.zzb)) {
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrZzh = zzszVarZzaB.zzh();
            int length = codecProfileLevelArrZzh.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (codecProfileLevelArrZzh[i].profile == 16384) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.zzo = z;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzam(String str) {
        this.zzg.zzl(str);
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzan(zzz zzzVar, MediaFormat mediaFormat) {
        zzsw zzswVarZzaz = zzaz();
        if (zzswVarZzaz != null) {
            zzswVarZzaz.zzr(this.zzw);
        }
        mediaFormat.getClass();
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        int integer = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer2 = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        float f = zzzVar.zzz;
        int i = zzzVar.zzy;
        if (i == 90 || i == 270) {
            f = 1.0f / f;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.zzF = new zzcd(integer, integer2, f);
        zzabv zzabvVar = this.zzp;
        if (zzabvVar == null || !this.zzM) {
            this.zzi.zzj(zzzVar.zzx);
        } else {
            zzx zzxVarZzb = zzzVar.zzb();
            zzxVarZzb.zzai(integer);
            zzxVarZzb.zzM(integer2);
            zzxVarZzb.zzZ(f);
            zzz zzzVarZzaj = zzxVarZzb.zzaj();
            List listZzn = this.zzr;
            if (listZzn == null) {
                listZzn = zzfww.zzn();
            }
            zzabvVar.zze(1, zzzVarZzaj, zzaw(), 2, listZzn);
        }
        this.zzM = false;
    }

    protected final void zzao(int i, int i2) {
        zzhy zzhyVar = this.zza;
        zzhyVar.zzh += i;
        int i3 = i + i2;
        zzhyVar.zzg += i3;
        this.zzz += i3;
        int i4 = this.zzA + i3;
        this.zzA = i4;
        zzhyVar.zzi = Math.max(i4, zzhyVar.zzi);
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzap() {
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            zzabvVar.zzm();
            if (this.zzK == -9223372036854775807L) {
                this.zzK = zzaw();
            }
        } else {
            this.zzi.zzf(2);
        }
        this.zzM = true;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final void zzaq() {
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            zzabvVar.zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final int zzau(zzhn zzhnVar) {
        int i = zzeu.zza;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzhx, com.google.android.gms.internal.ads.zzlu
    public final void zzt() {
        zzabv zzabvVar = this.zzp;
        if (zzabvVar == null) {
            this.zzi.zzb();
            return;
        }
        zzaax zzaaxVar = ((zzaas) zzabvVar).zza;
        if (zzaaxVar.zzl == 1) {
            zzaaxVar.zzl = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzhx
    protected final void zzx() {
        this.zzG = null;
        this.zzL = -9223372036854775807L;
        this.zzv = false;
        try {
            super.zzx();
        } finally {
            zzabr zzabrVar = this.zzg;
            zzabrVar.zzm(this.zza);
            zzabrVar.zzt(zzcd.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzhx
    protected final void zzy(boolean z, boolean z2) throws zzii {
        super.zzy(z, z2);
        zzn();
        this.zzg.zzo(this.zza);
        if (!this.zzq) {
            if (this.zzr != null && this.zzp == null) {
                zzaar zzaarVar = new zzaar(this.zze, this.zzi);
                zzaarVar.zze(zzi());
                zzaax zzaaxVarZzf = zzaarVar.zzf();
                zzaaxVarZzf.zzq(1);
                this.zzp = zzaaxVarZzf.zze(0);
            }
            this.zzq = true;
        }
        int i = !z2 ? 1 : 0;
        zzabv zzabvVar = this.zzp;
        if (zzabvVar == null) {
            zzabb zzabbVar = this.zzi;
            zzabbVar.zzi(zzi());
            zzabbVar.zzf(i);
            return;
        }
        zzaay zzaayVar = this.zzJ;
        if (zzaayVar != null) {
            ((zzaas) zzabvVar).zza.zzg.zzl(zzaayVar);
        }
        if (this.zzs != null && !this.zzu.equals(zzel.zza)) {
            zzabv zzabvVar2 = this.zzp;
            ((zzaas) zzabvVar2).zza.zzp(this.zzs, this.zzu);
        }
        this.zzp.zzi(this.zzx);
        ((zzaas) this.zzp).zza.zzg.zzj(zzat());
        List list = this.zzr;
        if (list != null) {
            this.zzp.zzk(list);
        }
        ((zzaas) this.zzp).zza.zzl = i;
        if (zzay() != null) {
            zzaax zzaaxVar = ((zzaas) this.zzp).zza;
        }
        zzaC();
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzhx
    protected final void zzz(long j, boolean z) throws zzii {
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null && !z) {
            zzabvVar.zzc(true);
        }
        super.zzz(j, z);
        if (this.zzp == null) {
            this.zzi.zzg();
        }
        if (z) {
            zzabv zzabvVar2 = this.zzp;
            if (zzabvVar2 != null) {
                zzabvVar2.zzd(false);
            } else {
                this.zzi.zzc(false);
            }
        }
        this.zzA = 0;
    }

    @Override // com.google.android.gms.internal.ads.zztg
    protected final boolean zzar(long j, long j2, zzsw zzswVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzz zzzVar) throws zzii {
        zzswVar.getClass();
        long jZzav = j3 - zzav();
        int i4 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.zzl;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j3) {
                break;
            }
            priorityQueue.poll();
            i4++;
        }
        zzao(i4, 0);
        zzabv zzabvVar = this.zzp;
        if (zzabvVar != null) {
            if (z && !z2) {
                zzai(zzswVar, i, jZzav);
                return true;
            }
            zzdc.zzf(false);
            if (zzaax.zzt(((zzaas) zzabvVar).zza)) {
                throw null;
            }
            return false;
        }
        zzabb zzabbVar = this.zzi;
        long jZzaw = zzaw();
        zzaaz zzaazVar = this.zzj;
        int iZza = zzabbVar.zza(j3, j, j2, jZzaw, z, z2, zzaazVar);
        if (iZza == 0) {
            zzah(zzswVar, i, jZzav, zzi().zzc());
            zzaR(zzaazVar.zzc());
            return true;
        }
        if (iZza == 1) {
            long jZzd = zzaazVar.zzd();
            long jZzc = zzaazVar.zzc();
            if (jZzd == this.zzE) {
                zzai(zzswVar, i, jZzav);
            } else {
                zzah(zzswVar, i, jZzav, jZzd);
            }
            zzaR(jZzc);
            this.zzE = jZzd;
            return true;
        }
        if (iZza != 2) {
            if (iZza != 3) {
                return false;
            }
            zzai(zzswVar, i, jZzav);
            zzaR(zzaazVar.zzc());
            return true;
        }
        Trace.beginSection("dropVideoBuffer");
        zzswVar.zzo(i, false);
        Trace.endSection();
        zzao(0, 1);
        zzaR(zzaazVar.zzc());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zztg, com.google.android.gms.internal.ads.zzhx, com.google.android.gms.internal.ads.zzlp
    public final void zzu(int i, Object obj) throws zzii {
        if (i == 1) {
            zzba(obj);
            return;
        }
        if (i == 7) {
            obj.getClass();
            zzaay zzaayVar = (zzaay) obj;
            this.zzJ = zzaayVar;
            zzabv zzabvVar = this.zzp;
            if (zzabvVar != null) {
                ((zzaas) zzabvVar).zza.zzg.zzl(zzaayVar);
                return;
            }
            return;
        }
        if (i == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (this.zzI != iIntValue) {
                this.zzI = iIntValue;
                return;
            }
            return;
        }
        if (i == 4) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            this.zzw = iIntValue2;
            zzsw zzswVarZzaz = zzaz();
            if (zzswVarZzaz != null) {
                zzswVarZzaz.zzr(iIntValue2);
                return;
            }
            return;
        }
        if (i == 5) {
            obj.getClass();
            int iIntValue3 = ((Integer) obj).intValue();
            this.zzx = iIntValue3;
            zzabv zzabvVar2 = this.zzp;
            if (zzabvVar2 != null) {
                zzabvVar2.zzi(iIntValue3);
                return;
            } else {
                this.zzi.zzh(iIntValue3);
                return;
            }
        }
        if (i == 13) {
            obj.getClass();
            List list = (List) obj;
            if (list.equals(zzbz.zza)) {
                return;
            }
            this.zzr = list;
            zzabv zzabvVar3 = this.zzp;
            if (zzabvVar3 != null) {
                zzabvVar3.zzk(list);
                return;
            }
            return;
        }
        if (i == 14) {
            obj.getClass();
            zzel zzelVar = (zzel) obj;
            if (zzelVar.zzb() == 0 || zzelVar.zza() == 0) {
                return;
            }
            this.zzu = zzelVar;
            zzabv zzabvVar4 = this.zzp;
            if (zzabvVar4 != null) {
                Surface surface = this.zzs;
                zzdc.zzb(surface);
                ((zzaas) zzabvVar4).zza.zzp(surface, zzelVar);
                return;
            }
            return;
        }
        if (i != 16) {
            if (i != 17) {
                super.zzu(i, obj);
                return;
            }
            Surface surface2 = this.zzs;
            zzba(null);
            obj.getClass();
            ((zzaal) obj).zzu(1, surface2);
            return;
        }
        obj.getClass();
        this.zzH = ((Integer) obj).intValue();
        zzsw zzswVarZzaz2 = zzaz();
        if (zzswVarZzaz2 == null || zzeu.zza < 35) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("importance", Math.max(0, -this.zzH));
        zzswVarZzaz2.zzq(bundle);
    }
}
