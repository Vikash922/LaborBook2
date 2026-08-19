package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzajq extends zzajo {
    private zzajp zza;
    private int zzb;
    private boolean zzc;
    private zzaen zzd;
    private zzael zze;

    zzajq() {
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    protected final long zza(zzek zzekVar) {
        if ((zzekVar.zzN()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzekVar.zzN()[0];
        zzajp zzajpVar = this.zza;
        zzdc.zzb(zzajpVar);
        int i = !zzajpVar.zzd[(b >> 1) & (255 >>> (8 - zzajpVar.zze))].zza ? zzajpVar.zza.zze : zzajpVar.zza.zzf;
        int i2 = this.zzc ? (this.zzb + i) / 4 : 0;
        if (zzekVar.zzb() < zzekVar.zzd() + 4) {
            byte[] bArrCopyOf = Arrays.copyOf(zzekVar.zzN(), zzekVar.zzd() + 4);
            zzekVar.zzJ(bArrCopyOf, bArrCopyOf.length);
        } else {
            zzekVar.zzK(zzekVar.zzd() + 4);
        }
        long j = i2;
        byte[] bArrZzN = zzekVar.zzN();
        bArrZzN[zzekVar.zzd() - 4] = (byte) (j & 255);
        bArrZzN[zzekVar.zzd() - 3] = (byte) ((j >>> 8) & 255);
        bArrZzN[zzekVar.zzd() - 2] = (byte) ((j >>> 16) & 255);
        bArrZzN[zzekVar.zzd() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    protected final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    protected final void zzi(long j) {
        super.zzi(j);
        this.zzc = j != 0;
        zzaen zzaenVar = this.zzd;
        this.zzb = zzaenVar != null ? zzaenVar.zze : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzajo
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    protected final boolean zzc(zzek zzekVar, long j, zzajl zzajlVar) throws IOException {
        zzajp zzajpVar;
        int i;
        int iZzb;
        int i2;
        int i3;
        zzaen zzaenVar;
        long jFloor;
        if (this.zza != null) {
            zzajlVar.zza.getClass();
            return false;
        }
        zzaen zzaenVar2 = this.zzd;
        int i4 = 4;
        if (zzaenVar2 == null) {
            zzaeo.zzd(1, zzekVar, false);
            int iZzj = zzekVar.zzj();
            int iZzm = zzekVar.zzm();
            int iZzj2 = zzekVar.zzj();
            int iZzi = zzekVar.zzi();
            int i5 = iZzi <= 0 ? -1 : iZzi;
            int iZzi2 = zzekVar.zzi();
            int i6 = iZzi2 <= 0 ? -1 : iZzi2;
            int iZzi3 = zzekVar.zzi();
            int i7 = iZzi3 <= 0 ? -1 : iZzi3;
            int iZzm2 = zzekVar.zzm();
            this.zzd = new zzaen(iZzj, iZzm, iZzj2, i5, i6, i7, (int) Math.pow(2.0d, iZzm2 & 15), (int) Math.pow(2.0d, (iZzm2 & 240) >> 4), 1 == (zzekVar.zzm() & 1), Arrays.copyOf(zzekVar.zzN(), zzekVar.zzd()));
        } else {
            zzael zzaelVar = this.zze;
            if (zzaelVar == null) {
                this.zze = zzaeo.zzc(zzekVar, true, true);
            } else {
                byte[] bArr = new byte[zzekVar.zzd()];
                System.arraycopy(zzekVar.zzN(), 0, bArr, 0, zzekVar.zzd());
                int i8 = zzaenVar2.zza;
                int i9 = 5;
                zzaeo.zzd(5, zzekVar, false);
                int iZzm3 = zzekVar.zzm() + 1;
                zzaek zzaekVar = new zzaek(zzekVar.zzN());
                zzaekVar.zzc(zzekVar.zzc() * 8);
                int i10 = 0;
                while (true) {
                    int i11 = 2;
                    int i12 = 16;
                    if (i10 >= iZzm3) {
                        zzaen zzaenVar3 = zzaenVar2;
                        int i13 = 6;
                        int iZzb2 = zzaekVar.zzb(6) + 1;
                        for (int i14 = 0; i14 < iZzb2; i14++) {
                            if (zzaekVar.zzb(16) != 0) {
                                throw zzaz.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i15 = 1;
                        int iZzb3 = zzaekVar.zzb(6) + 1;
                        int i16 = 0;
                        while (true) {
                            int i17 = 3;
                            if (i16 < iZzb3) {
                                int iZzb4 = zzaekVar.zzb(i12);
                                if (iZzb4 == 0) {
                                    i2 = iZzb3;
                                    int i18 = 8;
                                    zzaekVar.zzc(8);
                                    zzaekVar.zzc(16);
                                    zzaekVar.zzc(16);
                                    zzaekVar.zzc(6);
                                    zzaekVar.zzc(8);
                                    int iZzb5 = zzaekVar.zzb(4) + 1;
                                    int i19 = 0;
                                    while (i19 < iZzb5) {
                                        zzaekVar.zzc(i18);
                                        i19++;
                                        i18 = 8;
                                    }
                                } else {
                                    if (iZzb4 != i15) {
                                        throw zzaz.zza("floor type greater than 1 not decodable: " + iZzb4, null);
                                    }
                                    int iZzb6 = zzaekVar.zzb(i9);
                                    int[] iArr = new int[iZzb6];
                                    int i20 = -1;
                                    for (int i21 = 0; i21 < iZzb6; i21++) {
                                        int iZzb7 = zzaekVar.zzb(4);
                                        iArr[i21] = iZzb7;
                                        if (iZzb7 > i20) {
                                            i20 = iZzb7;
                                        }
                                    }
                                    int i22 = i20 + 1;
                                    int[] iArr2 = new int[i22];
                                    int i23 = 0;
                                    while (i23 < i22) {
                                        iArr2[i23] = zzaekVar.zzb(i17) + 1;
                                        int iZzb8 = zzaekVar.zzb(i11);
                                        if (iZzb8 > 0) {
                                            i3 = 8;
                                            zzaekVar.zzc(8);
                                        } else {
                                            i3 = 8;
                                        }
                                        int i24 = iZzb3;
                                        int i25 = 0;
                                        for (int i26 = 1; i25 < (i26 << iZzb8); i26 = 1) {
                                            zzaekVar.zzc(i3);
                                            i25++;
                                            i3 = 8;
                                        }
                                        i23++;
                                        iZzb3 = i24;
                                        i11 = 2;
                                        i17 = 3;
                                    }
                                    i2 = iZzb3;
                                    zzaekVar.zzc(i11);
                                    int iZzb9 = zzaekVar.zzb(4);
                                    int i27 = 0;
                                    int i28 = 0;
                                    for (int i29 = 0; i29 < iZzb6; i29++) {
                                        i27 += iArr2[iArr[i29]];
                                        while (i28 < i27) {
                                            zzaekVar.zzc(iZzb9);
                                            i28++;
                                        }
                                    }
                                }
                                i16++;
                                iZzb3 = i2;
                                i13 = 6;
                                i11 = 2;
                                i12 = 16;
                                i15 = 1;
                                i9 = 5;
                            } else {
                                int i30 = 1;
                                int iZzb10 = zzaekVar.zzb(i13) + 1;
                                int i31 = 0;
                                while (i31 < iZzb10) {
                                    if (zzaekVar.zzb(16) > 2) {
                                        throw zzaz.zza("residueType greater than 2 is not decodable", null);
                                    }
                                    zzaekVar.zzc(24);
                                    zzaekVar.zzc(24);
                                    zzaekVar.zzc(24);
                                    int iZzb11 = zzaekVar.zzb(i13) + i30;
                                    int i32 = 8;
                                    zzaekVar.zzc(8);
                                    int[] iArr3 = new int[iZzb11];
                                    for (int i33 = 0; i33 < iZzb11; i33++) {
                                        iArr3[i33] = ((zzaekVar.zzd() ? zzaekVar.zzb(5) : 0) * 8) + zzaekVar.zzb(3);
                                    }
                                    int i34 = 0;
                                    while (i34 < iZzb11) {
                                        int i35 = 0;
                                        while (i35 < i32) {
                                            if ((iArr3[i34] & (1 << i35)) != 0) {
                                                zzaekVar.zzc(i32);
                                            }
                                            i35++;
                                            i32 = 8;
                                        }
                                        i34++;
                                        i32 = 8;
                                    }
                                    i31++;
                                    i13 = 6;
                                    i30 = 1;
                                }
                                int iZzb12 = zzaekVar.zzb(i13) + 1;
                                for (int i36 = 0; i36 < iZzb12; i36++) {
                                    int iZzb13 = zzaekVar.zzb(16);
                                    if (iZzb13 != 0) {
                                        zzdx.zzc("VorbisUtil", "mapping type other than 0 not supported: " + iZzb13);
                                    } else {
                                        if (zzaekVar.zzd()) {
                                            i = 1;
                                            iZzb = zzaekVar.zzb(4) + 1;
                                        } else {
                                            i = 1;
                                            iZzb = 1;
                                        }
                                        if (zzaekVar.zzd()) {
                                            int iZzb14 = zzaekVar.zzb(8) + i;
                                            for (int i37 = 0; i37 < iZzb14; i37++) {
                                                int i38 = i8 - 1;
                                                zzaekVar.zzc(zzaeo.zza(i38));
                                                zzaekVar.zzc(zzaeo.zza(i38));
                                            }
                                        }
                                        if (zzaekVar.zzb(2) != 0) {
                                            throw zzaz.zza("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                        if (iZzb > 1) {
                                            for (int i39 = 0; i39 < i8; i39++) {
                                                zzaekVar.zzc(4);
                                            }
                                        }
                                        for (int i40 = 0; i40 < iZzb; i40++) {
                                            zzaekVar.zzc(8);
                                            zzaekVar.zzc(8);
                                            zzaekVar.zzc(8);
                                        }
                                    }
                                }
                                int iZzb15 = zzaekVar.zzb(6);
                                int i41 = iZzb15 + 1;
                                zzaem[] zzaemVarArr = new zzaem[i41];
                                for (int i42 = 0; i42 < i41; i42++) {
                                    zzaemVarArr[i42] = new zzaem(zzaekVar.zzd(), zzaekVar.zzb(16), zzaekVar.zzb(16), zzaekVar.zzb(8));
                                }
                                if (!zzaekVar.zzd()) {
                                    throw zzaz.zza("framing bit after modes not set as expected", null);
                                }
                                zzajpVar = new zzajp(zzaenVar3, zzaelVar, bArr, zzaemVarArr, zzaeo.zza(iZzb15));
                            }
                        }
                    } else {
                        if (zzaekVar.zzb(24) != 5653314) {
                            throw zzaz.zza("expected code book to start with [0x56, 0x43, 0x42] at " + zzaekVar.zza(), null);
                        }
                        int iZzb16 = zzaekVar.zzb(16);
                        int iZzb17 = zzaekVar.zzb(24);
                        if (zzaekVar.zzd()) {
                            zzaekVar.zzc(5);
                            for (int iZzb18 = 0; iZzb18 < iZzb17; iZzb18 += zzaekVar.zzb(zzaeo.zza(iZzb17 - iZzb18))) {
                            }
                        } else {
                            boolean zZzd = zzaekVar.zzd();
                            for (int i43 = 0; i43 < iZzb17; i43++) {
                                if (!zZzd) {
                                    zzaekVar.zzc(5);
                                } else if (zzaekVar.zzd()) {
                                    zzaekVar.zzc(5);
                                }
                            }
                        }
                        int iZzb19 = zzaekVar.zzb(i4);
                        if (iZzb19 > 2) {
                            throw zzaz.zza("lookup type greater than 2 not decodable: " + iZzb19, null);
                        }
                        if (iZzb19 != 1) {
                            if (iZzb19 != 2) {
                                zzaenVar = zzaenVar2;
                            }
                            i10++;
                            zzaenVar2 = zzaenVar;
                            i4 = 4;
                        } else {
                            i11 = iZzb19;
                        }
                        zzaekVar.zzc(32);
                        zzaekVar.zzc(32);
                        int iZzb20 = zzaekVar.zzb(i4) + 1;
                        zzaekVar.zzc(1);
                        if (i11 != 1) {
                            zzaenVar = zzaenVar2;
                            jFloor = ((long) iZzb16) * ((long) iZzb17);
                        } else if (iZzb16 != 0) {
                            zzaenVar = zzaenVar2;
                            jFloor = (long) Math.floor(Math.pow(iZzb17, 1.0d / ((double) iZzb16)));
                        } else {
                            zzaenVar = zzaenVar2;
                            jFloor = 0;
                        }
                        zzaekVar.zzc((int) (jFloor * ((long) iZzb20)));
                        i10++;
                        zzaenVar2 = zzaenVar;
                        i4 = 4;
                    }
                }
            }
        }
        zzajpVar = null;
        this.zza = zzajpVar;
        if (zzajpVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzaen zzaenVar4 = zzajpVar.zza;
        arrayList.add(zzaenVar4.zzg);
        arrayList.add(zzajpVar.zzc);
        zzav zzavVarZzb = zzaeo.zzb(zzfww.zzm(zzajpVar.zzb.zza));
        zzx zzxVar = new zzx();
        zzxVar.zzE("audio/ogg");
        zzxVar.zzad("audio/vorbis");
        zzxVar.zzA(zzaenVar4.zzd);
        zzxVar.zzY(zzaenVar4.zzc);
        zzxVar.zzB(zzaenVar4.zza);
        zzxVar.zzae(zzaenVar4.zzb);
        zzxVar.zzP(arrayList);
        zzxVar.zzW(zzavVarZzb);
        zzajlVar.zza = zzxVar.zzaj();
        return true;
    }
}
