package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import com.amplitude.core.events.Identify;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyn extends zzys implements zzlw {
    public static final /* synthetic */ int zzb = 0;
    private static final zzfyh zzc = zzfyh.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzxn
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i = zzyn.zzb;
            if (num.intValue() == -1) {
                return num2.intValue() == -1 ? 0 : -1;
            }
            if (num2.intValue() == -1) {
                return 1;
            }
            return num.intValue() - num2.intValue();
        }
    });
    public final Context zza;
    private final Object zzd;
    private zzyb zze;
    private zzyf zzf;
    private zze zzg;
    private final zzxj zzh;

    public zzyn(Context context) {
        zzxj zzxjVar = new zzxj();
        zzyb zzybVar = zzyb.zzF;
        this.zzd = new Object();
        this.zza = context != null ? context.getApplicationContext() : null;
        this.zzh = zzxjVar;
        if (zzybVar instanceof zzyb) {
            this.zze = zzybVar;
        } else {
            zzya zzyaVar = new zzya(zzybVar, null);
            zzyaVar.zzw(zzybVar);
            this.zze = new zzyb(zzyaVar);
        }
        this.zzg = zze.zza;
        if (this.zze.zzQ && context == null) {
            zzdx.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    static /* bridge */ /* synthetic */ int zzb(int i, int i2) {
        if (i == 0 || i != i2) {
            return Integer.bitCount(i & i2);
        }
        return Integer.MAX_VALUE;
    }

    protected static int zzc(zzz zzzVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzzVar.zzd)) {
            return 4;
        }
        String strZzh = zzh(str);
        String strZzh2 = zzh(zzzVar.zzd);
        if (strZzh2 == null || strZzh == null) {
            return (z && strZzh2 == null) ? 1 : 0;
        }
        if (strZzh2.startsWith(strZzh) || strZzh.startsWith(strZzh2)) {
            return 3;
        }
        int i = zzeu.zza;
        return strZzh2.split(Identify.UNSET_VALUE, 2)[0].equals(strZzh.split(Identify.UNSET_VALUE, 2)[0]) ? 2 : 0;
    }

    protected static String zzh(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static /* synthetic */ boolean zzm(zzyn zzynVar, zzyb zzybVar, zzz zzzVar) {
        zzyf zzyfVar;
        zzyf zzyfVar2;
        if (!zzybVar.zzQ) {
            return true;
        }
        int i = zzzVar.zzE;
        byte b = -1;
        if (i == -1 || i <= 2) {
            return true;
        }
        String str = zzzVar.zzo;
        if (str != null) {
            switch (str.hashCode()) {
                case -2123537834:
                    if (str.equals("audio/eac3-joc")) {
                        b = 2;
                    }
                    break;
                case 187078296:
                    if (str.equals("audio/ac3")) {
                        b = 0;
                    }
                    break;
                case 187078297:
                    if (str.equals("audio/ac4")) {
                        b = 3;
                    }
                    break;
                case 1504578661:
                    if (str.equals("audio/eac3")) {
                        b = 1;
                    }
                    break;
            }
            if ((b == 0 || b == 1 || b == 2 || b == 3) && (zzeu.zza < 32 || (zzyfVar2 = zzynVar.zzf) == null || !zzyfVar2.zze())) {
                return true;
            }
        }
        if (zzeu.zza >= 32 && (zzyfVar = zzynVar.zzf) != null && zzyfVar.zze() && zzyfVar.zzc() && zzynVar.zzf.zzd()) {
            return zzynVar.zzf.zzb(zzynVar.zzg, zzzVar);
        }
        return false;
    }

    private static void zzt(zzxd zzxdVar, zzbr zzbrVar, Map map) {
        for (int i = 0; i < zzxdVar.zzb; i++) {
            if (((zzbn) zzbrVar.zzD.get(zzxdVar.zzb(i))) != null) {
                throw null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzu() {
        boolean z;
        zzyf zzyfVar;
        synchronized (this.zzd) {
            z = false;
            if (this.zze.zzQ && zzeu.zza >= 32 && (zzyfVar = this.zzf) != null && zzyfVar.zze()) {
                z = true;
            }
        }
        if (z) {
            zzs();
        }
    }

    private static final Pair zzv(int i, zzyr zzyrVar, int[][][] iArr, zzyh zzyhVar, Comparator comparator) {
        RandomAccess randomAccessZzo;
        boolean z;
        zzyr zzyrVar2 = zzyrVar;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < 2) {
            if (i == zzyrVar2.zzc(i2)) {
                zzxd zzxdVarZzd = zzyrVar2.zzd(i2);
                for (int i3 = 0; i3 < zzxdVarZzd.zzb; i3++) {
                    zzbm zzbmVarZzb = zzxdVarZzd.zzb(i3);
                    List listZza = zzyhVar.zza(i2, zzbmVarZzb, iArr[i2][i3]);
                    int i4 = zzbmVarZzb.zza;
                    boolean[] zArr = new boolean[i4];
                    int i5 = 0;
                    while (i5 < i4) {
                        int i6 = i5 + 1;
                        zzyi zzyiVar = (zzyi) listZza.get(i5);
                        int iZzb = zzyiVar.zzb();
                        if (!zArr[i5] && iZzb != 0) {
                            if (iZzb == 1) {
                                randomAccessZzo = zzfww.zzo(zzyiVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(zzyiVar);
                                for (int i7 = i6; i7 < i4; i7++) {
                                    zzyi zzyiVar2 = (zzyi) listZza.get(i7);
                                    if (zzyiVar2.zzb() == 2 && zzyiVar.zzc(zzyiVar2)) {
                                        arrayList2.add(zzyiVar2);
                                        z = true;
                                        zArr[i7] = true;
                                    } else {
                                        z = true;
                                    }
                                }
                                randomAccessZzo = arrayList2;
                            }
                            arrayList.add(randomAccessZzo);
                        }
                        i5 = i6;
                    }
                }
            }
            i2++;
            zzyrVar2 = zzyrVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i8 = 0; i8 < list.size(); i8++) {
            iArr2[i8] = ((zzyi) list.get(i8)).zzc;
        }
        zzyi zzyiVar3 = (zzyi) list.get(0);
        return Pair.create(new zzyo(zzyiVar3.zzb, iArr2, 0), Integer.valueOf(zzyiVar3.zza));
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zza(zzlu zzluVar) {
        synchronized (this.zzd) {
            boolean z = this.zze.zzU;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzys
    protected final Pair zzd(zzyr zzyrVar, int[][][] iArr, final int[] iArr2, zzuy zzuyVar, zzbl zzblVar) throws zzii {
        final zzyb zzybVar;
        int i;
        final boolean z;
        final String languageTag;
        int i2;
        int[] iArr3;
        int length;
        zzyp zzypVarZza;
        Context context;
        CaptioningManager captioningManager;
        Locale locale;
        Context context2;
        synchronized (this.zzd) {
            zzybVar = this.zze;
        }
        if (zzybVar.zzQ && zzeu.zza >= 32 && this.zzf == null) {
            this.zzf = new zzyf(this.zza, this);
        }
        int i3 = 2;
        zzyo[] zzyoVarArr = new zzyo[2];
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = 1;
            if (i5 >= 2) {
                z = false;
                break;
            }
            if (zzyrVar.zzc(i5) == 2 && zzyrVar.zzd(i5).zzb > 0) {
                z = true;
                break;
            }
            i5++;
        }
        Pair pairZzv = zzv(1, zzyrVar, iArr, new zzyh() { // from class: com.google.android.gms.internal.ads.zzxs
            @Override // com.google.android.gms.internal.ads.zzyh
            public final List zza(int i6, zzbm zzbmVar, int[] iArr4) {
                zzxs zzxsVar = this;
                final zzyn zzynVar = zzxsVar.zza;
                final zzyb zzybVar2 = zzybVar;
                zzftx zzftxVar = new zzftx() { // from class: com.google.android.gms.internal.ads.zzxu
                    @Override // com.google.android.gms.internal.ads.zzftx
                    public final boolean zza(Object obj) {
                        return zzyn.zzm(zzynVar, zzybVar2, (zzz) obj);
                    }
                };
                int i7 = iArr2[i6];
                int i8 = zzfww.zzd;
                zzfwt zzfwtVar = new zzfwt();
                int i9 = 0;
                while (i9 < zzbmVar.zza) {
                    zzfwtVar.zzf(new zzxx(i6, zzbmVar, i9, zzybVar2, iArr4[i9], z, zzftxVar, i7));
                    i9++;
                    zzxsVar = this;
                }
                return zzfwtVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxt
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzxx) Collections.max((List) obj)).zza((zzxx) Collections.max((List) obj2));
            }
        });
        if (pairZzv != null) {
            zzyoVarArr[((Integer) pairZzv.second).intValue()] = (zzyo) pairZzv.first;
        }
        final String str = pairZzv == null ? null : ((zzyo) pairZzv.first).zza.zzb(((zzyo) pairZzv.first).zzb[0]).zzd;
        int i6 = zzybVar.zzu.zzb;
        final Point pointZzw = (!zzybVar.zzk || (context2 = this.zza) == null) ? null : zzeu.zzw(context2);
        Pair pairZzv2 = zzv(2, zzyrVar, iArr, new zzyh() { // from class: com.google.android.gms.internal.ads.zzxq
            /* JADX WARN: Removed duplicated region for block: B:29:0x004c  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x0054  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x005f  */
            @Override // com.google.android.gms.internal.ads.zzyh
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.List zza(int r20, com.google.android.gms.internal.ads.zzbm r21, int[] r22) {
                /*
                    Method dump skipped, instruction units count: 214
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxq.zza(int, com.google.android.gms.internal.ads.zzbm, int[]):java.util.List");
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxr
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list = (List) obj;
                List list2 = (List) obj2;
                return zzfwl.zzj().zzc((zzyl) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyj
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyl.zzd((zzyl) obj3, (zzyl) obj4);
                    }
                }), (zzyl) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyj
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyl.zzd((zzyl) obj3, (zzyl) obj4);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzyj
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyl.zzd((zzyl) obj3, (zzyl) obj4);
                    }
                }).zzb(list.size(), list2.size()).zzc((zzyl) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyk
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyl.zza((zzyl) obj3, (zzyl) obj4);
                    }
                }), (zzyl) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyk
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyl.zza((zzyl) obj3, (zzyl) obj4);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzyk
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyl.zza((zzyl) obj3, (zzyl) obj4);
                    }
                }).zza();
            }
        });
        boolean z2 = zzybVar.zzA;
        int i7 = 4;
        Pair pairZzv3 = pairZzv2 == null ? zzv(4, zzyrVar, iArr, new zzyh() { // from class: com.google.android.gms.internal.ads.zzxo
            @Override // com.google.android.gms.internal.ads.zzyh
            public final List zza(int i8, zzbm zzbmVar, int[] iArr4) {
                int i9 = zzyn.zzb;
                int i10 = zzfww.zzd;
                zzfwt zzfwtVar = new zzfwt();
                for (int i11 = 0; i11 < zzbmVar.zza; i11++) {
                    zzfwtVar.zzf(new zzxy(i8, zzbmVar, i11, zzybVar, iArr4[i11]));
                }
                return zzfwtVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxp
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzxy) ((List) obj).get(0)).compareTo((zzxy) ((List) obj2).get(0));
            }
        }) : null;
        if (pairZzv3 != null) {
            zzyoVarArr[((Integer) pairZzv3.second).intValue()] = (zzyo) pairZzv3.first;
        } else if (pairZzv2 != null) {
            zzyoVarArr[((Integer) pairZzv2.second).intValue()] = (zzyo) pairZzv2.first;
        }
        if (!zzybVar.zzx || (context = this.zza) == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            languageTag = null;
        } else {
            int i8 = zzeu.zza;
            languageTag = locale.toLanguageTag();
        }
        int i9 = 3;
        Pair pairZzv4 = zzv(3, zzyrVar, iArr, new zzyh() { // from class: com.google.android.gms.internal.ads.zzxv
            @Override // com.google.android.gms.internal.ads.zzyh
            public final List zza(int i10, zzbm zzbmVar, int[] iArr4) {
                int i11 = zzyn.zzb;
                int i12 = zzfww.zzd;
                zzfwt zzfwtVar = new zzfwt();
                for (int i13 = 0; i13 < zzbmVar.zza; i13++) {
                    String str2 = languageTag;
                    int i14 = i13;
                    zzfwtVar.zzf(new zzyg(i10, zzbmVar, i14, zzybVar, iArr4[i13], str, str2));
                }
                return zzfwtVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxw
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzyg) ((List) obj).get(0)).zza((zzyg) ((List) obj2).get(0));
            }
        });
        if (pairZzv4 != null) {
            zzyoVarArr[((Integer) pairZzv4.second).intValue()] = (zzyo) pairZzv4.first;
        }
        int i10 = 0;
        while (i10 < i3) {
            int iZzc = zzyrVar.zzc(i10);
            if (iZzc != i3 && iZzc != i && iZzc != i9 && iZzc != i7) {
                zzxd zzxdVarZzd = zzyrVar.zzd(i10);
                int[][] iArr4 = iArr[i10];
                int i11 = i4;
                int i12 = i11;
                zzbm zzbmVar = null;
                zzxz zzxzVar = null;
                while (i11 < zzxdVarZzd.zzb) {
                    zzbm zzbmVarZzb = zzxdVarZzd.zzb(i11);
                    int[] iArr5 = iArr4[i11];
                    zzxz zzxzVar2 = zzxzVar;
                    for (int i13 = i4; i13 < zzbmVarZzb.zza; i13++) {
                        if (zzlv.zza(iArr5[i13], zzybVar.zzR)) {
                            zzxz zzxzVar3 = new zzxz(zzbmVarZzb.zzb(i13), iArr5[i13]);
                            if (zzxzVar2 == null || zzxzVar3.compareTo(zzxzVar2) > 0) {
                                zzbmVar = zzbmVarZzb;
                                i12 = i13;
                                zzxzVar2 = zzxzVar3;
                            }
                        }
                    }
                    i11++;
                    zzxzVar = zzxzVar2;
                    i4 = 0;
                }
                zzyoVarArr[i10] = zzbmVar == null ? null : new zzyo(zzbmVar, new int[]{i12}, 0);
            }
            i10++;
            i3 = 2;
            i4 = 0;
            i9 = 3;
            i = 1;
            i7 = 4;
        }
        HashMap map = new HashMap();
        int i14 = 2;
        for (int i15 = 0; i15 < 2; i15++) {
            zzt(zzyrVar.zzd(i15), zzybVar, map);
        }
        zzt(zzyrVar.zze(), zzybVar, map);
        for (int i16 = 0; i16 < 2; i16++) {
            if (((zzbn) map.get(Integer.valueOf(zzyrVar.zzc(i16)))) != null) {
                throw null;
            }
        }
        int i17 = 0;
        while (i17 < i14) {
            zzxd zzxdVarZzd2 = zzyrVar.zzd(i17);
            if (zzybVar.zzf(i17, zzxdVarZzd2)) {
                if (zzybVar.zzd(i17, zzxdVarZzd2) != null) {
                    throw null;
                }
                zzyoVarArr[i17] = null;
            }
            i17++;
            i14 = 2;
        }
        int i18 = 0;
        for (int i19 = i14; i18 < i19; i19 = 2) {
            int iZzc2 = zzyrVar.zzc(i18);
            if (zzybVar.zze(i18) || zzybVar.zzE.contains(Integer.valueOf(iZzc2))) {
                zzyoVarArr[i18] = null;
            }
            i18++;
        }
        zzxj zzxjVar = this.zzh;
        zzzd zzzdVarZzq = zzq();
        zzfww zzfwwVarZzh = zzxk.zzh(zzyoVarArr);
        int i20 = 2;
        zzyp[] zzypVarArr = new zzyp[2];
        int i21 = 0;
        while (i21 < i20) {
            zzyo zzyoVar = zzyoVarArr[i21];
            if (zzyoVar == null || (length = (iArr3 = zzyoVar.zzb).length) == 0) {
                i2 = i21;
            } else {
                if (length == 1) {
                    zzypVarZza = new zzyq(zzyoVar.zza, iArr3[0], 0, 0, null);
                    i2 = i21;
                } else {
                    i2 = i21;
                    zzypVarZza = zzxjVar.zza(zzyoVar.zza, iArr3, 0, zzzdVarZzq, (zzfww) zzfwwVarZzh.get(i21));
                }
                zzypVarArr[i2] = zzypVarZza;
            }
            i21 = i2 + 1;
            i20 = 2;
        }
        zzly[] zzlyVarArr = new zzly[i20];
        for (int i22 = 0; i22 < i20; i22++) {
            zzlyVarArr[i22] = (zzybVar.zze(i22) || zzybVar.zzE.contains(Integer.valueOf(zzyrVar.zzc(i22))) || (zzyrVar.zzc(i22) != -2 && zzypVarArr[i22] == null)) ? null : zzly.zza;
        }
        boolean z3 = zzybVar.zzS;
        return Pair.create(zzlyVarArr, zzypVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final zzlw zze() {
        return this;
    }

    public final zzyb zzf() {
        zzyb zzybVar;
        synchronized (this.zzd) {
            zzybVar = this.zze;
        }
        return zzybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final void zzj() {
        zzyf zzyfVar;
        if (zzeu.zza >= 32 && (zzyfVar = this.zzf) != null) {
            zzyfVar.zza();
        }
        super.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final void zzk(zze zzeVar) {
        if (this.zzg.equals(zzeVar)) {
            return;
        }
        this.zzg = zzeVar;
        zzu();
    }

    public final void zzl(zzya zzyaVar) {
        boolean zEquals;
        zzyb zzybVar = new zzyb(zzyaVar);
        synchronized (this.zzd) {
            zEquals = this.zze.equals(zzybVar);
            this.zze = zzybVar;
        }
        if (zEquals) {
            return;
        }
        if (zzybVar.zzQ && this.zza == null) {
            zzdx.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
        zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzyv
    public final boolean zzn() {
        return true;
    }
}
