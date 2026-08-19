package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.core.view.PointerIconCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzka extends zzg implements zzit {
    public static final /* synthetic */ int zzd = 0;
    private final zzdf zzA;
    private int zzB;
    private int zzC;
    private boolean zzD;
    private zzma zzE;
    private zzis zzF;
    private zzbd zzG;
    private zzat zzH;
    private Object zzI;
    private Surface zzJ;
    private int zzK;
    private zzel zzL;
    private zze zzM;
    private float zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private int zzR;
    private zzat zzS;
    private zzlm zzT;
    private int zzU;
    private long zzV;
    private final zzje zzW;
    private zzwv zzX;
    final zzyw zzb;
    final zzbd zzc;
    private final zzdj zze = new zzdj(zzdg.zza);
    private final Context zzf;
    private final zzbh zzg;
    private final zzlu[] zzh;
    private final zzlu[] zzi;
    private final zzyv zzj;
    private final zzdq zzk;
    private final zzkn zzl;
    private final zzdw zzm;
    private final CopyOnWriteArraySet zzn;
    private final zzbj zzo;
    private final List zzp;
    private final boolean zzq;
    private final zzmg zzr;
    private final Looper zzs;
    private final zzzd zzt;
    private final zzdg zzu;
    private final zzjw zzv;
    private final zzjx zzw;
    private final zzme zzx;
    private final zzmf zzy;
    private final long zzz;

    static {
        zzaq.zzb("media3.exoplayer");
    }

    public zzka(zzir zzirVar, zzbh zzbhVar) {
        int i;
        zzir zzirVar2;
        try {
            zzdx.zze("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.6.0] [" + zzeu.zzb + "]");
            this.zzf = zzirVar.zza.getApplicationContext();
            this.zzr = (zzmg) zzirVar.zzh.apply(zzirVar.zzb);
            this.zzR = zzirVar.zzj;
            this.zzM = zzirVar.zzk;
            this.zzK = zzirVar.zzl;
            this.zzO = false;
            this.zzz = zzirVar.zzp;
            zzjz zzjzVar = null;
            zzjw zzjwVar = new zzjw(this, zzjzVar);
            this.zzv = zzjwVar;
            this.zzw = new zzjx(zzjzVar);
            Handler handler = new Handler(zzirVar.zzi);
            zzcdr zzcdrVar = ((zzik) zzirVar.zzc).zza;
            zzlu[] zzluVarArrZzac = zzcdt.zzac(zzcdrVar.zza, handler, zzjwVar, zzjwVar, zzjwVar, zzjwVar);
            this.zzh = zzluVarArrZzac;
            int length = zzluVarArrZzac.length;
            this.zzi = new zzlu[2];
            int i2 = 0;
            while (true) {
                zzlu[] zzluVarArr = this.zzi;
                int length2 = zzluVarArr.length;
                if (i2 >= 2) {
                    break;
                }
                zzlu zzluVar = this.zzh[i2];
                zzluVarArr[i2] = null;
                i2++;
            }
            zzyv zzyvVar = (zzyv) zzirVar.zze.zza();
            this.zzj = zzyvVar;
            zzir.zza(((zzil) zzirVar.zzd).zza);
            zzzh zzzhVarZzh = zzzh.zzh(((zzio) zzirVar.zzg).zza);
            this.zzt = zzzhVarZzh;
            this.zzq = zzirVar.zzm;
            this.zzE = zzirVar.zzn;
            Looper looper = zzirVar.zzi;
            this.zzs = looper;
            zzdg zzdgVar = zzirVar.zzb;
            this.zzu = zzdgVar;
            this.zzg = zzbhVar;
            zzdw zzdwVar = new zzdw(looper, zzdgVar, new zzdu(this) { // from class: com.google.android.gms.internal.ads.zzjd
                @Override // com.google.android.gms.internal.ads.zzdu
                public final void zza(Object obj, zzv zzvVar) {
                }
            });
            this.zzm = zzdwVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.zzn = copyOnWriteArraySet;
            this.zzp = new ArrayList();
            this.zzX = new zzwv(0);
            this.zzF = zzis.zza;
            int length3 = this.zzh.length;
            zzyw zzywVar = new zzyw(new zzly[2], new zzyp[2], zzbt.zza, null);
            this.zzb = zzywVar;
            this.zzo = new zzbj();
            zzbc zzbcVar = new zzbc();
            zzbcVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zzyvVar.zzn();
            zzbcVar.zzd(29, true);
            zzbcVar.zzd(23, false);
            zzbcVar.zzd(25, false);
            zzbcVar.zzd(33, false);
            zzbcVar.zzd(26, false);
            zzbcVar.zzd(34, false);
            zzbd zzbdVarZze = zzbcVar.zze();
            this.zzc = zzbdVarZze;
            zzbc zzbcVar2 = new zzbc();
            zzbcVar2.zzb(zzbdVarZze);
            zzbcVar2.zza(4);
            zzbcVar2.zza(10);
            this.zzG = zzbcVar2.zze();
            this.zzk = zzdgVar.zzd(looper, null);
            zzje zzjeVar = new zzje(this);
            this.zzW = zzjeVar;
            this.zzT = zzlm.zzh(zzywVar);
            this.zzr.zzT(zzbhVar, looper);
            final zzoz zzozVar = new zzoz(zzirVar.zzs);
            zzkn zzknVar = new zzkn(this.zzf, this.zzh, this.zzi, zzyvVar, zzywVar, (zzkr) zzirVar.zzf.zza(), zzzhVarZzh, 0, false, this.zzr, this.zzE, zzirVar.zzt, zzirVar.zzo, false, false, looper, zzdgVar, zzjeVar, zzozVar, null, this.zzF);
            this.zzl = zzknVar;
            Looper looperZze = zzknVar.zze();
            this.zzN = 1.0f;
            this.zzH = zzat.zza;
            this.zzS = zzat.zza;
            this.zzU = -1;
            int i3 = zzcv.zza;
            this.zzP = true;
            zzmg zzmgVar = this.zzr;
            if (zzmgVar == null) {
                throw null;
            }
            zzdwVar.zzb(zzmgVar);
            zzzhVarZzh.zzf(new Handler(looper), this.zzr);
            copyOnWriteArraySet.add(this.zzv);
            if (zzeu.zza >= 31) {
                final Context context = this.zzf;
                i = 1;
                zzirVar2 = zzirVar;
                final boolean z = zzirVar2.zzq;
                zzdgVar.zzd(zzknVar.zze(), null).zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjs
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzov zzovVarZzb = zzov.zzb(context);
                        if (zzovVarZzb == null) {
                            zzdx.zzf("ExoPlayerImpl", "MediaMetricsService unavailable.");
                            return;
                        }
                        if (z) {
                            this.zzz(zzovVarZzb);
                        }
                        zzozVar.zzb(zzovVarZzb.zza());
                    }
                });
            } else {
                i = 1;
                zzirVar2 = zzirVar;
            }
            zzdf zzdfVar = new zzdf(0, looperZze, looper, zzdgVar, new zzjf(this));
            this.zzA = zzdfVar;
            zzdfVar.zzb(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjg
                @Override // java.lang.Runnable
                public final void run() {
                    zzka.zzI(this.zza);
                }
            });
            new zzhs(zzirVar2.zza, looperZze, zzirVar2.zzi, this.zzv, zzdgVar);
            this.zzx = new zzme(zzirVar2.zza, looperZze, zzdgVar);
            this.zzy = new zzmf(zzirVar2.zza, looperZze, zzdgVar);
            int i4 = zzo.zza;
            zzcd zzcdVar = zzcd.zza;
            this.zzL = zzel.zza;
            zzknVar.zzq(this.zzM, false);
            zzac(i, 3, this.zzM);
            zzac(2, 4, Integer.valueOf(this.zzK));
            zzac(2, 5, 0);
            zzac(i, 9, Boolean.valueOf(this.zzO));
            zzac(2, 7, this.zzw);
            zzac(6, 8, this.zzw);
            zzac(-1, 16, Integer.valueOf(this.zzR));
        } finally {
            this.zze.zze();
        }
    }

    public static /* synthetic */ void zzI(zzka zzkaVar) {
        int i = zzeu.zza;
        zzkaVar.zzA.zzc(Integer.valueOf(zzcj.zzc(zzkaVar.zzf).generateAudioSessionId()));
    }

    public static /* synthetic */ void zzJ(zzka zzkaVar, zzkk zzkkVar) {
        boolean z;
        long j;
        int i = zzkaVar.zzB - zzkkVar.zzb;
        zzkaVar.zzB = i;
        boolean z2 = true;
        if (zzkkVar.zzc) {
            zzkaVar.zzC = zzkkVar.zzd;
            zzkaVar.zzD = true;
        }
        if (i == 0) {
            zzbl zzblVar = zzkkVar.zza.zza;
            if (!zzkaVar.zzT.zza.zzo() && zzblVar.zzo()) {
                zzkaVar.zzU = -1;
                zzkaVar.zzV = 0L;
            }
            if (!zzblVar.zzo()) {
                List listZzw = ((zzls) zzblVar).zzw();
                int size = listZzw.size();
                List list = zzkaVar.zzp;
                zzdc.zzf(size == list.size());
                for (int i2 = 0; i2 < listZzw.size(); i2++) {
                    ((zzjy) list.get(i2)).zzc((zzbl) listZzw.get(i2));
                }
            }
            long j2 = -9223372036854775807L;
            if (zzkaVar.zzD) {
                if (zzkkVar.zza.zzb.equals(zzkaVar.zzT.zzb) && zzkkVar.zza.zzd == zzkaVar.zzT.zzs) {
                    z2 = false;
                }
                if (z2) {
                    if (zzblVar.zzo() || zzkkVar.zza.zzb.zzb()) {
                        j = zzkkVar.zza.zzd;
                    } else {
                        zzlm zzlmVar = zzkkVar.zza;
                        zzuy zzuyVar = zzlmVar.zzb;
                        j = zzlmVar.zzd;
                        zzkaVar.zzV(zzblVar, zzuyVar, j);
                    }
                    z = z2;
                    j2 = j;
                } else {
                    z = z2;
                }
            } else {
                z = false;
            }
            zzkaVar.zzD = false;
            zzkaVar.zzaf(zzkkVar.zza, 1, z, zzkaVar.zzC, j2, -1, false);
        }
    }

    public static /* synthetic */ void zzK(zzka zzkaVar, int i, final int i2) {
        zzkaVar.zzah();
        Integer numValueOf = Integer.valueOf(i2);
        zzkaVar.zzac(1, 10, numValueOf);
        zzkaVar.zzac(2, 10, numValueOf);
        zzdt zzdtVar = new zzdt() { // from class: com.google.android.gms.internal.ads.zzjh
            @Override // com.google.android.gms.internal.ads.zzdt
            public final void zza(Object obj) {
                int i3 = zzka.zzd;
                ((zzbe) obj).zza(i2);
            }
        };
        zzdw zzdwVar = zzkaVar.zzm;
        zzdwVar.zzd(21, zzdtVar);
        zzdwVar.zzc();
    }

    static /* bridge */ /* synthetic */ void zzO(zzka zzkaVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzkaVar.zzad(surface);
        zzkaVar.zzJ = surface;
    }

    private final int zzR(zzlm zzlmVar) {
        zzbl zzblVar = zzlmVar.zza;
        return zzblVar.zzo() ? this.zzU : zzblVar.zzn(zzlmVar.zzb.zza, this.zzo).zzc;
    }

    private final long zzS(zzlm zzlmVar) {
        zzuy zzuyVar = zzlmVar.zzb;
        if (!zzuyVar.zzb()) {
            return zzeu.zzv(zzT(zzlmVar));
        }
        zzbl zzblVar = zzlmVar.zza;
        zzblVar.zzn(zzuyVar.zza, this.zzo);
        long j = zzlmVar.zzc;
        if (j != -9223372036854775807L) {
            return zzeu.zzv(0L) + zzeu.zzv(j);
        }
        long j2 = zzblVar.zze(zzR(zzlmVar), this.zza, 0L).zzl;
        return zzeu.zzv(0L);
    }

    private final long zzT(zzlm zzlmVar) {
        zzbl zzblVar = zzlmVar.zza;
        if (zzblVar.zzo()) {
            return zzeu.zzs(this.zzV);
        }
        boolean z = zzlmVar.zzp;
        long j = zzlmVar.zzs;
        zzuy zzuyVar = zzlmVar.zzb;
        if (zzuyVar.zzb()) {
            return j;
        }
        zzV(zzblVar, zzuyVar, j);
        return j;
    }

    private static long zzU(zzlm zzlmVar) {
        zzbk zzbkVar = new zzbk();
        zzbj zzbjVar = new zzbj();
        zzbl zzblVar = zzlmVar.zza;
        zzblVar.zzn(zzlmVar.zzb.zza, zzbjVar);
        long j = zzlmVar.zzc;
        if (j != -9223372036854775807L) {
            return j;
        }
        long j2 = zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L).zzl;
        return 0L;
    }

    private final long zzV(zzbl zzblVar, zzuy zzuyVar, long j) {
        zzblVar.zzn(zzuyVar.zza, this.zzo);
        return j;
    }

    private final Pair zzW(zzbl zzblVar, int i, long j) {
        if (zzblVar.zzo()) {
            this.zzU = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.zzV = j;
            return null;
        }
        if (i == -1 || i >= zzblVar.zzc()) {
            i = zzblVar.zzg(false);
            long j2 = zzblVar.zze(i, this.zza, 0L).zzl;
            j = zzeu.zzv(0L);
        }
        return zzblVar.zzl(this.zza, this.zzo, i, zzeu.zzs(j));
    }

    private static zzlm zzX(zzlm zzlmVar, int i) {
        zzlm zzlmVarZzf = zzlmVar.zzf(i);
        return (i == 1 || i == 4) ? zzlmVarZzf.zza(false) : zzlmVarZzf;
    }

    private final zzlm zzY(zzlm zzlmVar, zzbl zzblVar, Pair pair) {
        zzdc.zzd(zzblVar.zzo() || pair != null);
        zzbl zzblVar2 = zzlmVar.zza;
        long jZzS = zzS(zzlmVar);
        zzlm zzlmVarZzg = zzlmVar.zzg(zzblVar);
        if (zzblVar.zzo()) {
            zzuy zzuyVarZzi = zzlm.zzi();
            long jZzs = zzeu.zzs(this.zzV);
            zzlm zzlmVarZzb = zzlmVarZzg.zzc(zzuyVarZzi, jZzs, jZzs, jZzs, 0L, zzxd.zza, this.zzb, zzfww.zzn()).zzb(zzuyVarZzi);
            zzlmVarZzb.zzq = zzlmVarZzb.zzs;
            return zzlmVarZzb;
        }
        zzuy zzuyVar = zzlmVarZzg.zzb;
        Object obj = zzuyVar.zza;
        int i = zzeu.zza;
        boolean zEquals = obj.equals(pair.first);
        zzuy zzuyVar2 = !zEquals ? new zzuy(pair.first, -1L) : zzuyVar;
        long jLongValue = ((Long) pair.second).longValue();
        long jZzs2 = zzeu.zzs(jZzS);
        if (!zzblVar2.zzo()) {
            zzblVar2.zzn(obj, this.zzo);
        }
        if (!zEquals || jLongValue < jZzs2) {
            zzuy zzuyVar3 = zzuyVar2;
            zzdc.zzf(!zzuyVar3.zzb());
            zzlm zzlmVarZzb2 = zzlmVarZzg.zzc(zzuyVar3, jLongValue, jLongValue, jLongValue, 0L, !zEquals ? zzxd.zza : zzlmVarZzg.zzh, !zEquals ? this.zzb : zzlmVarZzg.zzi, !zEquals ? zzfww.zzn() : zzlmVarZzg.zzj).zzb(zzuyVar3);
            zzlmVarZzb2.zzq = jLongValue;
            return zzlmVarZzb2;
        }
        if (jLongValue != jZzs2) {
            zzuy zzuyVar4 = zzuyVar2;
            zzdc.zzf(!zzuyVar4.zzb());
            long jMax = Math.max(0L, zzlmVarZzg.zzr - (jLongValue - jZzs2));
            long j = zzlmVarZzg.zzq;
            if (zzlmVarZzg.zzk.equals(zzuyVar)) {
                j = jLongValue + jMax;
            }
            zzlm zzlmVarZzc = zzlmVarZzg.zzc(zzuyVar4, jLongValue, jLongValue, jLongValue, jMax, zzlmVarZzg.zzh, zzlmVarZzg.zzi, zzlmVarZzg.zzj);
            zzlmVarZzc.zzq = j;
            return zzlmVarZzc;
        }
        int iZza = zzblVar.zza(zzlmVarZzg.zzk.zza);
        if (iZza != -1) {
            zzbj zzbjVar = this.zzo;
            if (zzblVar.zzd(iZza, zzbjVar, false).zzc == zzblVar.zzn(zzuyVar2.zza, zzbjVar).zzc) {
                return zzlmVarZzg;
            }
        }
        Object obj2 = zzuyVar2.zza;
        zzbj zzbjVar2 = this.zzo;
        zzblVar.zzn(obj2, zzbjVar2);
        long jZzf = zzuyVar2.zzb() ? zzbjVar2.zzf(zzuyVar2.zzb, zzuyVar2.zzc) : zzbjVar2.zzd;
        zzlm zzlmVarZzb3 = zzlmVarZzg.zzc(zzuyVar2, zzlmVarZzg.zzs, zzlmVarZzg.zzs, zzlmVarZzg.zzd, jZzf - zzlmVarZzg.zzs, zzlmVarZzg.zzh, zzlmVarZzg.zzi, zzlmVarZzg.zzj).zzb(zzuyVar2);
        zzlmVarZzb3.zzq = jZzf;
        return zzlmVarZzb3;
    }

    private final zzlq zzZ(zzlp zzlpVar) {
        int iZzR = zzR(this.zzT);
        zzbl zzblVar = this.zzT.zza;
        if (iZzR == -1) {
            iZzR = 0;
        }
        zzdg zzdgVar = this.zzu;
        zzkn zzknVar = this.zzl;
        return new zzlq(zzknVar, zzlpVar, zzblVar, iZzR, zzdgVar, zzknVar.zze());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final /* synthetic */ void zzaa(final zzkk zzkkVar) {
        this.zzk.zzi(new Runnable() { // from class: com.google.android.gms.internal.ads.zzjj
            @Override // java.lang.Runnable
            public final void run() {
                zzka.zzJ(this.zza, zzkkVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzab(final int i, final int i2) {
        if (i == this.zzL.zzb() && i2 == this.zzL.zza()) {
            return;
        }
        this.zzL = new zzel(i, i2);
        zzdw zzdwVar = this.zzm;
        zzdwVar.zzd(24, new zzdt() { // from class: com.google.android.gms.internal.ads.zzja
            @Override // com.google.android.gms.internal.ads.zzdt
            public final void zza(Object obj) {
                int i3 = zzka.zzd;
                ((zzbe) obj).zzp(i, i2);
            }
        });
        zzdwVar.zzc();
        zzac(2, 14, new zzel(i, i2));
    }

    private final void zzac(int i, int i2, Object obj) {
        zzlu[] zzluVarArr = this.zzh;
        int length = zzluVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzlu zzluVar = zzluVarArr[i3];
            if (i == -1 || zzluVar.zzb() == i) {
                zzlq zzlqVarZzZ = zzZ(zzluVar);
                zzlqVarZzZ.zzf(i2);
                zzlqVarZzZ.zze(obj);
                zzlqVarZzZ.zzd();
            }
        }
        zzlu[] zzluVarArr2 = this.zzi;
        int length2 = zzluVarArr2.length;
        for (int i4 = 0; i4 < 2; i4++) {
            zzlu zzluVar2 = zzluVarArr2[i4];
            if (zzluVar2 != null && (i == -1 || zzluVar2.zzb() == i)) {
                zzlq zzlqVarZzZ2 = zzZ(zzluVar2);
                zzlqVarZzZ2.zzf(i2);
                zzlqVarZzZ2.zze(obj);
                zzlqVarZzZ2.zzd();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzad(Object obj) {
        Object obj2 = this.zzI;
        boolean z = false;
        if (obj2 != null && obj2 != obj) {
            z = true;
        }
        boolean zZzv = this.zzl.zzv(obj, z ? this.zzz : -9223372036854775807L);
        if (z) {
            Object obj3 = this.zzI;
            Surface surface = this.zzJ;
            if (obj3 == surface) {
                surface.release();
                this.zzJ = null;
            }
        }
        this.zzI = obj;
        if (zZzv) {
            return;
        }
        zzae(zzii.zzd(new zzko(3), PointerIconCompat.TYPE_HELP));
    }

    private final void zzae(zzii zziiVar) {
        zzlm zzlmVar = this.zzT;
        zzlm zzlmVarZzb = zzlmVar.zzb(zzlmVar.zzb);
        zzlmVarZzb.zzq = zzlmVarZzb.zzs;
        zzlmVarZzb.zzr = 0L;
        zzlm zzlmVarZzX = zzX(zzlmVarZzb, 1);
        if (zziiVar != null) {
            zzlmVarZzX = zzlmVarZzX.zze(zziiVar);
        }
        this.zzB++;
        this.zzl.zzt();
        zzaf(zzlmVarZzX, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0466 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0470 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x047b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x048b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0497 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x04ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0280  */
    /* JADX WARN: Type inference failed for: r4v11, types: [com.google.android.gms.internal.ads.zzbl] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzaf(final com.google.android.gms.internal.ads.zzlm r44, final int r45, boolean r46, int r47, long r48, int r50, boolean r51) {
        /*
            Method dump skipped, instruction units count: 1260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzka.zzaf(com.google.android.gms.internal.ads.zzlm, int, boolean, int, long, int, boolean):void");
    }

    private final void zzag() {
        int iZzg = zzg();
        if (iZzg != 2 && iZzg != 3) {
            this.zzx.zza(false);
            this.zzy.zza(false);
        } else {
            zzah();
            boolean z = this.zzT.zzp;
            this.zzx.zza(zzv());
            this.zzy.zza(zzv());
        }
    }

    private final void zzah() {
        this.zze.zzb();
        Looper looper = this.zzs;
        if (Thread.currentThread() != looper.getThread()) {
            Object[] objArr = {Thread.currentThread().getName(), looper.getThread().getName()};
            int i = zzeu.zza;
            String str = String.format(Locale.US, "Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", objArr);
            if (this.zzP) {
                throw new IllegalStateException(str);
            }
            zzdx.zzg("ExoPlayerImpl", str, this.zzQ ? null : new IllegalStateException());
            this.zzQ = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzit
    public final void zzA() {
        zzdx.zze("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.6.0] [" + zzeu.zzb + "] [" + zzaq.zza() + "]");
        zzah();
        this.zzx.zza(false);
        this.zzy.zza(false);
        if (!this.zzl.zzu()) {
            zzdw zzdwVar = this.zzm;
            zzdwVar.zzd(10, new zzdt() { // from class: com.google.android.gms.internal.ads.zzjb
                @Override // com.google.android.gms.internal.ads.zzdt
                public final void zza(Object obj) {
                    int i = zzka.zzd;
                    ((zzbe) obj).zzk(zzii.zzd(new zzko(1), PointerIconCompat.TYPE_HELP));
                }
            });
            zzdwVar.zzc();
        }
        this.zzm.zze();
        this.zzk.zzf(null);
        zzzd zzzdVar = this.zzt;
        zzmg zzmgVar = this.zzr;
        zzzdVar.zzg(zzmgVar);
        boolean z = this.zzT.zzp;
        zzlm zzlmVarZzX = zzX(this.zzT, 1);
        this.zzT = zzlmVarZzX;
        zzlm zzlmVarZzb = zzlmVarZzX.zzb(zzlmVarZzX.zzb);
        this.zzT = zzlmVarZzb;
        zzlmVarZzb.zzq = zzlmVarZzb.zzs;
        this.zzT.zzr = 0L;
        zzmgVar.zzR();
        Surface surface = this.zzJ;
        if (surface != null) {
            surface.release();
            this.zzJ = null;
        }
        int i = zzcv.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzit
    public final void zzB(zzmj zzmjVar) {
        zzah();
        this.zzr.zzS(zzmjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzit
    public final void zzC(zzva zzvaVar) {
        zzah();
        List listSingletonList = Collections.singletonList(zzvaVar);
        zzah();
        zzah();
        zzR(this.zzT);
        zzl();
        this.zzB++;
        List list = this.zzp;
        if (!list.isEmpty()) {
            int size = list.size();
            for (int i = size - 1; i >= 0; i--) {
                list.remove(i);
            }
            this.zzX = this.zzX.zzh(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < listSingletonList.size(); i2++) {
            zzlj zzljVar = new zzlj((zzva) listSingletonList.get(i2), this.zzq);
            arrayList.add(zzljVar);
            list.add(i2, new zzjy(zzljVar.zzb, zzljVar.zza));
        }
        this.zzX = this.zzX.zzg(0, arrayList.size());
        zzls zzlsVar = new zzls(list, this.zzX);
        if (!zzlsVar.zzo() && zzlsVar.zzc() < 0) {
            throw new zzaa(zzlsVar, -1, -9223372036854775807L);
        }
        int iZzg = zzlsVar.zzg(false);
        zzlm zzlmVarZzY = zzY(this.zzT, zzlsVar, zzW(zzlsVar, iZzg, -9223372036854775807L));
        int i3 = zzlmVarZzY.zze;
        if (iZzg != -1 && i3 != 1) {
            i3 = 4;
            if (!zzlsVar.zzo() && iZzg < zzlsVar.zzc()) {
                i3 = 2;
            }
        }
        zzlm zzlmVarZzX = zzX(zzlmVarZzY, i3);
        this.zzl.zzw(arrayList, iZzg, zzeu.zzs(-9223372036854775807L), this.zzX);
        zzaf(zzlmVarZzX, 0, (this.zzT.zzb.zza.equals(zzlmVarZzX.zzb.zza) || this.zzT.zza.zzo()) ? false : true, 4, zzT(zzlmVarZzX), -1, false);
    }

    public final zzii zzE() {
        zzah();
        return this.zzT.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzg
    protected final void zzb(int i, long j, int i2, boolean z) {
        zzah();
        if (i == -1) {
            return;
        }
        zzdc.zzd(i >= 0);
        zzbl zzblVar = this.zzT.zza;
        if (zzblVar.zzo() || i < zzblVar.zzc()) {
            this.zzr.zzv();
            this.zzB++;
            if (zzx()) {
                zzdx.zzf("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzkk zzkkVar = new zzkk(this.zzT);
                zzkkVar.zza(1);
                this.zzW.zza.zzaa(zzkkVar);
                return;
            }
            zzlm zzlmVarZzX = this.zzT;
            int i3 = zzlmVarZzX.zze;
            if (i3 == 3 || (i3 == 4 && !zzblVar.zzo())) {
                zzlmVarZzX = zzX(this.zzT, 2);
            }
            int iZze = zze();
            zzlm zzlmVarZzY = zzY(zzlmVarZzX, zzblVar, zzW(zzblVar, i, j));
            this.zzl.zzo(zzblVar, i, zzeu.zzs(j));
            zzaf(zzlmVarZzY, 0, true, 1, zzT(zzlmVarZzY), iZze, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzc() {
        zzah();
        if (zzx()) {
            return this.zzT.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzd() {
        zzah();
        if (zzx()) {
            return this.zzT.zzb.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zze() {
        zzah();
        int iZzR = zzR(this.zzT);
        if (iZzR == -1) {
            return 0;
        }
        return iZzR;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzf() {
        zzah();
        if (this.zzT.zza.zzo()) {
            return 0;
        }
        zzlm zzlmVar = this.zzT;
        return zzlmVar.zza.zza(zzlmVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzg() {
        zzah();
        return this.zzT.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzh() {
        zzah();
        return this.zzT.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final int zzi() {
        zzah();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzj() {
        zzah();
        if (zzx()) {
            zzlm zzlmVar = this.zzT;
            return zzlmVar.zzk.equals(zzlmVar.zzb) ? zzeu.zzv(this.zzT.zzq) : zzm();
        }
        zzah();
        if (this.zzT.zza.zzo()) {
            return this.zzV;
        }
        zzlm zzlmVar2 = this.zzT;
        long j = 0;
        if (zzlmVar2.zzk.zzd != zzlmVar2.zzb.zzd) {
            return zzeu.zzv(zzlmVar2.zza.zze(zze(), this.zza, 0L).zzm);
        }
        long j2 = zzlmVar2.zzq;
        if (this.zzT.zzk.zzb()) {
            zzlm zzlmVar3 = this.zzT;
            zzlmVar3.zza.zzn(zzlmVar3.zzk.zza, this.zzo).zzg(this.zzT.zzk.zzb);
        } else {
            j = j2;
        }
        zzlm zzlmVar4 = this.zzT;
        zzV(zzlmVar4.zza, zzlmVar4.zzk, j);
        return zzeu.zzv(j);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzk() {
        zzah();
        return zzS(this.zzT);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzl() {
        zzah();
        return zzeu.zzv(zzT(this.zzT));
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzm() {
        zzah();
        if (!zzx()) {
            zzbl zzblVarZzo = zzo();
            if (zzblVarZzo.zzo()) {
                return -9223372036854775807L;
            }
            return zzeu.zzv(zzblVarZzo.zze(zze(), this.zza, 0L).zzm);
        }
        zzlm zzlmVar = this.zzT;
        zzuy zzuyVar = zzlmVar.zzb;
        zzbl zzblVar = zzlmVar.zza;
        Object obj = zzuyVar.zza;
        zzbj zzbjVar = this.zzo;
        zzblVar.zzn(obj, zzbjVar);
        return zzeu.zzv(zzbjVar.zzf(zzuyVar.zzb, zzuyVar.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final long zzn() {
        zzah();
        return zzeu.zzv(this.zzT.zzr);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final zzbl zzo() {
        zzah();
        return this.zzT.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final zzbt zzp() {
        zzah();
        return this.zzT.zzi.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzq() {
        zzah();
        zzlm zzlmVar = this.zzT;
        if (zzlmVar.zze != 1) {
            return;
        }
        zzlm zzlmVarZze = zzlmVar.zze(null);
        zzlm zzlmVarZzX = zzX(zzlmVarZze, true != zzlmVarZze.zza.zzo() ? 2 : 4);
        this.zzB++;
        this.zzl.zzn();
        zzaf(zzlmVarZzX, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzr(boolean z) {
        zzah();
        zzlm zzlmVar = this.zzT;
        int i = zzlmVar.zzn;
        int i2 = 0;
        if (i == 1) {
            if (z) {
                i = 1;
            } else {
                i = 1;
                i2 = 1;
            }
        }
        if (zzlmVar.zzl == z && i == i2 && zzlmVar.zzm == 1) {
            return;
        }
        this.zzB++;
        boolean z2 = zzlmVar.zzp;
        zzlm zzlmVarZzd = zzlmVar.zzd(z, 1, i2);
        this.zzl.zzr(z, 1, i2);
        zzaf(zzlmVarZzd, 0, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzs(Surface surface) {
        zzah();
        zzad(surface);
        int i = surface == null ? 0 : -1;
        zzab(i, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzt(float f) {
        zzah();
        int i = zzeu.zza;
        final float fMax = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.zzN == fMax) {
            return;
        }
        this.zzN = fMax;
        this.zzl.zzs(fMax);
        zzdw zzdwVar = this.zzm;
        zzdwVar.zzd(22, new zzdt() { // from class: com.google.android.gms.internal.ads.zziz
            @Override // com.google.android.gms.internal.ads.zzdt
            public final void zza(Object obj) {
                int i2 = zzka.zzd;
                ((zzbe) obj).zzt(fMax);
            }
        });
        zzdwVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final void zzu() {
        zzah();
        zzae(null);
        int i = zzcv.zza;
        zzfww zzfwwVarZzn = zzfww.zzn();
        long j = this.zzT.zzs;
        zzfww.zzl(zzfwwVarZzn);
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzv() {
        zzah();
        return this.zzT.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzw() {
        zzah();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    public final boolean zzx() {
        zzah();
        return this.zzT.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzit
    public final int zzy() {
        zzah();
        int length = this.zzh.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzit
    public final void zzz(zzmj zzmjVar) {
        this.zzr.zzu(zzmjVar);
    }
}
