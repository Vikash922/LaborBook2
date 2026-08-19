package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.SparseArray;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzpb {
    static final zzfwz zzb;
    private final SparseArray zzd = new SparseArray();
    private final int zze;
    public static final zzpb zza = new zzpb(zzfww.zzo(zzpa.zza));
    private static final zzfww zzc = zzfww.zzq(2, 5, 6);

    static {
        zzfwy zzfwyVar = new zzfwy();
        zzfwyVar.zza(5, 6);
        zzfwyVar.zza(17, 6);
        zzfwyVar.zza(7, 6);
        zzfwyVar.zza(30, 10);
        zzfwyVar.zza(18, 6);
        zzfwyVar.zza(6, 8);
        zzfwyVar.zza(8, 8);
        zzfwyVar.zza(14, 8);
        zzb = zzfwyVar.zzc();
    }

    private zzpb(List list) {
        for (int i = 0; i < list.size(); i++) {
            zzpa zzpaVar = (zzpa) list.get(i);
            this.zzd.put(zzpaVar.zzb, zzpaVar);
        }
        int iMax = 0;
        for (int i2 = 0; i2 < this.zzd.size(); i2++) {
            iMax = Math.max(iMax, ((zzpa) this.zzd.valueAt(i2)).zzc);
        }
        this.zze = iMax;
    }

    static Uri zza() {
        if (zzf()) {
            return Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        return null;
    }

    static zzpb zzc(Context context, zze zzeVar, zzph zzphVar) {
        return zzd(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), zzeVar, zzphVar);
    }

    static zzpb zzd(Context context, Intent intent, zze zzeVar, zzph zzphVar) {
        AudioManager audioManagerZzc = zzcj.zzc(context);
        if (zzphVar == null) {
            zzph zzphVar2 = null;
            if (zzeu.zza >= 33) {
                try {
                    AudioManager audioManager = audioManagerZzc;
                    List<AudioDeviceInfo> audioDevicesForAttributes = audioManagerZzc.getAudioDevicesForAttributes(zzeVar.zza().zza);
                    if (!audioDevicesForAttributes.isEmpty()) {
                        zzphVar2 = new zzph(audioDevicesForAttributes.get(0));
                    }
                } catch (RuntimeException unused) {
                }
            }
            zzphVar = zzphVar2;
        }
        int i = zzeu.zza;
        if (i >= 33 && (zzeu.zzN(context) || zzeu.zzJ(context))) {
            List<AudioProfile> directProfilesForAttributes = audioManagerZzc.getDirectProfilesForAttributes(zzeVar.zza().zza);
            HashMap map = new HashMap();
            map.put(2, new HashSet(zzfzz.zzh(12)));
            for (int i2 = 0; i2 < directProfilesForAttributes.size(); i2++) {
                AudioProfile audioProfile = directProfilesForAttributes.get(i2);
                if (audioProfile.getEncapsulationType() != 1) {
                    int format = audioProfile.getFormat();
                    if (zzeu.zzK(format) || zzb.containsKey(Integer.valueOf(format))) {
                        Integer numValueOf = Integer.valueOf(format);
                        if (map.containsKey(numValueOf)) {
                            Set set = (Set) map.get(numValueOf);
                            set.getClass();
                            set.addAll(zzfzz.zzh(audioProfile.getChannelMasks()));
                        } else {
                            map.put(numValueOf, new HashSet(zzfzz.zzh(audioProfile.getChannelMasks())));
                        }
                    }
                }
            }
            int i3 = zzfww.zzd;
            zzfwt zzfwtVar = new zzfwt();
            for (Map.Entry entry : map.entrySet()) {
                zzfwtVar.zzf(new zzpa(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
            }
            return new zzpb(zzfwtVar.zzi());
        }
        AudioDeviceInfo[] devices = zzphVar == null ? audioManagerZzc.getDevices(2) : new AudioDeviceInfo[]{zzphVar.zza};
        zzfxa zzfxaVar = new zzfxa();
        zzfxaVar.zzg(8, 7);
        if (i >= 31) {
            zzfxaVar.zzg(26, 27);
        }
        int i4 = zzeu.zza;
        if (i4 >= 33) {
            zzfxaVar.zzf((Object) 30);
        }
        zzfxb zzfxbVarZzi = zzfxaVar.zzi();
        for (AudioDeviceInfo audioDeviceInfo : devices) {
            if (zzfxbVarZzi.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                return zza;
            }
        }
        zzfxa zzfxaVar2 = new zzfxa();
        zzfxaVar2.zzf((Object) 2);
        if (i4 >= 29 && (zzeu.zzN(context) || zzeu.zzJ(context))) {
            int i5 = zzfww.zzd;
            zzfwt zzfwtVar2 = new zzfwt();
            zzfzc it = zzb.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = ((Integer) it.next()).intValue();
                if (i4 >= zzeu.zzh(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), zzeVar.zza().zza)) {
                    zzfwtVar2.zzf(Integer.valueOf(iIntValue));
                }
            }
            zzfwtVar2.zzf((Object) 2);
            zzfxaVar2.zzh(zzfwtVar2.zzi());
            return new zzpb(zze(zzfzz.zzi(zzfxaVar2.zzi()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if ((z || zzf()) && Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            zzfxaVar2.zzh(zzc);
        }
        if (intent == null || z || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new zzpb(zze(zzfzz.zzi(zzfxaVar2.zzi()), 10));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            zzfxaVar2.zzh(zzfzz.zzh(intArrayExtra));
        }
        return new zzpb(zze(zzfzz.zzi(zzfxaVar2.zzi()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
    }

    private static zzfww zze(int[] iArr, int i) {
        int i2 = zzfww.zzd;
        zzfwt zzfwtVar = new zzfwt();
        for (int i3 : iArr) {
            zzfwtVar.zzf(new zzpa(i3, i));
        }
        return zzfwtVar.zzi();
    }

    private static boolean zzf() {
        return Build.MANUFACTURER.equals("Amazon") || Build.MANUFACTURER.equals("Xiaomi");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0045 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 1
            if (r8 != r9) goto L4
            return r0
        L4:
            boolean r1 = r9 instanceof com.google.android.gms.internal.ads.zzpb
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            com.google.android.gms.internal.ads.zzpb r9 = (com.google.android.gms.internal.ads.zzpb) r9
            android.util.SparseArray r1 = r8.zzd
            android.util.SparseArray r3 = r9.zzd
            int r4 = com.google.android.gms.internal.ads.zzeu.zza
            r5 = 31
            if (r4 < r5) goto L1d
            boolean r1 = r1.contentEquals(r3)
            if (r1 == 0) goto L46
            goto L3f
        L1d:
            int r4 = r1.size()
            int r5 = r3.size()
            if (r4 != r5) goto L46
            r5 = r2
        L28:
            if (r5 >= r4) goto L3f
            int r6 = r1.keyAt(r5)
            java.lang.Object r7 = r1.valueAt(r5)
            java.lang.Object r6 = r3.get(r6)
            boolean r6 = java.util.Objects.equals(r7, r6)
            if (r6 == 0) goto L46
            int r5 = r5 + 1
            goto L28
        L3f:
            int r1 = r8.zze
            int r9 = r9.zze
            if (r1 != r9) goto L46
            return r0
        L46:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpb.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int iContentHashCode;
        int i = zzeu.zza;
        SparseArray sparseArray = this.zzd;
        if (i >= 31) {
            iContentHashCode = sparseArray.contentHashCode();
        } else {
            int iKeyAt = 17;
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                iKeyAt = (((iKeyAt * 31) + sparseArray.keyAt(i2)) * 31) + Objects.hashCode(sparseArray.valueAt(i2));
            }
            iContentHashCode = iKeyAt;
        }
        return this.zze + (iContentHashCode * 31);
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.zze + ", audioProfiles=" + this.zzd.toString() + "]";
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d A[PHI: r1
      0x003d: PHI (r1v5 int) = (r1v4 int), (r1v9 int) binds: [B:11:0x002f, B:14:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair zzb(com.google.android.gms.internal.ads.zzz r10, com.google.android.gms.internal.ads.zze r11) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpb.zzb(com.google.android.gms.internal.ads.zzz, com.google.android.gms.internal.ads.zze):android.util.Pair");
    }
}
