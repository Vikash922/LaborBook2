package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.amplitude.android.TrackingOptions;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeti implements zzesu {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final boolean zze;
    public final int zzf;

    public zzeti(String str, int i, int i2, int i3, boolean z, int i4) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = z;
        this.zzf = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzesu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcue) obj).zza;
        zzfcd.zzf(bundle, TrackingOptions.AMP_TRACKING_OPTION_CARRIER, this.zza, !TextUtils.isEmpty(r0));
        int i = this.zzb;
        zzfcd.zze(bundle, "cnt", i, i != -2);
        bundle.putInt("gnt", this.zzc);
        bundle.putInt(CommonCssConstants.f3303PT, this.zzd);
        Bundle bundleZza = zzfcd.zza(bundle, DeviceRequestsHelper.DEVICE_INFO_DEVICE);
        bundle.putBundle(DeviceRequestsHelper.DEVICE_INFO_DEVICE, bundleZza);
        Bundle bundleZza2 = zzfcd.zza(bundleZza, "network");
        bundleZza.putBundle("network", bundleZza2);
        bundleZza2.putInt("active_network_state", this.zzf);
        bundleZza2.putBoolean("active_network_metered", this.zze);
    }
}
