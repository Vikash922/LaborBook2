package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaep implements zzadc {
    private static final int[] zza = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] zzb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final byte[] zzc;
    private static final byte[] zzd;
    private final byte[] zze;
    private final zzaei zzf;
    private boolean zzg;
    private long zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private zzadf zzn;
    private zzaei zzo;
    private zzaei zzp;
    private zzaeb zzq;
    private long zzr;
    private boolean zzs;

    static {
        int i = zzeu.zza;
        zzc = "#!AMR\n".getBytes(StandardCharsets.UTF_8);
        zzd = "#!AMR-WB\n".getBytes(StandardCharsets.UTF_8);
    }

    public zzaep() {
        throw null;
    }

    public zzaep(int i) {
        this.zze = new byte[1];
        this.zzk = -1;
        zzacx zzacxVar = new zzacx();
        this.zzf = zzacxVar;
        this.zzp = zzacxVar;
    }

    private static boolean zzg(zzadd zzaddVar, byte[] bArr) throws IOException {
        zzaddVar.zzj();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        zzaddVar.zzh(bArr2, 0, length);
        return Arrays.equals(bArr2, bArr);
    }

    private final boolean zzh(zzadd zzaddVar) throws IOException {
        byte[] bArr = zzc;
        if (zzg(zzaddVar, bArr)) {
            this.zzg = false;
            zzaddVar.zzk(bArr.length);
            return true;
        }
        byte[] bArr2 = zzd;
        if (!zzg(zzaddVar, bArr2)) {
            return false;
        }
        this.zzg = true;
        zzaddVar.zzk(bArr2.length);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final int zzb(zzadd zzaddVar, zzady zzadyVar) throws IOException {
        zzdc.zzb(this.zzo);
        int i = zzeu.zza;
        if (zzaddVar.zzf() == 0 && !zzh(zzaddVar)) {
            throw zzaz.zza("Could not find AMR header.", null);
        }
        if (!this.zzs) {
            this.zzs = true;
            boolean z = this.zzg;
            String str = true != z ? "audio/amr" : "audio/amr-wb";
            String str2 = true != z ? "audio/3gpp" : "audio/amr-wb";
            int i2 = true != z ? 8000 : 16000;
            int i3 = z ? zzb[8] : zza[7];
            zzaei zzaeiVar = this.zzo;
            zzx zzxVar = new zzx();
            zzxVar.zzE(str);
            zzxVar.zzad(str2);
            zzxVar.zzT(i3);
            zzxVar.zzB(1);
            zzxVar.zzae(i2);
            zzaeiVar.zzm(zzxVar.zzaj());
        }
        int iZza = zza(zzaddVar);
        if (this.zzq == null) {
            zzaea zzaeaVar = new zzaea(-9223372036854775807L, 0L);
            this.zzq = zzaeaVar;
            this.zzn.zzP(zzaeaVar);
        }
        return iZza == -1 ? -1 : 0;
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
        this.zzn = zzadfVar;
        zzaei zzaeiVarZzw = zzadfVar.zzw(0, 1);
        this.zzo = zzaeiVarZzw;
        this.zzp = zzaeiVarZzw;
        zzadfVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzf(long j, long j2) {
        this.zzh = 0L;
        this.zzi = 0;
        this.zzj = 0;
        this.zzr = j2;
        this.zzm = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final boolean zzi(zzadd zzaddVar) throws IOException {
        return zzh(zzaddVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0039 A[Catch: EOFException -> 0x00ab, TryCatch #0 {EOFException -> 0x00ab, blocks: (B:5:0x000c, B:7:0x001b, B:21:0x0039, B:23:0x0042, B:22:0x003e, B:40:0x0081, B:41:0x0099, B:42:0x009a, B:43:0x00aa), top: B:45:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e A[Catch: EOFException -> 0x00ab, TryCatch #0 {EOFException -> 0x00ab, blocks: (B:5:0x000c, B:7:0x001b, B:21:0x0039, B:23:0x0042, B:22:0x003e, B:40:0x0081, B:41:0x0099, B:42:0x009a, B:43:0x00aa), top: B:45:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(com.google.android.gms.internal.ads.zzadd r12) throws java.io.IOException {
        /*
            r11 = this;
            java.lang.String r0 = "Illegal AMR "
            java.lang.String r1 = "Invalid padding bits for frame header "
            int r2 = r11.zzj
            r3 = 0
            r4 = -1
            r5 = 1
            if (r2 == 0) goto Lc
            goto L55
        Lc:
            r12.zzj()     // Catch: java.io.EOFException -> Lab
            byte[] r2 = r11.zze     // Catch: java.io.EOFException -> Lab
            r12.zzh(r2, r3, r5)     // Catch: java.io.EOFException -> Lab
            r2 = r2[r3]     // Catch: java.io.EOFException -> Lab
            r6 = r2 & 131(0x83, float:1.84E-43)
            r7 = 0
            if (r6 > 0) goto L9a
            int r1 = r2 >> 3
            boolean r2 = r11.zzg     // Catch: java.io.EOFException -> Lab
            r1 = r1 & 15
            if (r2 == 0) goto L2c
            r6 = 10
            if (r1 < r6) goto L37
            r6 = 13
            if (r1 <= r6) goto L2c
            goto L37
        L2c:
            if (r2 != 0) goto L7a
            r6 = 12
            if (r1 < r6) goto L37
            r6 = 14
            if (r1 > r6) goto L37
            goto L7a
        L37:
            if (r2 == 0) goto L3e
            int[] r0 = com.google.android.gms.internal.ads.zzaep.zzb     // Catch: java.io.EOFException -> Lab
            r0 = r0[r1]     // Catch: java.io.EOFException -> Lab
            goto L42
        L3e:
            int[] r0 = com.google.android.gms.internal.ads.zzaep.zza     // Catch: java.io.EOFException -> Lab
            r0 = r0[r1]     // Catch: java.io.EOFException -> Lab
        L42:
            r2 = r0
            r11.zzi = r2     // Catch: java.io.EOFException -> Lab
            r11.zzj = r2
            int r0 = r11.zzk
            if (r0 != r4) goto L4e
            r11.zzk = r2
            r0 = r2
        L4e:
            if (r0 != r2) goto L55
            int r0 = r11.zzl
            int r0 = r0 + r5
            r11.zzl = r0
        L55:
            com.google.android.gms.internal.ads.zzaei r0 = r11.zzp
            int r12 = r0.zzf(r12, r2, r5)
            if (r12 != r4) goto L5e
            return r4
        L5e:
            int r0 = r11.zzj
            int r0 = r0 - r12
            r11.zzj = r0
            if (r0 <= 0) goto L66
            return r3
        L66:
            com.google.android.gms.internal.ads.zzaei r4 = r11.zzp
            long r5 = r11.zzh
            int r8 = r11.zzi
            r9 = 0
            r10 = 0
            r7 = 1
            r4.zzt(r5, r7, r8, r9, r10)
            long r0 = r11.zzh
            r4 = 20000(0x4e20, double:9.8813E-320)
            long r0 = r0 + r4
            r11.zzh = r0
            return r3
        L7a:
            java.lang.String r12 = "WB"
            java.lang.String r3 = "NB"
            if (r5 == r2) goto L81
            r12 = r3
        L81:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> Lab
            r2.<init>(r0)     // Catch: java.io.EOFException -> Lab
            r2.append(r12)     // Catch: java.io.EOFException -> Lab
            java.lang.String r12 = " frame type "
            r2.append(r12)     // Catch: java.io.EOFException -> Lab
            r2.append(r1)     // Catch: java.io.EOFException -> Lab
            java.lang.String r12 = r2.toString()     // Catch: java.io.EOFException -> Lab
            com.google.android.gms.internal.ads.zzaz r12 = com.google.android.gms.internal.ads.zzaz.zza(r12, r7)     // Catch: java.io.EOFException -> Lab
            throw r12     // Catch: java.io.EOFException -> Lab
        L9a:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> Lab
            r12.<init>(r1)     // Catch: java.io.EOFException -> Lab
            r12.append(r2)     // Catch: java.io.EOFException -> Lab
            java.lang.String r12 = r12.toString()     // Catch: java.io.EOFException -> Lab
            com.google.android.gms.internal.ads.zzaz r12 = com.google.android.gms.internal.ads.zzaz.zza(r12, r7)     // Catch: java.io.EOFException -> Lab
            throw r12     // Catch: java.io.EOFException -> Lab
        Lab:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaep.zza(com.google.android.gms.internal.ads.zzadd):int");
    }
}
