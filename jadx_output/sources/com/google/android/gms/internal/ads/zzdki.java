package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdki {
    private final zzgcd zza;
    private final zzdkx zzb;
    private final zzdlc zzc;

    public zzdki(zzgcd zzgcdVar, zzdkx zzdkxVar, zzdlc zzdlcVar) {
        this.zza = zzgcdVar;
        this.zzb = zzdkxVar;
        this.zzc = zzdlcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ zzdhq zza(zzdki zzdkiVar, ListenableFuture listenableFuture, ListenableFuture listenableFuture2, ListenableFuture listenableFuture3, ListenableFuture listenableFuture4, ListenableFuture listenableFuture5, JSONObject jSONObject, ListenableFuture listenableFuture6, ListenableFuture listenableFuture7, ListenableFuture listenableFuture8, ListenableFuture listenableFuture9, ListenableFuture listenableFuture10) {
        zzdhq zzdhqVar = (zzdhq) listenableFuture.get();
        zzdhqVar.zzP((List) listenableFuture2.get());
        zzdhqVar.zzM((zzbft) listenableFuture3.get());
        zzdhqVar.zzQ((zzbft) listenableFuture4.get());
        zzdhqVar.zzJ((zzbfm) listenableFuture5.get());
        zzdhqVar.zzS(zzdkx.zzj(jSONObject));
        zzdhqVar.zzL(zzdkx.zzi(jSONObject));
        zzcel zzcelVar = (zzcel) listenableFuture6.get();
        if (zzcelVar != null) {
            zzdhqVar.zzad(zzcelVar);
            zzdhqVar.zzac(zzcelVar.zzF());
            zzdhqVar.zzab(zzcelVar.zzq());
        }
        zzdhqVar.zzd().putAll((Bundle) listenableFuture7.get());
        zzcel zzcelVar2 = (zzcel) listenableFuture8.get();
        if (zzcelVar2 != null) {
            zzdhqVar.zzO(zzcelVar2);
            zzdhqVar.zzae(zzcelVar2.zzF());
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzft)).booleanValue() || zzc(jSONObject)) {
            zzcel zzcelVar3 = (zzcel) listenableFuture9.get();
            if (zzcelVar3 != null) {
                zzdhqVar.zzT(zzcelVar3);
            }
        } else {
            zzdhqVar.zzU(listenableFuture9);
            zzdhqVar.zzX(new zzbzp());
        }
        for (zzdlb zzdlbVar : (List) listenableFuture10.get()) {
            if (zzdlbVar.zza != 1) {
                zzdhqVar.zzN(zzdlbVar.zzb, zzdlbVar.zzd);
            } else {
                zzdhqVar.zzZ(zzdlbVar.zzb, zzdlbVar.zzc);
            }
        }
        return zzdhqVar;
    }

    private static final boolean zzc(JSONObject jSONObject) {
        return jSONObject.optInt("template_id") == 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture zzb(final com.google.android.gms.internal.ads.zzfbg r18, final com.google.android.gms.internal.ads.zzfau r19, final org.json.JSONObject r20) {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdki.zzb(com.google.android.gms.internal.ads.zzfbg, com.google.android.gms.internal.ads.zzfau, org.json.JSONObject):com.google.common.util.concurrent.ListenableFuture");
    }
}
