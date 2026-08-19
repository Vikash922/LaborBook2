package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzrf implements zzqf {
    private static final Object zza = new Object();
    private static ScheduledExecutorService zzb;
    private static int zzc;
    private boolean zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private int zzF;
    private boolean zzG;
    private boolean zzH;
    private long zzI;
    private float zzJ;
    private ByteBuffer zzK;
    private int zzL;
    private ByteBuffer zzM;
    private boolean zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private int zzR;
    private zzf zzS;
    private zzph zzT;
    private long zzU;
    private boolean zzV;
    private boolean zzW;
    private Looper zzX;
    private long zzY;
    private long zzZ;
    private Handler zzaa;
    private final zzqv zzab;
    private final zzql zzac;
    private final Context zzd;
    private final zzqk zze;
    private final zzrp zzf;
    private final zzfww zzg;
    private final zzfww zzh;
    private final zzqj zzi;
    private final ArrayDeque zzj;
    private zzrd zzk;
    private final zzqz zzl;
    private final zzqz zzm;
    private zzoz zzn;
    private zzqc zzo;
    private zzqu zzp;
    private zzqu zzq;
    private zzck zzr;
    private AudioTrack zzs;
    private zzpb zzt;
    private zzpg zzu;
    private zzqy zzv;
    private zze zzw;
    private zzqw zzx;
    private zzqw zzy;
    private zzbb zzz;

    /* synthetic */ zzrf(zzqt zzqtVar, zzre zzreVar) {
        Context context = zzqtVar.zza;
        this.zzd = context;
        this.zzw = zze.zza;
        zzre zzreVar2 = null;
        this.zzt = context != null ? null : zzqtVar.zzb;
        this.zzab = zzqtVar.zzf;
        int i = zzeu.zza;
        zzql zzqlVar = zzqtVar.zzg;
        zzqlVar.getClass();
        this.zzac = zzqlVar;
        this.zzi = new zzqj(new zzra(this, zzreVar2));
        zzqk zzqkVar = new zzqk();
        this.zze = zzqkVar;
        zzrp zzrpVar = new zzrp();
        this.zzf = zzrpVar;
        this.zzg = zzfww.zzq(new zzcr(), zzqkVar, zzrpVar);
        this.zzh = zzfww.zzq(new zzro(), zzqkVar, zzrpVar);
        this.zzJ = 1.0f;
        this.zzR = 0;
        this.zzS = new zzf(0, 0.0f);
        this.zzy = new zzqw(zzbb.zza, 0L, 0L, null);
        this.zzz = zzbb.zza;
        this.zzA = false;
        this.zzj = new ArrayDeque();
        this.zzl = new zzqz();
        this.zzm = new zzqz();
    }

    public static /* synthetic */ void zzG(zzrf zzrfVar) {
        if (zzrfVar.zzZ >= 300000) {
            ((zzrj) zzrfVar.zzo).zza.zzn = true;
            zzrfVar.zzZ = 0L;
        }
    }

    static /* synthetic */ void zzI(AudioTrack audioTrack, final zzqc zzqcVar, Handler handler, final zzpz zzpzVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (zzqcVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqo
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((zzrj) zzqcVar).zza.zzc.zzp(zzpzVar);
                    }
                });
            }
            synchronized (zza) {
                int i = zzc - 1;
                zzc = i;
                if (i == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
            }
        } catch (Throwable th) {
            if (zzqcVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqo
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((zzrj) zzqcVar).zza.zzc.zzp(zzpzVar);
                    }
                });
            }
            synchronized (zza) {
                int i2 = zzc - 1;
                zzc = i2;
                if (i2 == 0) {
                    zzb.shutdown();
                    zzb = null;
                }
                throw th;
            }
        }
    }

    static /* bridge */ /* synthetic */ boolean zzK() {
        boolean z;
        synchronized (zza) {
            z = zzc > 0;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzL() {
        zzqu zzquVar = this.zzq;
        return zzquVar.zzc == 0 ? this.zzB / ((long) zzquVar.zzb) : this.zzC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzM() {
        zzqu zzquVar = this.zzq;
        if (zzquVar.zzc != 0) {
            return this.zzE;
        }
        long j = this.zzD;
        long j2 = zzquVar.zzd;
        int i = zzeu.zza;
        return ((j + j2) - 1) / j2;
    }

    private final AudioTrack zzN(zzqu zzquVar) throws zzqb {
        try {
            return zzac(zzquVar.zza(), this.zzw, this.zzR, zzquVar.zza);
        } catch (zzqb e) {
            zzqc zzqcVar = this.zzo;
            if (zzqcVar != null) {
                zzqcVar.zza(e);
            }
            throw e;
        }
    }

    private final void zzO(long j) {
        zzbb zzbbVar;
        boolean z;
        if (zzab()) {
            zzqv zzqvVar = this.zzab;
            zzbbVar = this.zzz;
            zzqvVar.zzc(zzbbVar);
        } else {
            zzbbVar = zzbb.zza;
        }
        zzbb zzbbVar2 = zzbbVar;
        this.zzz = zzbbVar2;
        if (zzab()) {
            zzqv zzqvVar2 = this.zzab;
            z = this.zzA;
            zzqvVar2.zzd(z);
        } else {
            z = false;
        }
        this.zzA = z;
        this.zzj.add(new zzqw(zzbbVar2, Math.max(0L, j), zzeu.zzt(zzM(), this.zzq.zze), null));
        zzX();
        zzqc zzqcVar = this.zzo;
        if (zzqcVar != null) {
            ((zzrj) zzqcVar).zza.zzc.zzw(this.zzA);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzP(long r8) throws java.lang.Exception {
        /*
            r7 = this;
            java.nio.ByteBuffer r8 = r7.zzM
            if (r8 != 0) goto L6
            goto Lb6
        L6:
            com.google.android.gms.internal.ads.zzqz r8 = r7.zzm
            boolean r9 = r8.zzc()
            if (r9 != 0) goto Lb6
            java.nio.ByteBuffer r9 = r7.zzM
            int r9 = r9.remaining()
            android.media.AudioTrack r0 = r7.zzs
            java.nio.ByteBuffer r1 = r7.zzM
            r2 = 1
            int r0 = r0.write(r1, r9, r2)
            long r3 = android.os.SystemClock.elapsedRealtime()
            r7.zzU = r3
            r3 = 0
            r1 = 0
            if (r0 >= 0) goto L6d
            int r9 = com.google.android.gms.internal.ads.zzeu.zza
            r5 = 24
            if (r9 < r5) goto L31
            r9 = -6
            if (r0 == r9) goto L35
        L31:
            r9 = -32
            if (r0 != r9) goto L4a
        L35:
            long r5 = r7.zzM()
            int r9 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r9 <= 0) goto L3e
            goto L4b
        L3e:
            android.media.AudioTrack r9 = r7.zzs
            boolean r9 = zzaa(r9)
            if (r9 == 0) goto L4a
            r7.zzQ()
            goto L4b
        L4a:
            r2 = r1
        L4b:
            com.google.android.gms.internal.ads.zzqe r9 = new com.google.android.gms.internal.ads.zzqe
            com.google.android.gms.internal.ads.zzqu r1 = r7.zzq
            com.google.android.gms.internal.ads.zzz r1 = r1.zza
            r9.<init>(r0, r1, r2)
            com.google.android.gms.internal.ads.zzqc r0 = r7.zzo
            if (r0 == 0) goto L5b
            r0.zza(r9)
        L5b:
            boolean r0 = r9.zzb
            if (r0 == 0) goto L69
            android.content.Context r0 = r7.zzd
            if (r0 != 0) goto L64
            goto L69
        L64:
            com.google.android.gms.internal.ads.zzpb r8 = com.google.android.gms.internal.ads.zzpb.zza
            r7.zzt = r8
            throw r9
        L69:
            r8.zzb(r9)
            return
        L6d:
            r8.zza()
            android.media.AudioTrack r8 = r7.zzs
            boolean r8 = zzaa(r8)
            if (r8 == 0) goto L8c
            long r5 = r7.zzE
            int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r8 <= 0) goto L80
            r7.zzW = r1
        L80:
            boolean r8 = r7.zzQ
            if (r8 == 0) goto L8c
            com.google.android.gms.internal.ads.zzqc r8 = r7.zzo
            if (r8 == 0) goto L8c
            if (r0 >= r9) goto L8c
            com.google.android.gms.internal.ads.zzrj r8 = (com.google.android.gms.internal.ads.zzrj) r8
        L8c:
            com.google.android.gms.internal.ads.zzqu r8 = r7.zzq
            int r8 = r8.zzc
            if (r8 != 0) goto L98
            long r3 = r7.zzD
            long r5 = (long) r0
            long r3 = r3 + r5
            r7.zzD = r3
        L98:
            if (r0 != r9) goto Lb6
            if (r8 == 0) goto Lb3
            java.nio.ByteBuffer r8 = r7.zzM
            java.nio.ByteBuffer r9 = r7.zzK
            if (r8 != r9) goto La3
            goto La4
        La3:
            r2 = r1
        La4:
            com.google.android.gms.internal.ads.zzdc.zzf(r2)
            long r8 = r7.zzE
            int r0 = r7.zzF
            long r0 = (long) r0
            int r2 = r7.zzL
            long r2 = (long) r2
            long r0 = r0 * r2
            long r8 = r8 + r0
            r7.zzE = r8
        Lb3:
            r8 = 0
            r7.zzM = r8
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrf.zzP(long):void");
    }

    private final void zzQ() {
        if (this.zzq.zzc == 1) {
            this.zzV = true;
        }
    }

    @EnsuresNonNull({"audioCapabilities"})
    private final void zzR() {
        Context context;
        if (this.zzu == null && (context = this.zzd) != null) {
            this.zzX = Looper.myLooper();
            zzpg zzpgVar = new zzpg(context, new zzqp(this), this.zzw, this.zzT);
            this.zzu = zzpgVar;
            this.zzt = zzpgVar.zzc();
        }
        this.zzt.getClass();
    }

    private final void zzS() {
        if (this.zzO) {
            return;
        }
        this.zzO = true;
        this.zzi.zzb(zzM());
        if (zzaa(this.zzs)) {
            this.zzP = false;
        }
        this.zzs.stop();
    }

    private final void zzT(long j) throws Exception {
        zzP(j);
        if (this.zzM != null) {
            return;
        }
        if (!this.zzr.zzh()) {
            ByteBuffer byteBuffer = this.zzK;
            if (byteBuffer != null) {
                zzV(byteBuffer);
                zzP(j);
                return;
            }
            return;
        }
        while (!this.zzr.zzg()) {
            do {
                ByteBuffer byteBufferZzb = this.zzr.zzb();
                if (byteBufferZzb.hasRemaining()) {
                    zzV(byteBufferZzb);
                    zzP(j);
                } else {
                    ByteBuffer byteBuffer2 = this.zzK;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.zzr.zze(this.zzK);
                    }
                }
            } while (this.zzM == null);
            return;
        }
    }

    private final void zzU(zzbb zzbbVar) {
        zzqw zzqwVar = new zzqw(zzbbVar, -9223372036854775807L, -9223372036854775807L, null);
        if (zzZ()) {
            this.zzx = zzqwVar;
        } else {
            this.zzy = zzqwVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x004b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzV(java.nio.ByteBuffer r17) {
        /*
            Method dump skipped, instruction units count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrf.zzV(java.nio.ByteBuffer):void");
    }

    private final void zzW() {
        if (zzZ()) {
            this.zzs.setVolume(this.zzJ);
        }
    }

    private final void zzX() {
        zzck zzckVar = this.zzq.zzi;
        this.zzr = zzckVar;
        zzckVar.zzc();
    }

    private final boolean zzY() throws Exception {
        ByteBuffer byteBuffer;
        if (!this.zzr.zzh()) {
            zzP(Long.MIN_VALUE);
            return this.zzM == null;
        }
        this.zzr.zzd();
        zzT(Long.MIN_VALUE);
        return this.zzr.zzg() && ((byteBuffer = this.zzM) == null || !byteBuffer.hasRemaining());
    }

    private final boolean zzZ() {
        return this.zzs != null;
    }

    private static boolean zzaa(AudioTrack audioTrack) {
        return zzeu.zza >= 29 && audioTrack.isOffloadedPlayback();
    }

    private final boolean zzab() {
        zzqu zzquVar = this.zzq;
        if (zzquVar.zzc != 0) {
            return false;
        }
        int i = zzquVar.zza.zzG;
        return true;
    }

    private static final AudioTrack zzac(zzpz zzpzVar, zze zzeVar, int i, zzz zzzVar) throws zzqb {
        try {
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(zzeVar.zza().zza).setAudioFormat(zzeu.zzx(zzpzVar.zzb, zzpzVar.zzc, zzpzVar.zza)).setTransferMode(1).setBufferSizeInBytes(zzpzVar.zze).setSessionId(i);
            if (zzeu.zza >= 29) {
                sessionId.setOffloadedPlayback(zzpzVar.zzd);
            }
            AudioTrack audioTrackBuild = sessionId.build();
            int state = audioTrackBuild.getState();
            if (state == 1) {
                return audioTrackBuild;
            }
            try {
                audioTrackBuild.release();
            } catch (Exception unused) {
            }
            throw new zzqb(state, zzpzVar.zzb, zzpzVar.zzc, zzpzVar.zza, zzzVar, zzpzVar.zzd, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e) {
            throw new zzqb(0, zzpzVar.zzb, zzpzVar.zzc, zzpzVar.zza, zzzVar, zzpzVar.zzd, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final boolean zzA(zzz zzzVar) {
        return zza(zzzVar) != 0;
    }

    public final void zzJ(zzpb zzpbVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.zzX;
        if (looper != looperMyLooper) {
            String name = Constants.ATTENDANCE_STATUS_NULL;
            String name2 = looper == null ? Constants.ATTENDANCE_STATUS_NULL : looper.getThread().getName();
            if (looperMyLooper != null) {
                name = looperMyLooper.getThread().getName();
            }
            throw new IllegalStateException("Current looper (" + name + ") is not the playback looper (" + name2 + ")");
        }
        zzpb zzpbVar2 = this.zzt;
        if (zzpbVar2 == null || zzpbVar.equals(zzpbVar2)) {
            return;
        }
        this.zzt = zzpbVar;
        zzqc zzqcVar = this.zzo;
        if (zzqcVar != null) {
            ((zzrj) zzqcVar).zza.zzB();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final int zza(zzz zzzVar) {
        zzR();
        if (!"audio/raw".equals(zzzVar.zzo)) {
            return this.zzt.zzb(zzzVar, this.zzw) != null ? 2 : 0;
        }
        int i = zzzVar.zzG;
        if (zzeu.zzK(i)) {
            return i != 2 ? 1 : 2;
        }
        zzdx.zzf("DefaultAudioSink", "Invalid PCM encoding: " + i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final long zzb(boolean z) {
        ArrayDeque arrayDeque;
        long j;
        if (!zzZ() || this.zzH) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.zzi.zza(), zzeu.zzt(zzM(), this.zzq.zze));
        while (true) {
            arrayDeque = this.zzj;
            if (arrayDeque.isEmpty() || jMin < ((zzqw) arrayDeque.getFirst()).zzc) {
                break;
            }
            this.zzy = (zzqw) arrayDeque.remove();
        }
        zzqw zzqwVar = this.zzy;
        long j2 = jMin - zzqwVar.zzc;
        long jZzq = zzeu.zzq(j2, zzqwVar.zza.zzb);
        if (arrayDeque.isEmpty()) {
            long jZza = this.zzab.zza(j2);
            zzqw zzqwVar2 = this.zzy;
            j = zzqwVar2.zzb + jZza;
            zzqwVar2.zzd = jZza - jZzq;
        } else {
            zzqw zzqwVar3 = this.zzy;
            j = zzqwVar3.zzb + jZzq + zzqwVar3.zzd;
        }
        long jZzb = this.zzab.zzb();
        long jZzt = j + zzeu.zzt(jZzb, this.zzq.zze);
        long j3 = this.zzY;
        if (jZzb > j3) {
            long jZzt2 = zzeu.zzt(jZzb - j3, this.zzq.zze);
            this.zzY = jZzb;
            this.zzZ += jZzt2;
            if (this.zzaa == null) {
                this.zzaa = new Handler(Looper.myLooper());
            }
            this.zzaa.removeCallbacksAndMessages(null);
            this.zzaa.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqn
                @Override // java.lang.Runnable
                public final void run() {
                    zzrf.zzG(this.zza);
                }
            }, 100L);
        }
        return jZzt;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final zzbb zzc() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final zzpk zzd(zzz zzzVar) {
        return this.zzV ? zzpk.zza : this.zzac.zza(zzzVar, this.zzw);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0160  */
    @Override // com.google.android.gms.internal.ads.zzqf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(com.google.android.gms.internal.ads.zzz r22, int r23, int[] r24) throws com.google.android.gms.internal.ads.zzqa {
        /*
            Method dump skipped, instruction units count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrf.zze(com.google.android.gms.internal.ads.zzz, int, int[]):void");
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzf() {
        zzqy zzqyVar;
        if (zzZ()) {
            this.zzB = 0L;
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzE = 0L;
            this.zzW = false;
            this.zzF = 0;
            this.zzy = new zzqw(this.zzz, 0L, 0L, null);
            this.zzI = 0L;
            this.zzx = null;
            this.zzj.clear();
            this.zzK = null;
            this.zzL = 0;
            this.zzM = null;
            this.zzO = false;
            this.zzN = false;
            this.zzP = false;
            this.zzf.zzp();
            zzX();
            zzqj zzqjVar = this.zzi;
            if (zzqjVar.zzh()) {
                this.zzs.pause();
            }
            if (zzaa(this.zzs)) {
                zzrd zzrdVar = this.zzk;
                zzrdVar.getClass();
                zzrdVar.zzb(this.zzs);
            }
            final zzpz zzpzVarZza = this.zzq.zza();
            zzqu zzquVar = this.zzp;
            if (zzquVar != null) {
                this.zzq = zzquVar;
                this.zzp = null;
            }
            zzqjVar.zzc();
            if (zzeu.zza >= 24 && (zzqyVar = this.zzv) != null) {
                zzqyVar.zzb();
                this.zzv = null;
            }
            final AudioTrack audioTrack = this.zzs;
            final zzqc zzqcVar = this.zzo;
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (zza) {
                if (zzb == null) {
                    final String str = "ExoPlayer:AudioTrackReleaseThread";
                    zzb = Executors.newSingleThreadScheduledExecutor(new ThreadFactory(str) { // from class: com.google.android.gms.internal.ads.zzet
                        public final /* synthetic */ String zza = "ExoPlayer:AudioTrackReleaseThread";

                        @Override // java.util.concurrent.ThreadFactory
                        public final Thread newThread(Runnable runnable) {
                            int i = zzeu.zza;
                            return new Thread(runnable, this.zza);
                        }
                    });
                }
                zzc++;
                zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqm
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzrf.zzI(audioTrack, zzqcVar, handler, zzpzVarZza);
                    }
                }, 20L, TimeUnit.MILLISECONDS);
            }
            this.zzs = null;
        }
        this.zzm.zza();
        this.zzl.zza();
        this.zzY = 0L;
        this.zzZ = 0L;
        Handler handler2 = this.zzaa;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzg() {
        this.zzG = true;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzh() {
        this.zzQ = false;
        if (zzZ()) {
            if (this.zzi.zzk() || zzaa(this.zzs)) {
                this.zzs.pause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzi() {
        this.zzQ = true;
        if (zzZ()) {
            this.zzi.zzf();
            this.zzs.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzj() throws zzqe {
        if (!this.zzN && zzZ() && zzY()) {
            zzS();
            this.zzN = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzk() {
        zzpg zzpgVar = this.zzu;
        if (zzpgVar != null) {
            zzpgVar.zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzl() {
        zzf();
        zzfww zzfwwVar = this.zzg;
        int size = zzfwwVar.size();
        for (int i = 0; i < size; i++) {
            ((zzcn) zzfwwVar.get(i)).zzf();
        }
        zzfww zzfwwVar2 = this.zzh;
        int size2 = zzfwwVar2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((zzcn) zzfwwVar2.get(i2)).zzf();
        }
        zzck zzckVar = this.zzr;
        if (zzckVar != null) {
            zzckVar.zzf();
        }
        this.zzQ = false;
        this.zzV = false;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzm(zze zzeVar) {
        if (this.zzw.equals(zzeVar)) {
            return;
        }
        this.zzw = zzeVar;
        zzpg zzpgVar = this.zzu;
        if (zzpgVar != null) {
            zzpgVar.zzg(zzeVar);
        }
        zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzn(int i) {
        if (this.zzR != i) {
            this.zzR = i;
            zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzo(zzf zzfVar) {
        if (this.zzS.equals(zzfVar)) {
            return;
        }
        if (this.zzs != null) {
            int i = this.zzS.zza;
        }
        this.zzS = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzp(zzdg zzdgVar) {
        this.zzi.zze(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzq(zzqc zzqcVar) {
        this.zzo = zzqcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzr(int i, int i2) {
        AudioTrack audioTrack = this.zzs;
        if (audioTrack != null) {
            zzaa(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzs(zzbb zzbbVar) {
        float f = zzbbVar.zzb;
        int i = zzeu.zza;
        this.zzz = new zzbb(Math.max(0.1f, Math.min(f, 8.0f)), Math.max(0.1f, Math.min(zzbbVar.zzc, 8.0f)));
        zzU(zzbbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzt(zzoz zzozVar) {
        this.zzn = zzozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzv(boolean z) {
        this.zzA = z;
        zzU(this.zzz);
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzw(float f) {
        if (this.zzJ != f) {
            this.zzJ = f;
            zzW();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0279  */
    @Override // com.google.android.gms.internal.ads.zzqf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzx(java.nio.ByteBuffer r28, long r29, int r31) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrf.zzx(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final boolean zzy() {
        if (zzZ()) {
            return !(zzeu.zza >= 29 && this.zzs.isOffloadedPlayback() && this.zzP) && this.zzi.zzg(zzM());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final boolean zzz() {
        if (zzZ()) {
            return this.zzN && !zzy();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final void zzu(AudioDeviceInfo audioDeviceInfo) {
        this.zzT = audioDeviceInfo == null ? null : new zzph(audioDeviceInfo);
        zzpg zzpgVar = this.zzu;
        if (zzpgVar != null) {
            zzpgVar.zzh(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.zzs;
        if (audioTrack != null) {
            zzqq.zza(audioTrack, this.zzT);
        }
    }
}
