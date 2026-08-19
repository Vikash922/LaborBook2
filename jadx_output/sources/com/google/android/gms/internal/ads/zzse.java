package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzse implements zzsu {
    private final zzfuo zza;
    private final zzfuo zzb;

    public zzse(int i) {
        zzsc zzscVar = new zzsc(i);
        zzsd zzsdVar = new zzsd(i);
        this.zza = zzscVar;
        this.zzb = zzsdVar;
    }

    static /* synthetic */ HandlerThread zza(int i) {
        return new HandlerThread(zzsg.zzt(i, "ExoPlayer:MediaCodecAsyncAdapter:"));
    }

    static /* synthetic */ HandlerThread zzb(int i) {
        return new HandlerThread(zzsg.zzt(i, "ExoPlayer:MediaCodecQueueingThread:"));
    }

    public final zzsg zzc(zzst zzstVar) throws Exception {
        MediaCodec mediaCodecCreateByCodecName;
        zzsg zzsgVar;
        zzsz zzszVar = zzstVar.zza;
        String str = zzszVar.zza;
        zzsg zzsgVar2 = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            try {
                HandlerThread handlerThreadZzb = zzb(((zzsd) this.zzb).zza);
                HandlerThread handlerThread = handlerThreadZzb;
                zzsk zzskVar = new zzsk(mediaCodecCreateByCodecName, handlerThreadZzb);
                HandlerThread handlerThreadZza = zza(((zzsc) this.zza).zza);
                HandlerThread handlerThread2 = handlerThreadZza;
                zzsgVar = new zzsg(mediaCodecCreateByCodecName, handlerThreadZza, zzskVar, zzstVar.zzf, null);
            } catch (Exception e) {
                e = e;
            }
            try {
                Trace.endSection();
                Surface surface = zzstVar.zzd;
                int i = 0;
                if (surface == null && zzszVar.zzh && zzeu.zza >= 35) {
                    i = 8;
                }
                zzsg.zzh(zzsgVar, zzstVar.zzb, surface, null, i);
                return zzsgVar;
            } catch (Exception e2) {
                e = e2;
                zzsgVar2 = zzsgVar;
                if (zzsgVar2 != null) {
                    zzsgVar2.zzm();
                } else if (mediaCodecCreateByCodecName != null) {
                    mediaCodecCreateByCodecName.release();
                }
                throw e;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodecCreateByCodecName = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final /* bridge */ /* synthetic */ zzsw zzd(zzst zzstVar) throws IOException {
        throw null;
    }
}
