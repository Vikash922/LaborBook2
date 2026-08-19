package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfik {
    private final zzefu zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfbh zzf;
    private final zzfbi zzg;
    private final Clock zzh;
    private final zzauy zzi;

    public zzfik(zzefu zzefuVar, VersionInfoParcel versionInfoParcel, String str, String str2, Context context, zzfbh zzfbhVar, zzfbi zzfbiVar, Clock clock, zzauy zzauyVar) {
        this.zza = zzefuVar;
        this.zzb = versionInfoParcel.afmaVersion;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfbhVar;
        this.zzg = zzfbiVar;
        this.zzh = clock;
        this.zzi = zzauyVar;
    }

    public static String zzc(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzg(String str) {
        return TextUtils.isEmpty(str) ? "" : com.google.android.gms.ads.internal.util.client.zzl.zzk() ? "fakeForAdDebugLog" : str;
    }

    public final List zzd(zzfbg zzfbgVar, zzfau zzfauVar, List list) {
        return zze(zzfbgVar, zzfauVar, false, "", "", list);
    }

    public final List zze(zzfbg zzfbgVar, zzfau zzfauVar, boolean z, String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str3 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
            boolean z2 = true;
            String strZzc = zzc(zzc(zzc((String) it.next(), "@gw_adlocid@", zzfbgVar.zza.zza.zzf), "@gw_adnetrefresh@", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES), "@gw_sdkver@", this.zzb);
            if (zzfauVar != null) {
                String strZzc2 = zzc(zzc(zzc(strZzc, "@gw_qdata@", zzfauVar.zzy), "@gw_adnetid@", zzfauVar.zzx), "@gw_allocid@", zzfauVar.zzw);
                Context context = this.zze;
                strZzc = zzbxy.zzc(strZzc2, context, zzfauVar.zzW, zzfauVar.zzaw);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zznp)).booleanValue() && zzfauVar.zze == 4) {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    if (true == com.google.android.gms.ads.internal.util.zzs.zzH(context)) {
                        str3 = AppEventsConstants.EVENT_PARAM_VALUE_YES;
                    }
                    strZzc = zzc(strZzc, "@gw_aps@", str3);
                }
            }
            zzefu zzefuVar = this.zza;
            String strZzc3 = zzc(zzc(zzc(zzc(strZzc, "@gw_adnetstatus@", zzefuVar.zzg()), "@gw_ttr@", Long.toString(zzefuVar.zza(), 10)), "@gw_seqnum@", this.zzc), "@gw_sessid@", this.zzd);
            boolean z3 = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzdL)).booleanValue() && !TextUtils.isEmpty(str)) {
                z3 = true;
            }
            boolean zIsEmpty = TextUtils.isEmpty(str2);
            boolean z4 = !zIsEmpty;
            if (z3) {
                z2 = z4;
            } else {
                if (!zIsEmpty) {
                }
                arrayList.add(strZzc3);
            }
            if (this.zzi.zzf(Uri.parse(strZzc3))) {
                Uri.Builder builderBuildUpon = Uri.parse(strZzc3).buildUpon();
                if (z3) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("ms", str);
                }
                if (z2) {
                    builderBuildUpon = builderBuildUpon.appendQueryParameter("attok", str2);
                }
                strZzc3 = builderBuildUpon.build().toString();
            }
            arrayList.add(strZzc3);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0065 A[LOOP:0: B:13:0x005f->B:15:0x0065, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzf(com.google.android.gms.internal.ads.zzfau r11, java.util.List r12, com.google.android.gms.internal.ads.zzbvk r13) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.google.android.gms.common.util.Clock r1 = r10.zzh
            long r1 = r1.currentTimeMillis()
            java.lang.String r3 = r13.zzc()     // Catch: android.os.RemoteException -> Lb0
            int r13 = r13.zzb()     // Catch: android.os.RemoteException -> Lb0
            java.lang.String r13 = java.lang.Integer.toString(r13)     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbbz r4 = com.google.android.gms.internal.ads.zzbci.zzdM
            com.google.android.gms.internal.ads.zzbcg r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.zzb(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L35
            com.google.android.gms.internal.ads.zzfbi r4 = r10.zzg
            if (r4 != 0) goto L32
            com.google.android.gms.internal.ads.zzftu r4 = com.google.android.gms.internal.ads.zzftu.zzc()
            goto L3b
        L32:
            com.google.android.gms.internal.ads.zzfbh r4 = r4.zza
            goto L37
        L35:
            com.google.android.gms.internal.ads.zzfbh r4 = r10.zzf
        L37:
            com.google.android.gms.internal.ads.zzftu r4 = com.google.android.gms.internal.ads.zzftu.zzd(r4)
        L3b:
            com.google.android.gms.internal.ads.zzfii r5 = new com.google.android.gms.internal.ads.zzfii
            r5.<init>()
            com.google.android.gms.internal.ads.zzftu r5 = r4.zza(r5)
            java.lang.String r6 = ""
            java.lang.Object r5 = r5.zzb(r6)
            java.lang.String r5 = (java.lang.String) r5
            com.google.android.gms.internal.ads.zzfij r7 = new com.google.android.gms.internal.ads.zzfij
            r7.<init>()
            com.google.android.gms.internal.ads.zzftu r4 = r4.zza(r7)
            java.lang.Object r4 = r4.zzb(r6)
            java.lang.String r4 = (java.lang.String) r4
            java.util.Iterator r12 = r12.iterator()
        L5f:
            boolean r6 = r12.hasNext()
            if (r6 == 0) goto Laf
            java.lang.Object r6 = r12.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = android.net.Uri.encode(r5)
            java.lang.String r8 = "@gw_rwd_userid@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r4)
            java.lang.String r8 = "@gw_rwd_custom_data@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = java.lang.Long.toString(r1)
            java.lang.String r8 = "@gw_tmstmp@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r3)
            java.lang.String r8 = "@gw_rwd_itm@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = "@gw_rwd_amt@"
            java.lang.String r6 = zzc(r6, r7, r13)
            java.lang.String r7 = r10.zzb
            java.lang.String r8 = "@gw_sdkver@"
            java.lang.String r6 = zzc(r6, r8, r7)
            android.content.Context r7 = r10.zze
            boolean r8 = r11.zzW
            java.util.Map r9 = r11.zzaw
            java.lang.String r6 = com.google.android.gms.internal.ads.zzbxy.zzc(r6, r7, r8, r9)
            r0.add(r6)
            goto L5f
        Laf:
            return r0
        Lb0:
            r11 = move-exception
            int r12 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r12 = "Unable to determine award type and amount."
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r12, r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfik.zzf(com.google.android.gms.internal.ads.zzfau, java.util.List, com.google.android.gms.internal.ads.zzbvk):java.util.List");
    }
}
