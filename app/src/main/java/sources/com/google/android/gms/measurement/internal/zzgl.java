package com.google.android.gms.measurement.internal;

import androidx.exifinterface.media.ExifInterface;
import com.itextpdf.barcodes.Barcode128;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgl implements Runnable {
    private final /* synthetic */ int zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ Object zzc;
    private final /* synthetic */ Object zzd;
    private final /* synthetic */ Object zze;
    private final /* synthetic */ zzgi zzf;

    zzgl(zzgi zzgiVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
        this.zzf = zzgiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgu zzguVarZzn = this.zzf.zzu.zzn();
        if (!zzguVarZzn.zzaf()) {
            this.zzf.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.zzf.zza == 0) {
            if (this.zzf.zze().zzab()) {
                this.zzf.zza = 'C';
            } else {
                this.zzf.zza = Barcode128.CODE_AB_TO_C;
            }
        }
        if (this.zzf.zzb < 0) {
            this.zzf.zzb = 102001L;
        }
        String strSubstring = ExifInterface.GPS_MEASUREMENT_2D + "01VDIWEA?".charAt(this.zza) + this.zzf.zza + this.zzf.zzb + ":" + zzgi.zza(true, this.zzb, this.zzc, this.zzd, this.zze);
        if (strSubstring.length() > 1024) {
            strSubstring = this.zzb.substring(0, 1024);
        }
        if (zzguVarZzn.zzb != null) {
            zzguVarZzn.zzb.zza(strSubstring, 1L);
        }
    }
}
