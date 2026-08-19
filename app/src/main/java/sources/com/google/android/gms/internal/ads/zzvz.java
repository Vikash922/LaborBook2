package com.google.android.gms.internal.ads;

import android.net.Uri;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzvz implements zzzn, zzun {
    final /* synthetic */ zzwe zza;
    private final Uri zzc;
    private final zzhd zzd;
    private final zzvt zze;
    private final zzadf zzf;
    private final zzdj zzg;
    private volatile boolean zzi;
    private long zzk;
    private zzaei zzm;
    private boolean zzn;
    private final zzady zzh = new zzady();
    private boolean zzj = true;
    private final long zzb = zzup.zza();
    private zzgj zzl = zzi(0);

    public zzvz(zzwe zzweVar, Uri uri, zzge zzgeVar, zzvt zzvtVar, zzadf zzadfVar, zzdj zzdjVar) {
        this.zza = zzweVar;
        this.zzc = uri;
        this.zzd = new zzhd(zzgeVar);
        this.zze = zzvtVar;
        this.zzf = zzadfVar;
        this.zzg = zzdjVar;
    }

    static /* bridge */ /* synthetic */ void zzf(zzvz zzvzVar, long j, long j2) {
        zzvzVar.zzh.zza = j;
        zzvzVar.zzk = j2;
        zzvzVar.zzj = true;
        zzvzVar.zzn = false;
    }

    private final zzgj zzi(long j) {
        zzgh zzghVar = new zzgh();
        zzghVar.zzd(this.zzc);
        zzghVar.zzc(j);
        zzghVar.zza(6);
        zzghVar.zzb(zzwe.zzb);
        return zzghVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzzn
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x019a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0212 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:? A[LOOP:0: B:3:0x0004->B:138:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01d1 A[EDGE_INSN: B:139:0x01d1->B:92:0x01d1 BREAK  A[LOOP:1: B:80:0x0198->B:142:0x0198], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009c A[Catch: all -> 0x01f2, TryCatch #2 {all -> 0x01f2, blocks: (B:6:0x000b, B:16:0x003c, B:17:0x0041, B:20:0x0055, B:21:0x005b, B:30:0x0091, B:32:0x009c, B:34:0x00a8, B:36:0x00b2, B:38:0x00be, B:40:0x00c8, B:42:0x00d4, B:44:0x00de, B:46:0x00f0, B:48:0x00fa, B:49:0x0100, B:58:0x0130, B:59:0x0137, B:61:0x0144, B:63:0x014c, B:65:0x0167, B:52:0x010a, B:55:0x011e, B:25:0x0067, B:28:0x007d), top: B:121:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2 A[Catch: all -> 0x01f2, TryCatch #2 {all -> 0x01f2, blocks: (B:6:0x000b, B:16:0x003c, B:17:0x0041, B:20:0x0055, B:21:0x005b, B:30:0x0091, B:32:0x009c, B:34:0x00a8, B:36:0x00b2, B:38:0x00be, B:40:0x00c8, B:42:0x00d4, B:44:0x00de, B:46:0x00f0, B:48:0x00fa, B:49:0x0100, B:58:0x0130, B:59:0x0137, B:61:0x0144, B:63:0x014c, B:65:0x0167, B:52:0x010a, B:55:0x011e, B:25:0x0067, B:28:0x007d), top: B:121:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c8 A[Catch: all -> 0x01f2, TryCatch #2 {all -> 0x01f2, blocks: (B:6:0x000b, B:16:0x003c, B:17:0x0041, B:20:0x0055, B:21:0x005b, B:30:0x0091, B:32:0x009c, B:34:0x00a8, B:36:0x00b2, B:38:0x00be, B:40:0x00c8, B:42:0x00d4, B:44:0x00de, B:46:0x00f0, B:48:0x00fa, B:49:0x0100, B:58:0x0130, B:59:0x0137, B:61:0x0144, B:63:0x014c, B:65:0x0167, B:52:0x010a, B:55:0x011e, B:25:0x0067, B:28:0x007d), top: B:121:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00de A[Catch: all -> 0x01f2, TryCatch #2 {all -> 0x01f2, blocks: (B:6:0x000b, B:16:0x003c, B:17:0x0041, B:20:0x0055, B:21:0x005b, B:30:0x0091, B:32:0x009c, B:34:0x00a8, B:36:0x00b2, B:38:0x00be, B:40:0x00c8, B:42:0x00d4, B:44:0x00de, B:46:0x00f0, B:48:0x00fa, B:49:0x0100, B:58:0x0130, B:59:0x0137, B:61:0x0144, B:63:0x014c, B:65:0x0167, B:52:0x010a, B:55:0x011e, B:25:0x0067, B:28:0x007d), top: B:121:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa A[Catch: all -> 0x01f2, TRY_LEAVE, TryCatch #2 {all -> 0x01f2, blocks: (B:6:0x000b, B:16:0x003c, B:17:0x0041, B:20:0x0055, B:21:0x005b, B:30:0x0091, B:32:0x009c, B:34:0x00a8, B:36:0x00b2, B:38:0x00be, B:40:0x00c8, B:42:0x00d4, B:44:0x00de, B:46:0x00f0, B:48:0x00fa, B:49:0x0100, B:58:0x0130, B:59:0x0137, B:61:0x0144, B:63:0x014c, B:65:0x0167, B:52:0x010a, B:55:0x011e, B:25:0x0067, B:28:0x007d), top: B:121:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0130 A[Catch: all -> 0x01f2, TryCatch #2 {all -> 0x01f2, blocks: (B:6:0x000b, B:16:0x003c, B:17:0x0041, B:20:0x0055, B:21:0x005b, B:30:0x0091, B:32:0x009c, B:34:0x00a8, B:36:0x00b2, B:38:0x00be, B:40:0x00c8, B:42:0x00d4, B:44:0x00de, B:46:0x00f0, B:48:0x00fa, B:49:0x0100, B:58:0x0130, B:59:0x0137, B:61:0x0144, B:63:0x014c, B:65:0x0167, B:52:0x010a, B:55:0x011e, B:25:0x0067, B:28:0x007d), top: B:121:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0144 A[Catch: all -> 0x01f2, TryCatch #2 {all -> 0x01f2, blocks: (B:6:0x000b, B:16:0x003c, B:17:0x0041, B:20:0x0055, B:21:0x005b, B:30:0x0091, B:32:0x009c, B:34:0x00a8, B:36:0x00b2, B:38:0x00be, B:40:0x00c8, B:42:0x00d4, B:44:0x00de, B:46:0x00f0, B:48:0x00fa, B:49:0x0100, B:58:0x0130, B:59:0x0137, B:61:0x0144, B:63:0x014c, B:65:0x0167, B:52:0x010a, B:55:0x011e, B:25:0x0067, B:28:0x007d), top: B:121:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0182 A[Catch: all -> 0x01ef, TryCatch #7 {all -> 0x01ef, blocks: (B:67:0x0179, B:69:0x0182, B:70:0x0185, B:72:0x0189), top: B:131:0x0179 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0189 A[Catch: all -> 0x01ef, TRY_LEAVE, TryCatch #7 {all -> 0x01ef, blocks: (B:67:0x0179, B:69:0x0182, B:70:0x0185, B:72:0x0189), top: B:131:0x0179 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01d6  */
    @Override // com.google.android.gms.internal.ads.zzzn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvz.zzh():void");
    }

    @Override // com.google.android.gms.internal.ads.zzun
    public final void zza(zzek zzekVar) {
        long jMax = !this.zzn ? this.zzk : Math.max(zzwe.zzr(this.zza, true), this.zzk);
        int iZza = zzekVar.zza();
        zzaei zzaeiVar = this.zzm;
        zzaeiVar.getClass();
        zzaeiVar.zzr(zzekVar, iZza);
        zzaeiVar.zzt(jMax, 1, iZza, 0, null);
        this.zzn = true;
    }
}
