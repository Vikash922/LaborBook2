package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzqj {
    private long zzA;
    private boolean zzB;
    private long zzC;
    private long zzD;
    private boolean zzE;
    private long zzF;
    private zzdg zzG;
    private final zzqi zza;
    private final long[] zzb;
    private AudioTrack zzc;
    private int zzd;
    private zzqh zze;
    private int zzf;
    private long zzg;
    private float zzh;
    private boolean zzi;
    private long zzj;
    private long zzk;
    private Method zzl;
    private long zzm;
    private boolean zzn;
    private boolean zzo;
    private long zzp;
    private long zzq;
    private long zzr;
    private long zzs;
    private int zzt;
    private int zzu;
    private long zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzqj(zzqi zzqiVar) {
        this.zza = zzqiVar;
        try {
            this.zzl = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzb = new long[10];
        this.zzG = zzdg.zza;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzl() {
        /*
            r10 = this;
            long r0 = r10.zzv
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto L16
            long r0 = r10.zzn()
            long r2 = r10.zzy
            long r0 = java.lang.Math.min(r2, r0)
            return r0
        L16:
            com.google.android.gms.internal.ads.zzdg r0 = r10.zzG
            long r0 = r0.zzb()
            long r4 = r10.zzq
            long r4 = r0 - r4
            r6 = 5
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 < 0) goto L73
            android.media.AudioTrack r4 = r10.zzc
            r4.getClass()
            r5 = r4
            android.media.AudioTrack r5 = (android.media.AudioTrack) r5
            int r5 = r4.getPlayState()
            r6 = 1
            if (r5 != r6) goto L36
            goto L71
        L36:
            int r4 = r4.getPlaybackHeadPosition()
            long r6 = (long) r4
            int r4 = com.google.android.gms.internal.ads.zzeu.zza
            r8 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r6 = r6 & r8
            r8 = 29
            if (r4 > r8) goto L62
            r8 = 0
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 != 0) goto L60
            long r6 = r10.zzr
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 <= 0) goto L5f
            r4 = 3
            if (r5 != r4) goto L5f
            long r4 = r10.zzw
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 != 0) goto L71
            r10.zzw = r0
            goto L71
        L5f:
            r6 = r8
        L60:
            r10.zzw = r2
        L62:
            long r2 = r10.zzr
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 <= 0) goto L6f
            long r2 = r10.zzs
            r4 = 1
            long r2 = r2 + r4
            r10.zzs = r2
        L6f:
            r10.zzr = r6
        L71:
            r10.zzq = r0
        L73:
            long r0 = r10.zzr
            long r2 = r10.zzF
            long r0 = r0 + r2
            long r2 = r10.zzs
            r4 = 32
            long r2 = r2 << r4
            long r0 = r0 + r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqj.zzl():long");
    }

    private final long zzm() {
        return zzeu.zzt(zzl(), this.zzf);
    }

    private final long zzn() {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.zzx;
        }
        return this.zzx + zzeu.zzp(zzeu.zzq(zzeu.zzs(this.zzG.zzb()) - this.zzv, this.zzh), this.zzf);
    }

    private final void zzo() {
        this.zzj = 0L;
        this.zzu = 0;
        this.zzt = 0;
        this.zzk = 0L;
        this.zzA = 0L;
        this.zzD = 0L;
        this.zzi = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d0 A[Catch: Exception -> 0x00fb, TryCatch #0 {Exception -> 0x00fb, blocks: (B:33:0x00cc, B:35:0x00d0, B:37:0x00f2, B:38:0x00fa), top: B:69:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fa A[Catch: Exception -> 0x00fb, TRY_LEAVE, TryCatch #0 {Exception -> 0x00fb, blocks: (B:33:0x00cc, B:35:0x00d0, B:37:0x00f2, B:38:0x00fa), top: B:69:0x00cc }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza() {
        /*
            Method dump skipped, instruction units count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqj.zza():long");
    }

    public final void zzb(long j) {
        this.zzx = zzl();
        this.zzv = zzeu.zzs(this.zzG.zzb());
        this.zzy = j;
    }

    public final void zzc() {
        zzo();
        this.zzc = null;
        this.zze = null;
    }

    public final void zzd(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.zzc = audioTrack;
        this.zzd = i3;
        this.zze = new zzqh(audioTrack);
        this.zzf = audioTrack.getSampleRate();
        if (z) {
            int i4 = zzeu.zza;
        }
        boolean zZzK = zzeu.zzK(i);
        this.zzo = zZzK;
        this.zzg = zZzK ? zzeu.zzt(i3 / i2, this.zzf) : -9223372036854775807L;
        this.zzr = 0L;
        this.zzs = 0L;
        this.zzE = false;
        this.zzF = 0L;
        this.zzn = false;
        this.zzv = -9223372036854775807L;
        this.zzw = -9223372036854775807L;
        this.zzp = 0L;
        this.zzm = 0L;
        this.zzh = 1.0f;
    }

    public final void zze(zzdg zzdgVar) {
        this.zzG = zzdgVar;
    }

    public final void zzf() {
        if (this.zzv != -9223372036854775807L) {
            this.zzv = zzeu.zzs(this.zzG.zzb());
        }
        zzqh zzqhVar = this.zze;
        zzqhVar.getClass();
        zzqhVar.zze();
    }

    public final boolean zzg(long j) {
        return j > zzeu.zzp(zza(), this.zzf);
    }

    public final boolean zzh() {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        return audioTrack.getPlayState() == 3;
    }

    public final boolean zzi(long j) {
        return this.zzw != -9223372036854775807L && j > 0 && this.zzG.zzb() - this.zzw >= 200;
    }

    public final boolean zzj(long j) {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        boolean z = this.zzn;
        boolean zZzg = zzg(j);
        this.zzn = zZzg;
        if (z && !zZzg && playState != 1) {
            this.zza.zze(this.zzd, zzeu.zzv(this.zzg));
        }
        return true;
    }

    public final boolean zzk() {
        zzo();
        if (this.zzv != -9223372036854775807L) {
            this.zzx = zzl();
            return false;
        }
        zzqh zzqhVar = this.zze;
        zzqhVar.getClass();
        zzqhVar.zze();
        return true;
    }
}
