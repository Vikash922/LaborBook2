package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzsz {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    private final boolean zzi;

    public static zzsz zzc(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        if (codecCapabilities == null || !codecCapabilities.isFeatureSupported("adaptive-playback")) {
            z6 = false;
        } else {
            int i = zzeu.zza;
            z6 = true;
        }
        return new zzsz(str, str2, str3, codecCapabilities, z, z2, z3, z6, codecCapabilities != null && codecCapabilities.isFeatureSupported("tunneled-playback"), z5 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback")), (zzeu.zza < 35 || codecCapabilities == null || !codecCapabilities.isFeatureSupported("detached-surface") || Build.MANUFACTURER.equals("Xiaomi") || Build.MANUFACTURER.equals("OPPO")) ? false : true);
    }

    private static Point zzi(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i3 = zzeu.zza;
        return new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    private final void zzj(String str) {
        zzdx.zzb("MediaCodecInfo", "NoSupport [" + str + "] [" + this.zza + ", " + this.zzb + "] [" + zzeu.zzb + "]");
    }

    private static boolean zzk(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point pointZzi = zzi(videoCapabilities, i, i2);
        int i3 = pointZzi.x;
        int i4 = pointZzi.y;
        return (d == -1.0d || d < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzl(com.google.android.gms.internal.ads.zzz r12, boolean r13) {
        /*
            Method dump skipped, instruction units count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsz.zzl(com.google.android.gms.internal.ads.zzz, boolean):boolean");
    }

    private final boolean zzm(zzz zzzVar) {
        return (Objects.equals(zzzVar.zzo, "audio/flac") && zzzVar.zzG == 22 && zzeu.zza < 34 && this.zza.equals("c2.android.flac.decoder")) ? false : true;
    }

    private final boolean zzn(zzz zzzVar) {
        String str = this.zzb;
        return str.equals(zzzVar.zzo) || str.equals(zztt.zzb(zzzVar));
    }

    public final String toString() {
        return this.zza;
    }

    public final Point zza(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return zzi(videoCapabilities, i, i2);
    }

    public final zzhz zzb(zzz zzzVar, zzz zzzVar2) {
        int i = true != Objects.equals(zzzVar.zzo, zzzVar2.zzo) ? 8 : 0;
        if (this.zzi) {
            if (zzzVar.zzy != zzzVar2.zzy) {
                i |= 1024;
            }
            if (!this.zze && (zzzVar.zzv != zzzVar2.zzv || zzzVar.zzw != zzzVar2.zzw)) {
                i |= 512;
            }
            zzk zzkVar = zzzVar.zzC;
            if ((!zzk.zzg(zzkVar) || !zzk.zzg(zzzVar2.zzC)) && !Objects.equals(zzkVar, zzzVar2.zzC)) {
                i |= 2048;
            }
            String str = this.zza;
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !zzzVar.zzd(zzzVar2)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzhz(str, zzzVar, zzzVar2, true != zzzVar.zzd(zzzVar2) ? 2 : 3, 0);
            }
        } else {
            if (zzzVar.zzE != zzzVar2.zzE) {
                i |= 4096;
            }
            if (zzzVar.zzF != zzzVar2.zzF) {
                i |= 8192;
            }
            if (zzzVar.zzG != zzzVar2.zzG) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.zzb)) {
                int i2 = zztt.zza;
                Pair pairZza = zzdh.zza(zzzVar);
                Pair pairZza2 = zzdh.zza(zzzVar2);
                if (pairZza != null && pairZza2 != null) {
                    int iIntValue = ((Integer) pairZza.first).intValue();
                    int iIntValue2 = ((Integer) pairZza2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new zzhz(this.zza, zzzVar, zzzVar2, 3, 0);
                    }
                }
            }
            if (!zzzVar.zzd(zzzVar2)) {
                i |= 32;
            }
            if ("audio/opus".equals(this.zzb)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzhz(this.zza, zzzVar, zzzVar2, 1, 0);
            }
        }
        return new zzhz(this.zza, zzzVar, zzzVar2, 0, i);
    }

    public final boolean zzd(zzz zzzVar) {
        return zzn(zzzVar) && zzl(zzzVar, false) && zzm(zzzVar);
    }

    public final boolean zze(zzz zzzVar) throws zztn {
        int i;
        if (!zzn(zzzVar) || !zzl(zzzVar, true) || !zzm(zzzVar)) {
            return false;
        }
        if (this.zzi) {
            int i2 = zzzVar.zzv;
            if (i2 <= 0 || (i = zzzVar.zzw) <= 0) {
                return true;
            }
            return zzg(i2, i, zzzVar.zzx);
        }
        int i3 = zzzVar.zzF;
        if (i3 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
            if (codecCapabilities == null) {
                zzj("sampleRate.caps");
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                zzj("sampleRate.aCaps");
                return false;
            }
            if (!audioCapabilities.isSampleRateSupported(i3)) {
                zzj("sampleRate.support, " + i3);
                return false;
            }
        }
        int i4 = zzzVar.zzE;
        if (i4 == -1) {
            return true;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
        if (codecCapabilities2 == null) {
            zzj("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
        if (audioCapabilities2 == null) {
            zzj("channelCount.aCaps");
            return false;
        }
        String str = this.zza;
        String str2 = this.zzb;
        int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
        if (maxInputChannelCount <= 1 && ((zzeu.zza < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
            int i5 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
            zzdx.zzf("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i5 + "]");
            maxInputChannelCount = i5;
        }
        if (maxInputChannelCount >= i4) {
            return true;
        }
        zzj("channelCount.support, " + i4);
        return false;
    }

    public final boolean zzf(zzz zzzVar) {
        if (this.zzi) {
            return this.zze;
        }
        int i = zztt.zza;
        Pair pairZza = zzdh.zza(zzzVar);
        return pairZza != null && ((Integer) pairZza.first).intValue() == 42;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzg(int r9, int r10, double r11) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsz.zzg(int, int, double):boolean");
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzh() {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        return (codecCapabilities == null || codecCapabilities.profileLevels == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecCapabilities.profileLevels;
    }

    zzsz(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        str.getClass();
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zzg = z;
        this.zze = z4;
        this.zzf = z6;
        this.zzh = z7;
        this.zzi = zzay.zzj(str2);
    }
}
