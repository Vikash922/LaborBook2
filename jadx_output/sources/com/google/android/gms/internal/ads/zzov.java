package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.util.Pair;
import com.amplitude.core.events.Identify;
import com.laborbook.base.BaseConstants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzov implements zzmj, zzow {
    private boolean zzA;
    private final Context zza;
    private final zzox zzc;
    private final PlaybackSession zzd;
    private String zzj;
    private PlaybackMetrics.Builder zzk;
    private int zzl;
    private zzba zzo;
    private zzou zzp;
    private zzou zzq;
    private zzou zzr;
    private zzz zzs;
    private zzz zzt;
    private zzz zzu;
    private boolean zzv;
    private boolean zzw;
    private int zzx;
    private int zzy;
    private int zzz;
    private final Executor zzb = zzdd.zza();
    private final zzbk zzf = new zzbk();
    private final zzbj zzg = new zzbj();
    private final HashMap zzi = new HashMap();
    private final HashMap zzh = new HashMap();
    private final long zze = SystemClock.elapsedRealtime();
    private int zzm = 0;
    private int zzn = 0;

    private zzov(Context context, PlaybackSession playbackSession) {
        this.zza = context.getApplicationContext();
        this.zzd = playbackSession;
        zzoo zzooVar = new zzoo(zzoo.zza);
        this.zzc = zzooVar;
        zzooVar.zzh(this);
    }

    @RequiresNonNull({"metricsBuilder"})
    private final void zzA(zzbl zzblVar, zzuy zzuyVar) {
        int iZza;
        PlaybackMetrics.Builder builder = this.zzk;
        if (zzuyVar == null || (iZza = zzblVar.zza(zzuyVar.zza)) == -1) {
            return;
        }
        zzbj zzbjVar = this.zzg;
        int i = 0;
        zzblVar.zzd(iZza, zzbjVar, false);
        zzbk zzbkVar = this.zzf;
        zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L);
        zzak zzakVar = zzbkVar.zzd.zzb;
        if (zzakVar != null) {
            int iZzo = zzeu.zzo(zzakVar.zza);
            i = iZzo != 0 ? iZzo != 1 ? iZzo != 2 ? 1 : 4 : 5 : 3;
        }
        builder.setStreamType(i);
        long j = zzbkVar.zzm;
        if (j != -9223372036854775807L && !zzbkVar.zzk && !zzbkVar.zzi && !zzbkVar.zzb()) {
            builder.setMediaDurationMillis(zzeu.zzv(j));
        }
        builder.setPlaybackType(true != zzbkVar.zzb() ? 1 : 2);
        this.zzA = true;
    }

    private final void zzB(long j, zzz zzzVar, int i) {
        if (Objects.equals(this.zzs, zzzVar)) {
            return;
        }
        int i2 = this.zzs == null ? 1 : 0;
        this.zzs = zzzVar;
        zzC(1, j, zzzVar, i2);
    }

    private final void zzC(int i, long j, zzz zzzVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i).setTimeSinceCreatedMillis(j - this.zze);
        if (zzzVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(i2 != 1 ? 1 : 2);
            String str = zzzVar.zzn;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = zzzVar.zzo;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = zzzVar.zzk;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = zzzVar.zzj;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = zzzVar.zzv;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = zzzVar.zzw;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = zzzVar.zzE;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = zzzVar.zzF;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = zzzVar.zzd;
            if (str4 != null) {
                int i8 = zzeu.zza;
                String[] strArrSplit = str4.split(Identify.UNSET_VALUE, -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                if (pairCreate.second != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) pairCreate.second);
                }
            }
            float f = zzzVar.zzx;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.zzA = true;
        final TrackChangeEvent trackChangeEventBuild = timeSinceCreatedMillis.build();
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzop
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzd.reportTrackChangeEvent(trackChangeEventBuild);
            }
        });
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    private final boolean zzD(zzou zzouVar) {
        if (zzouVar != null) {
            return zzouVar.zzc.equals(this.zzc.zze());
        }
        return false;
    }

    public static zzov zzb(Context context) {
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        return new zzov(context, mediaMetricsManager.createPlaybackSession());
    }

    private static int zzw(int i) {
        switch (zzeu.zzl(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private final void zzx() {
        PlaybackMetrics.Builder builder = this.zzk;
        if (builder != null && this.zzA) {
            builder.setAudioUnderrunCount(this.zzz);
            this.zzk.setVideoFramesDropped(this.zzx);
            this.zzk.setVideoFramesPlayed(this.zzy);
            Long l = (Long) this.zzh.get(this.zzj);
            this.zzk.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.zzi.get(this.zzj);
            this.zzk.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.zzk.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            final PlaybackMetrics playbackMetricsBuild = this.zzk.build();
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzos
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzd.reportPlaybackMetrics(playbackMetricsBuild);
                }
            });
        }
        this.zzk = null;
        this.zzj = null;
        this.zzz = 0;
        this.zzx = 0;
        this.zzy = 0;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzA = false;
    }

    private final void zzy(long j, zzz zzzVar, int i) {
        if (Objects.equals(this.zzt, zzzVar)) {
            return;
        }
        int i2 = this.zzt == null ? 1 : 0;
        this.zzt = zzzVar;
        zzC(0, j, zzzVar, i2);
    }

    private final void zzz(long j, zzz zzzVar, int i) {
        if (Objects.equals(this.zzu, zzzVar)) {
            return;
        }
        int i2 = this.zzu == null ? 1 : 0;
        this.zzu = zzzVar;
        zzC(2, j, zzzVar, i2);
    }

    public final LogSessionId zza() {
        return this.zzd.getSessionId();
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final /* synthetic */ void zze(zzmh zzmhVar, zzz zzzVar, zzhz zzhzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zzf(zzmh zzmhVar, int i, long j, long j2) {
        zzuy zzuyVar = zzmhVar.zzd;
        if (zzuyVar != null) {
            String strZzf = this.zzc.zzf(zzmhVar.zzb, zzuyVar);
            HashMap map = this.zzi;
            Long l = (Long) map.get(strZzf);
            HashMap map2 = this.zzh;
            Long l2 = (Long) map2.get(strZzf);
            map.put(strZzf, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            map2.put(strZzf, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zzg(zzmh zzmhVar, zzuu zzuuVar) {
        zzuy zzuyVar = zzmhVar.zzd;
        if (zzuyVar == null) {
            return;
        }
        zzz zzzVar = zzuuVar.zzb;
        zzzVar.getClass();
        zzou zzouVar = new zzou(zzzVar, 0, this.zzc.zzf(zzmhVar.zzb, zzuyVar));
        int i = zzuuVar.zza;
        if (i != 0) {
            if (i == 1) {
                this.zzq = zzouVar;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.zzr = zzouVar;
                return;
            }
        }
        this.zzp = zzouVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final /* synthetic */ void zzh(zzmh zzmhVar, int i, long j) {
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02a8  */
    @Override // com.google.android.gms.internal.ads.zzmj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(com.google.android.gms.internal.ads.zzbh r21, com.google.android.gms.internal.ads.zzmi r22) {
        /*
            Method dump skipped, instruction units count: 1018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzov.zzi(com.google.android.gms.internal.ads.zzbh, com.google.android.gms.internal.ads.zzmi):void");
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zzj(zzmh zzmhVar, zzup zzupVar, zzuu zzuuVar, IOException iOException, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final /* synthetic */ void zzk(zzmh zzmhVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zzl(zzmh zzmhVar, zzba zzbaVar) {
        this.zzo = zzbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zzm(zzmh zzmhVar, zzbf zzbfVar, zzbf zzbfVar2, int i) {
        if (i == 1) {
            this.zzv = true;
            i = 1;
        }
        this.zzl = i;
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final /* synthetic */ void zzn(zzmh zzmhVar, Object obj, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zzo(zzmh zzmhVar, zzhy zzhyVar) {
        this.zzx += zzhyVar.zzg;
        this.zzy += zzhyVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final /* synthetic */ void zzp(zzmh zzmhVar, zzz zzzVar, zzhz zzhzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zzq(zzmh zzmhVar, zzcd zzcdVar) {
        zzou zzouVar = this.zzp;
        if (zzouVar != null) {
            zzz zzzVar = zzouVar.zza;
            if (zzzVar.zzw == -1) {
                zzx zzxVarZzb = zzzVar.zzb();
                zzxVarZzb.zzai(zzcdVar.zzb);
                zzxVarZzb.zzM(zzcdVar.zzc);
                this.zzp = new zzou(zzxVarZzb.zzaj(), 0, zzouVar.zzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzu(zzmh zzmhVar, String str) {
        zzuy zzuyVar = zzmhVar.zzd;
        if (zzuyVar == null || !zzuyVar.zzb()) {
            zzx();
            this.zzj = str;
            this.zzk = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion(BaseConstants.APP_VERSION);
            zzA(zzmhVar.zzb, zzuyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzow
    public final void zzv(zzmh zzmhVar, String str, boolean z) {
        zzuy zzuyVar = zzmhVar.zzd;
        if ((zzuyVar == null || !zzuyVar.zzb()) && str.equals(this.zzj)) {
            zzx();
        }
        this.zzh.remove(str);
        this.zzi.remove(str);
    }
}
