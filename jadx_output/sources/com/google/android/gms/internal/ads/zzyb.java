package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.core.view.PointerIconCompat;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.p027ws.WebSocketProtocol;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyb extends zzbr {
    public static final zzyb zzF = new zzyb(new zzya());
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final boolean zzQ;
    public final boolean zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final boolean zzU;
    private final SparseArray zzV;
    private final SparseBooleanArray zzW;

    static {
        int i = zzeu.zza;
        Integer.toString(1000, 36);
        Integer.toString(1001, 36);
        Integer.toString(1002, 36);
        Integer.toString(PointerIconCompat.TYPE_HELP, 36);
        Integer.toString(PointerIconCompat.TYPE_WAIT, 36);
        Integer.toString(WebSocketProtocol.CLOSE_NO_STATUS_CODE, 36);
        Integer.toString(PointerIconCompat.TYPE_CELL, 36);
        Integer.toString(PointerIconCompat.TYPE_CROSSHAIR, 36);
        Integer.toString(PointerIconCompat.TYPE_TEXT, 36);
        Integer.toString(PointerIconCompat.TYPE_VERTICAL_TEXT, 36);
        Integer.toString(PointerIconCompat.TYPE_ALIAS, 36);
        Integer.toString(PointerIconCompat.TYPE_COPY, 36);
        Integer.toString(PointerIconCompat.TYPE_NO_DROP, 36);
        Integer.toString(PointerIconCompat.TYPE_ALL_SCROLL, 36);
        Integer.toString(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, 36);
        Integer.toString(PointerIconCompat.TYPE_VERTICAL_DOUBLE_ARROW, 36);
        Integer.toString(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, 36);
        Integer.toString(PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, 36);
        Integer.toString(PointerIconCompat.TYPE_ZOOM_IN, 36);
    }

    private zzyb(zzya zzyaVar) {
        super(zzyaVar);
        this.zzG = zzyaVar.zza;
        this.zzH = false;
        this.zzI = zzyaVar.zzb;
        this.zzJ = false;
        this.zzK = zzyaVar.zzc;
        this.zzL = false;
        this.zzM = false;
        this.zzN = false;
        this.zzO = false;
        this.zzP = zzyaVar.zzd;
        this.zzQ = zzyaVar.zze;
        this.zzR = zzyaVar.zzf;
        this.zzS = false;
        this.zzT = zzyaVar.zzg;
        this.zzU = false;
        this.zzV = zzyaVar.zzh;
        this.zzW = zzyaVar.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzbr
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzyb zzybVar = (zzyb) obj;
            if (super.equals(zzybVar) && this.zzG == zzybVar.zzG && this.zzI == zzybVar.zzI && this.zzK == zzybVar.zzK && this.zzP == zzybVar.zzP && this.zzQ == zzybVar.zzQ && this.zzR == zzybVar.zzR && this.zzT == zzybVar.zzT) {
                SparseBooleanArray sparseBooleanArray = this.zzW;
                SparseBooleanArray sparseBooleanArray2 = zzybVar.zzW;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            SparseArray sparseArray = this.zzV;
                            SparseArray sparseArray2 = zzybVar.zzV;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() == size2) {
                                for (int i2 = 0; i2 < size2; i2++) {
                                    int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                                    if (iIndexOfKey >= 0) {
                                        Map map = (Map) sparseArray.valueAt(i2);
                                        Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                zzxd zzxdVar = (zzxd) entry.getKey();
                                                if (!map2.containsKey(zzxdVar) || !Objects.equals(entry.getValue(), map2.get(zzxdVar))) {
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        } else {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                                break;
                            }
                            i++;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbr
    public final int hashCode() {
        return (((((((((((((((super.hashCode() + 31) * 31) + (this.zzG ? 1 : 0)) * 961) + (this.zzI ? 1 : 0)) * 961) + (this.zzK ? 1 : 0)) * 28629151) + (this.zzP ? 1 : 0)) * 31) + (this.zzQ ? 1 : 0)) * 31) + (this.zzR ? 1 : 0)) * 961) + (this.zzT ? 1 : 0)) * 31;
    }

    public final zzya zzc() {
        return new zzya(this, null);
    }

    @Deprecated
    public final zzyc zzd(int i, zzxd zzxdVar) {
        Map map = (Map) this.zzV.get(i);
        if (map != null) {
            return (zzyc) map.get(zzxdVar);
        }
        return null;
    }

    public final boolean zze(int i) {
        return this.zzW.get(i);
    }

    @Deprecated
    public final boolean zzf(int i, zzxd zzxdVar) {
        Map map = (Map) this.zzV.get(i);
        return map != null && map.containsKey(zzxdVar);
    }
}
