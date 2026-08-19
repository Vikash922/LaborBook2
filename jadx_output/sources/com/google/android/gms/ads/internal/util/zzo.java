package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.internal.ads.zzbdi;
import com.google.android.gms.internal.ads.zzbdj;
import com.google.android.gms.internal.ads.zzhfo;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzo implements zzbdi {
    final /* synthetic */ zzbdj zza;
    final /* synthetic */ Context zzb;
    final /* synthetic */ Uri zzc;

    zzo(zzs zzsVar, zzbdj zzbdjVar, Context context, Uri uri) {
        this.zza = zzbdjVar;
        this.zzb = context;
        this.zzc = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbdi
    public final void zza() {
        zzbdj zzbdjVar = this.zza;
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(zzbdjVar.zza()).build();
        Intent intent = customTabsIntentBuild.intent;
        Context context = this.zzb;
        intent.setPackage(zzhfo.zza(context));
        customTabsIntentBuild.launchUrl(context, this.zzc);
        zzbdjVar.zzf((Activity) context);
    }
}
