package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccy extends zzccs implements zzhe {
    private static final AtomicInteger zzd = new AtomicInteger(0);
    private String zze;
    private final zzcbf zzf;
    private boolean zzg;
    private final zzccx zzh;
    private final zzccc zzi;
    private ByteBuffer zzj;
    private boolean zzk;
    private final Object zzl;
    private final String zzm;
    private final int zzn;
    private boolean zzo;

    public zzccy(zzcbg zzcbgVar, zzcbf zzcbfVar) {
        super(zzcbgVar);
        this.zzf = zzcbfVar;
        this.zzh = new zzccx();
        this.zzi = new zzccc();
        this.zzl = new Object();
        this.zzm = (String) zzftu.zzd(zzcbgVar != null ? zzcbgVar.zzr() : null).zzb("");
        this.zzn = zzcbgVar != null ? zzcbgVar.zzf() : 0;
        zzd.incrementAndGet();
    }

    public static int zzi() {
        return zzd.get();
    }

    protected static final String zzv(String str) {
        return "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzg(str)));
    }

    private final void zzx() {
        int iZza = (int) this.zzh.zza();
        int iZza2 = (int) this.zzi.zza(this.zzj);
        int iPosition = this.zzj.position();
        int iRound = Math.round(iZza2 * (iPosition / iZza));
        int iZzs = zzcax.zzs();
        int iZzu = zzcax.zzu();
        String str = this.zze;
        zzn(str, zzv(str), iPosition, iZza, iRound, iZza2, iRound > 0, iZzs, iZzu);
    }

    @Override // com.google.android.gms.internal.ads.zzccs, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzd.decrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zza(zzge zzgeVar, zzgj zzgjVar, boolean z, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzb(zzge zzgeVar, zzgj zzgjVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzc(zzge zzgeVar, zzgj zzgjVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzd(zzge zzgeVar, zzgj zzgjVar, boolean z) {
        if (zzgeVar instanceof zzgr) {
            this.zzh.zzb((zzgr) zzgeVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzf() {
        this.zzg = true;
    }

    public final String zzk() {
        return this.zze;
    }

    public final ByteBuffer zzl() {
        synchronized (this.zzl) {
            ByteBuffer byteBuffer = this.zzj;
            if (byteBuffer != null && !this.zzk) {
                byteBuffer.flip();
                this.zzk = true;
            }
            this.zzg = true;
        }
        return this.zzj;
    }

    public final boolean zzm() {
        return this.zzo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a8, code lost:
    
        r21.zzo = true;
        zzj(r22, r4, (int) r21.zzi.zza(r21.zzj));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:? -> B:45:0x0143). Please report as a decompilation issue!!! */
    @Override // com.google.android.gms.internal.ads.zzccs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzt(java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzccy.zzt(java.lang.String):boolean");
    }
}
