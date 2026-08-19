package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.List;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzakm implements zzaka {
    private static final byte[] zza = {0, 7, 8, Ascii.f393SI};
    private static final byte[] zzb = {0, 119, -120, -1};
    private static final byte[] zzc = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint zzd;
    private final Paint zze;
    private final Canvas zzf;
    private final zzakf zzg;
    private final zzake zzh;
    private final zzakl zzi;
    private Bitmap zzj;

    public zzakm(List list) {
        zzek zzekVar = new zzek((byte[]) list.get(0));
        int iZzq = zzekVar.zzq();
        int iZzq2 = zzekVar.zzq();
        Paint paint = new Paint();
        this.zzd = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.zze = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.zzf = new Canvas();
        this.zzg = new zzakf(719, 575, 0, 719, 0, 575);
        this.zzh = new zzake(0, zzg(), zzh(), zzi());
        this.zzi = new zzakl(iZzq, iZzq2);
    }

    private static int zzb(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static zzake zzc(zzej zzejVar, int i) {
        int iZzd;
        int iZzd2;
        int iZzd3;
        int iZzd4;
        int i2 = 8;
        int iZzd5 = zzejVar.zzd(8);
        zzejVar.zzn(8);
        int[] iArrZzg = zzg();
        int[] iArrZzh = zzh();
        int[] iArrZzi = zzi();
        int i3 = i - 2;
        while (i3 > 0) {
            int iZzd6 = zzejVar.zzd(i2);
            int iZzd7 = zzejVar.zzd(i2);
            int[] iArr = (iZzd7 & 128) != 0 ? iArrZzg : (iZzd7 & 64) != 0 ? iArrZzh : iArrZzi;
            if ((iZzd7 & 1) != 0) {
                iZzd3 = zzejVar.zzd(i2);
                iZzd4 = zzejVar.zzd(i2);
                iZzd = zzejVar.zzd(i2);
                iZzd2 = zzejVar.zzd(i2);
                i3 -= 6;
            } else {
                int iZzd8 = zzejVar.zzd(6) << 2;
                int iZzd9 = zzejVar.zzd(4) << 4;
                i3 -= 4;
                iZzd = zzejVar.zzd(4) << 4;
                iZzd2 = zzejVar.zzd(2) << 6;
                iZzd3 = iZzd8;
                iZzd4 = iZzd9;
            }
            if (iZzd3 == 0) {
                iZzd2 = 255;
            }
            if (iZzd3 == 0) {
                iZzd = 0;
            }
            if (iZzd3 == 0) {
                iZzd4 = 0;
            }
            double d = iZzd3;
            int i4 = zzeu.zza;
            double d2 = iZzd4 - 128;
            double d3 = iZzd - 128;
            iArr[iZzd6] = zzb((byte) (255 - (iZzd2 & 255)), Math.max(0, Math.min((int) (d + (1.402d * d2)), 255)), Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)), Math.max(0, Math.min((int) (d + (d3 * 1.772d)), 255)));
            iZzd5 = iZzd5;
            i2 = 8;
        }
        return new zzake(iZzd5, iArrZzg, iArrZzh, iArrZzi);
    }

    private static zzakg zzd(zzej zzejVar) {
        int iZzd = zzejVar.zzd(16);
        zzejVar.zzn(4);
        int iZzd2 = zzejVar.zzd(2);
        boolean zZzp = zzejVar.zzp();
        zzejVar.zzn(1);
        byte[] bArr = zzeu.zzc;
        byte[] bArr2 = zzeu.zzc;
        if (iZzd2 == 1) {
            zzejVar.zzn(zzejVar.zzd(8) * 16);
        } else if (iZzd2 == 0) {
            int iZzd3 = zzejVar.zzd(16);
            int iZzd4 = zzejVar.zzd(16);
            if (iZzd3 > 0) {
                bArr = new byte[iZzd3];
                zzejVar.zzi(bArr, 0, iZzd3);
            }
            if (iZzd4 > 0) {
                bArr2 = new byte[iZzd4];
                zzejVar.zzi(bArr2, 0, iZzd4);
            } else {
                bArr2 = bArr;
            }
        }
        return new zzakg(iZzd, zZzp, bArr, bArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01ef A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0228 A[LOOP:3: B:88:0x0172->B:119:0x0228, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0181  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zze(byte[] r24, int[] r25, int r26, int r27, int r28, android.graphics.Paint r29, android.graphics.Canvas r30) {
        /*
            Method dump skipped, instruction units count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakm.zze(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    private static byte[] zzf(int i, int i2, zzej zzejVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) zzejVar.zzd(i2);
        }
        return bArr;
    }

    private static int[] zzg() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] zzh() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            int i2 = i & 4;
            int i3 = i & 2;
            int i4 = i & 1;
            if (i < 8) {
                iArr[i] = zzb(255, 1 != i4 ? 0 : 255, i3 != 0 ? 255 : 0, i2 != 0 ? 255 : 0);
            } else {
                iArr[i] = zzb(255, 1 != i4 ? 0 : 127, i3 != 0 ? 127 : 0, i2 == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] zzi() {
        int i;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = zzb(63, 1 != (i2 & 1) ? 0 : 255, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                int i4 = Opcodes.TABLESWITCH;
                if (i3 == 0) {
                    int i5 = i2 & 16;
                    int i6 = i2 & 32;
                    int i7 = i2 & 2;
                    int i8 = i2 & 64;
                    int i9 = i2 & 4;
                    int i10 = 1 != (i2 & 1) ? 0 : 85;
                    int i11 = i5 != 0 ? 170 : 0;
                    int i12 = i7 != 0 ? 85 : 0;
                    int i13 = i6 != 0 ? 170 : 0;
                    i = i9 == 0 ? 0 : 85;
                    if (i8 == 0) {
                        i4 = 0;
                    }
                    iArr[i2] = zzb(255, i10 + i11, i12 + i13, i + i4);
                } else if (i3 == 8) {
                    int i14 = i2 & 16;
                    int i15 = i2 & 32;
                    int i16 = i2 & 2;
                    int i17 = i2 & 64;
                    int i18 = i2 & 4;
                    int i19 = 1 != (i2 & 1) ? 0 : 85;
                    int i20 = i14 != 0 ? 170 : 0;
                    int i21 = i16 != 0 ? 85 : 0;
                    int i22 = i15 != 0 ? 170 : 0;
                    i = i18 == 0 ? 0 : 85;
                    if (i17 == 0) {
                        i4 = 0;
                    }
                    iArr[i2] = zzb(127, i19 + i20, i21 + i22, i + i4);
                } else if (i3 == 128) {
                    iArr[i2] = zzb(255, (1 != (i2 & 1) ? 0 : 43) + 127 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + 127 + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = zzb(255, (1 != (i2 & 1) ? 0 : 43) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaka
    public final void zza(byte[] bArr, int i, int i2, zzajz zzajzVar, zzdk zzdkVar) {
        zzajs zzajsVar;
        char c;
        char c2;
        char c3;
        int i3;
        zzakl zzaklVar;
        zzakf zzakfVar;
        int i4;
        int i5;
        ArrayList arrayList;
        int i6;
        zzakj zzakjVar;
        int i7;
        int i8;
        zzakj zzakjVar2;
        int i9;
        int iZzd;
        int iZzd2;
        int iZzd3;
        int iZzd4;
        int i10;
        int iZzd5;
        zzej zzejVar = new zzej(bArr, i + i2);
        zzejVar.zzl(i);
        while (zzejVar.zza() >= 48 && zzejVar.zzd(8) == 15) {
            zzakl zzaklVar2 = this.zzi;
            int iZzd6 = zzejVar.zzd(8);
            int iZzd7 = zzejVar.zzd(16);
            int iZzd8 = zzejVar.zzd(16);
            int iZzb = zzejVar.zzb() + iZzd8;
            if (iZzd8 * 8 > zzejVar.zza()) {
                zzdx.zzf("DvbParser", "Data field length exceeds limit");
                zzejVar.zzn(zzejVar.zza());
            } else {
                switch (iZzd6) {
                    case 16:
                        if (iZzd7 == zzaklVar2.zza) {
                            zzakh zzakhVar = zzaklVar2.zzi;
                            int iZzd9 = zzejVar.zzd(8);
                            int iZzd10 = zzejVar.zzd(4);
                            int iZzd11 = zzejVar.zzd(2);
                            zzejVar.zzn(2);
                            SparseArray sparseArray = new SparseArray();
                            for (int i11 = iZzd8 - 2; i11 > 0; i11 -= 6) {
                                int iZzd12 = zzejVar.zzd(8);
                                zzejVar.zzn(8);
                                sparseArray.put(iZzd12, new zzaki(zzejVar.zzd(16), zzejVar.zzd(16)));
                            }
                            zzakh zzakhVar2 = new zzakh(iZzd9, iZzd10, iZzd11, sparseArray);
                            if (zzakhVar2.zzb != 0) {
                                zzaklVar2.zzi = zzakhVar2;
                                zzaklVar2.zzc.clear();
                                zzaklVar2.zzd.clear();
                                zzaklVar2.zze.clear();
                            } else if (zzakhVar != null) {
                                if (zzakhVar.zza != zzakhVar2.zza) {
                                    zzaklVar2.zzi = zzakhVar2;
                                }
                            }
                        }
                        break;
                    case 17:
                        zzakh zzakhVar3 = zzaklVar2.zzi;
                        if (iZzd7 == zzaklVar2.zza && zzakhVar3 != null) {
                            int iZzd13 = zzejVar.zzd(8);
                            zzejVar.zzn(4);
                            boolean zZzp = zzejVar.zzp();
                            zzejVar.zzn(3);
                            int iZzd14 = zzejVar.zzd(16);
                            int iZzd15 = zzejVar.zzd(16);
                            int iZzd16 = zzejVar.zzd(3);
                            int iZzd17 = zzejVar.zzd(3);
                            zzejVar.zzn(2);
                            int iZzd18 = zzejVar.zzd(8);
                            int iZzd19 = zzejVar.zzd(8);
                            int iZzd20 = zzejVar.zzd(4);
                            int iZzd21 = zzejVar.zzd(2);
                            zzejVar.zzn(2);
                            int i12 = iZzd8 - 10;
                            SparseArray sparseArray2 = new SparseArray();
                            while (i12 > 0) {
                                int iZzd22 = zzejVar.zzd(16);
                                int iZzd23 = zzejVar.zzd(2);
                                int iZzd24 = zzejVar.zzd(2);
                                int iZzd25 = zzejVar.zzd(12);
                                zzejVar.zzn(4);
                                int iZzd26 = zzejVar.zzd(12);
                                int i13 = i12 - 6;
                                if (iZzd23 == 1) {
                                    i12 -= 8;
                                    i9 = iZzd23;
                                    iZzd = zzejVar.zzd(8);
                                    iZzd2 = zzejVar.zzd(8);
                                } else if (iZzd23 == 2) {
                                    iZzd23 = 2;
                                    i12 -= 8;
                                    i9 = iZzd23;
                                    iZzd = zzejVar.zzd(8);
                                    iZzd2 = zzejVar.zzd(8);
                                } else {
                                    i9 = iZzd23;
                                    i12 = i13;
                                    iZzd = 0;
                                    iZzd2 = 0;
                                }
                                sparseArray2.put(iZzd22, new zzakk(i9, iZzd24, iZzd25, iZzd26, iZzd, iZzd2));
                            }
                            zzakj zzakjVar3 = new zzakj(iZzd13, zZzp, iZzd14, iZzd15, iZzd16, iZzd17, iZzd18, iZzd19, iZzd20, iZzd21, sparseArray2);
                            if (zzakhVar3.zzb == 0 && (zzakjVar2 = (zzakj) zzaklVar2.zzc.get(zzakjVar3.zza)) != null) {
                                int i14 = 0;
                                while (true) {
                                    SparseArray sparseArray3 = zzakjVar2.zzj;
                                    if (i14 < sparseArray3.size()) {
                                        zzakjVar3.zzj.put(sparseArray3.keyAt(i14), (zzakk) sparseArray3.valueAt(i14));
                                        i14++;
                                    }
                                }
                            }
                            zzaklVar2.zzc.put(zzakjVar3.zza, zzakjVar3);
                        }
                        break;
                    case 18:
                        if (iZzd7 == zzaklVar2.zza) {
                            zzake zzakeVarZzc = zzc(zzejVar, iZzd8);
                            zzaklVar2.zzd.put(zzakeVarZzc.zza, zzakeVarZzc);
                        } else if (iZzd7 == zzaklVar2.zzb) {
                            zzake zzakeVarZzc2 = zzc(zzejVar, iZzd8);
                            zzaklVar2.zzf.put(zzakeVarZzc2.zza, zzakeVarZzc2);
                        }
                        break;
                    case 19:
                        if (iZzd7 == zzaklVar2.zza) {
                            zzakg zzakgVarZzd = zzd(zzejVar);
                            zzaklVar2.zze.put(zzakgVarZzd.zza, zzakgVarZzd);
                        } else if (iZzd7 == zzaklVar2.zzb) {
                            zzakg zzakgVarZzd2 = zzd(zzejVar);
                            zzaklVar2.zzg.put(zzakgVarZzd2.zza, zzakgVarZzd2);
                        }
                        break;
                    case 20:
                        if (iZzd7 == zzaklVar2.zza) {
                            zzejVar.zzn(4);
                            boolean zZzp2 = zzejVar.zzp();
                            zzejVar.zzn(3);
                            int iZzd27 = zzejVar.zzd(16);
                            int iZzd28 = zzejVar.zzd(16);
                            if (zZzp2) {
                                int iZzd29 = zzejVar.zzd(16);
                                iZzd3 = zzejVar.zzd(16);
                                iZzd5 = zzejVar.zzd(16);
                                iZzd4 = zzejVar.zzd(16);
                                i10 = iZzd29;
                            } else {
                                iZzd3 = iZzd27;
                                iZzd4 = iZzd28;
                                i10 = 0;
                                iZzd5 = 0;
                            }
                            zzaklVar2.zzh = new zzakf(iZzd27, iZzd28, i10, iZzd3, iZzd5, iZzd4);
                        }
                        break;
                }
                zzejVar.zzo(iZzb - zzejVar.zzb());
            }
        }
        zzakl zzaklVar3 = this.zzi;
        zzakh zzakhVar4 = zzaklVar3.zzi;
        if (zzakhVar4 == null) {
            zzajsVar = new zzajs(zzfww.zzn(), -9223372036854775807L, -9223372036854775807L);
        } else {
            zzakf zzakfVar2 = zzaklVar3.zzh;
            if (zzakfVar2 == null) {
                zzakfVar2 = this.zzg;
            }
            Bitmap bitmap = this.zzj;
            if (bitmap == null || zzakfVar2.zza + 1 != bitmap.getWidth() || zzakfVar2.zzb + 1 != this.zzj.getHeight()) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(zzakfVar2.zza + 1, zzakfVar2.zzb + 1, Bitmap.Config.ARGB_8888);
                this.zzj = bitmapCreateBitmap;
                this.zzf.setBitmap(bitmapCreateBitmap);
            }
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray4 = zzakhVar4.zzc;
            int i15 = 0;
            while (i15 < sparseArray4.size()) {
                Canvas canvas = this.zzf;
                canvas.save();
                zzaki zzakiVar = (zzaki) sparseArray4.valueAt(i15);
                zzakj zzakjVar4 = (zzakj) zzaklVar3.zzc.get(sparseArray4.keyAt(i15));
                int i16 = zzakiVar.zza + zzakfVar2.zzc;
                int i17 = zzakiVar.zzb + zzakfVar2.zze;
                int i18 = zzakjVar4.zzc;
                int i19 = i16 + i18;
                int iMin = Math.min(i19, zzakfVar2.zzd);
                int i20 = zzakjVar4.zzd;
                int i21 = i17 + i20;
                canvas.clipRect(i16, i17, iMin, Math.min(i21, zzakfVar2.zzf));
                int i22 = zzakjVar4.zzf;
                zzake zzakeVar = (zzake) zzaklVar3.zzd.get(i22);
                if (zzakeVar == null && (zzakeVar = (zzake) zzaklVar3.zzf.get(i22)) == null) {
                    zzakeVar = this.zzh;
                }
                SparseArray sparseArray5 = zzakjVar4.zzj;
                SparseArray sparseArray6 = sparseArray4;
                int i23 = i19;
                int i24 = 0;
                while (i24 < sparseArray5.size()) {
                    int iKeyAt = sparseArray5.keyAt(i24);
                    SparseArray sparseArray7 = sparseArray5;
                    zzakk zzakkVar = (zzakk) sparseArray5.valueAt(i24);
                    int i25 = i18;
                    zzakg zzakgVar = (zzakg) zzaklVar3.zze.get(iKeyAt);
                    if (zzakgVar == null) {
                        zzakgVar = (zzakg) zzaklVar3.zzg.get(iKeyAt);
                    }
                    if (zzakgVar != null) {
                        Paint paint = zzakgVar.zzb ? null : this.zzd;
                        int i26 = zzakjVar4.zze;
                        zzaklVar = zzaklVar3;
                        int i27 = zzakkVar.zza + i16;
                        int i28 = zzakkVar.zzb + i17;
                        int i29 = i16;
                        int[] iArr = i26 == 3 ? zzakeVar.zzd : i26 == 2 ? zzakeVar.zzc : zzakeVar.zzb;
                        i5 = i15;
                        i7 = i23;
                        arrayList = arrayList2;
                        zzakfVar = zzakfVar2;
                        i8 = i25;
                        i6 = i29;
                        i4 = i20;
                        zzakjVar = zzakjVar4;
                        zze(zzakgVar.zzc, iArr, i26, i27, i28, paint, canvas);
                        zze(zzakgVar.zzd, iArr, i26, i27, i28 + 1, paint, canvas);
                    } else {
                        zzaklVar = zzaklVar3;
                        zzakfVar = zzakfVar2;
                        i4 = i20;
                        i5 = i15;
                        arrayList = arrayList2;
                        i6 = i16;
                        zzakjVar = zzakjVar4;
                        i7 = i23;
                        i8 = i25;
                    }
                    i24++;
                    i16 = i6;
                    zzakjVar4 = zzakjVar;
                    i23 = i7;
                    sparseArray5 = sparseArray7;
                    zzaklVar3 = zzaklVar;
                    i15 = i5;
                    arrayList2 = arrayList;
                    zzakfVar2 = zzakfVar;
                    i20 = i4;
                    i18 = i8;
                }
                zzakl zzaklVar4 = zzaklVar3;
                zzakf zzakfVar3 = zzakfVar2;
                int i30 = i20;
                int i31 = i15;
                ArrayList arrayList3 = arrayList2;
                int i32 = i18;
                int i33 = i16;
                zzakj zzakjVar5 = zzakjVar4;
                int i34 = i23;
                float f = i17;
                float f2 = i33;
                if (zzakjVar5.zzb) {
                    int i35 = zzakjVar5.zze;
                    if (i35 == 3) {
                        i3 = zzakeVar.zzd[zzakjVar5.zzg];
                        c3 = 2;
                    } else {
                        c3 = 2;
                        i3 = i35 == 2 ? zzakeVar.zzc[zzakjVar5.zzh] : zzakeVar.zzb[zzakjVar5.zzi];
                    }
                    Paint paint2 = this.zze;
                    paint2.setColor(i3);
                    float f3 = i21;
                    float f4 = i34;
                    c = c3;
                    c2 = 3;
                    canvas.drawRect(f2, f, f4, f3, paint2);
                } else {
                    c = 2;
                    c2 = 3;
                }
                zzcs zzcsVar = new zzcs();
                zzcsVar.zzc(Bitmap.createBitmap(this.zzj, i33, i17, i32, i30));
                zzakfVar2 = zzakfVar3;
                float f5 = zzakfVar2.zza;
                zzcsVar.zzh(f2 / f5);
                zzcsVar.zzi(0);
                float f6 = zzakfVar2.zzb;
                zzcsVar.zze(f / f6, 0);
                zzcsVar.zzf(0);
                zzcsVar.zzk(i32 / f5);
                zzcsVar.zzd(i30 / f6);
                arrayList3.add(zzcsVar.zzp());
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                canvas.restore();
                sparseArray4 = sparseArray6;
                arrayList2 = arrayList3;
                i15 = i31 + 1;
                zzaklVar3 = zzaklVar4;
            }
            zzajsVar = new zzajs(arrayList2, -9223372036854775807L, -9223372036854775807L);
        }
        zzdkVar.zza(zzajsVar);
    }
}
