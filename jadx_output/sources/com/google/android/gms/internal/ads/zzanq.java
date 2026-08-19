package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzanq implements zzadc {
    private final int zza;
    private final List zzb;
    private final zzek zzc;
    private final SparseIntArray zzd;
    private final zzant zze;
    private final zzajy zzf;
    private final SparseArray zzg;
    private final SparseBooleanArray zzh;
    private final SparseBooleanArray zzi;
    private final zzann zzj;
    private zzanm zzk;
    private zzadf zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private int zzq;
    private int zzr;

    @Deprecated
    public zzanq() {
        this(1, 1, zzajy.zza, new zzer(0L), new zzamd(0), 112800);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:97:0x019f  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [int] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.util.SparseArray] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.ads.zzana] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.util.SparseBooleanArray] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [com.google.android.gms.internal.ads.zzanv] */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override // com.google.android.gms.internal.ads.zzadc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadd r19, com.google.android.gms.internal.ads.zzady r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanq.zzb(com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzady):int");
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
        if (this.zza == 0) {
            zzadfVar = new zzakb(zzadfVar, this.zzf);
        }
        this.zzl = zzadfVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    @Override // com.google.android.gms.internal.ads.zzadc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(long r10, long r12) {
        /*
            r9 = this;
            java.util.List r10 = r9.zzb
            int r11 = r10.size()
            r0 = 0
            r1 = r0
        L8:
            r2 = 0
            if (r1 >= r11) goto L35
            java.lang.Object r4 = r10.get(r1)
            com.google.android.gms.internal.ads.zzer r4 = (com.google.android.gms.internal.ads.zzer) r4
            long r5 = r4.zzf()
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 == 0) goto L2f
            long r5 = r4.zzd()
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 == 0) goto L32
            int r2 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r2 == 0) goto L32
            int r2 = (r5 > r12 ? 1 : (r5 == r12 ? 0 : -1))
            if (r2 == 0) goto L32
        L2f:
            r4.zzi(r12)
        L32:
            int r1 = r1 + 1
            goto L8
        L35:
            int r10 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r10 == 0) goto L40
            com.google.android.gms.internal.ads.zzanm r10 = r9.zzk
            if (r10 == 0) goto L40
            r10.zzd(r12)
        L40:
            com.google.android.gms.internal.ads.zzek r10 = r9.zzc
            r10.zzI(r0)
            android.util.SparseIntArray r10 = r9.zzd
            r10.clear()
            r10 = r0
        L4b:
            android.util.SparseArray r11 = r9.zzg
            int r12 = r11.size()
            if (r10 >= r12) goto L5f
            java.lang.Object r11 = r11.valueAt(r10)
            com.google.android.gms.internal.ads.zzanv r11 = (com.google.android.gms.internal.ads.zzanv) r11
            r11.zzc()
            int r10 = r10 + 1
            goto L4b
        L5f:
            r9.zzq = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanq.zzf(long, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
    
        r1 = r1 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzadc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzi(com.google.android.gms.internal.ads.zzadd r7) throws java.io.IOException {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzek r0 = r6.zzc
            byte[] r0 = r0.zzN()
            com.google.android.gms.internal.ads.zzacr r7 = (com.google.android.gms.internal.ads.zzacr) r7
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.zzm(r0, r2, r1, r2)
            r1 = r2
        Lf:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L2b
            r3 = r2
        L14:
            r4 = 5
            if (r3 >= r4) goto L26
            int r4 = r3 * 188
            int r4 = r4 + r1
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L23
            int r1 = r1 + 1
            goto Lf
        L23:
            int r3 = r3 + 1
            goto L14
        L26:
            r7.zzo(r1, r2)
            r7 = 1
            return r7
        L2b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanq.zzi(com.google.android.gms.internal.ads.zzadd):boolean");
    }

    public zzanq(int i, int i2, zzajy zzajyVar, zzer zzerVar, zzant zzantVar, int i3) {
        this.zze = zzantVar;
        this.zza = i2;
        this.zzf = zzajyVar;
        this.zzb = Collections.singletonList(zzerVar);
        this.zzc = new zzek(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.zzh = sparseBooleanArray;
        this.zzi = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.zzg = sparseArray;
        this.zzd = new SparseIntArray();
        this.zzj = new zzann(112800);
        this.zzl = zzadf.zza;
        this.zzr = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArrayZza = zzantVar.zza();
        int size = sparseArrayZza.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.zzg.put(sparseArrayZza.keyAt(i4), (zzanv) sparseArrayZza.valueAt(i4));
        }
        this.zzg.put(0, new zzani(new zzano(this)));
    }
}
