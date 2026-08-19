package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbjv implements zzbjj {
    private final com.google.android.gms.ads.internal.zzb zza;
    private final zzdre zzb;
    private final zzbrw zzd;
    private final zzeat zze;
    private final zzclx zzf;
    private com.google.android.gms.ads.internal.overlay.zzaa zzg = null;
    private final zzgcd zzh = zzbzk.zzg;
    private final com.google.android.gms.ads.internal.util.client.zzu zzc = new com.google.android.gms.ads.internal.util.client.zzu(null);

    public zzbjv(com.google.android.gms.ads.internal.zzb zzbVar, zzbrw zzbrwVar, zzeat zzeatVar, zzdre zzdreVar, zzclx zzclxVar) {
        this.zza = zzbVar;
        this.zzd = zzbrwVar;
        this.zze = zzeatVar;
        this.zzb = zzdreVar;
        this.zzf = zzclxVar;
    }

    public static int zzb(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if (SvgConstants.Attributes.PATH_DATA_REL_LINE_TO.equalsIgnoreCase(str)) {
            return 6;
        }
        return SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO.equalsIgnoreCase(str) ? 14 : -1;
    }

    static Uri zzc(Context context, zzauy zzauyVar, Uri uri, View view, Activity activity, zzfbt zzfbtVar) {
        if (zzauyVar == null) {
            return uri;
        }
        try {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzmc)).booleanValue() || zzfbtVar == null) {
                if (zzauyVar.zze(uri)) {
                    uri = zzauyVar.zza(uri, context, view, activity);
                }
            } else if (zzauyVar.zze(uri)) {
                uri = zzfbtVar.zza(uri, context, view, activity);
            }
        } catch (zzauz unused) {
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
        }
        return uri;
    }

    static Uri zzd(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String strValueOf = String.valueOf(uri.toString());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error adding click uptime parameter to url: ".concat(strValueOf), e);
        }
        return uri;
    }

    public static boolean zzf(Map map) {
        return AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(map.get("custom_close"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.String r38, com.google.android.gms.ads.internal.client.zza r39, java.util.Map r40, java.lang.String r41) {
        /*
            Method dump skipped, instruction units count: 1069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbjv.zzh(java.lang.String, com.google.android.gms.ads.internal.client.zza, java.util.Map, java.lang.String):void");
    }

    private final void zzi(Context context, String str, String str2) {
        zzeat zzeatVar = this.zze;
        zzeatVar.zzc(str);
        zzdre zzdreVar = this.zzb;
        if (zzdreVar != null) {
            zzebe.zzp(context, zzdreVar, zzeatVar, str, "dialog_not_shown", zzfwz.zze("dialog_not_shown_reason", str2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0157, code lost:
    
        r22 = r7;
        r11 = r16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0160  */
    /* JADX WARN: Type inference failed for: r2v10, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v22, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzj(com.google.android.gms.ads.internal.client.zza r21, java.util.Map r22, boolean r23, java.lang.String r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instruction units count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbjv.zzj(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean, boolean):void");
    }

    private final void zzk(boolean z) {
        zzbrw zzbrwVar = this.zzd;
        if (zzbrwVar != null) {
            zzbrwVar.zzb(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005e, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbci.zziE)).booleanValue() != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c8, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 33 ? ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbci.zziz)).booleanValue() : ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbci.zziy)).booleanValue()) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzl(com.google.android.gms.ads.internal.client.zza r9, android.content.Context r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbjv.zzl(com.google.android.gms.ads.internal.client.zza, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm(int i) {
        zzdre zzdreVar;
        String str;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzeM)).booleanValue() || (zzdreVar = this.zzb) == null) {
            return;
        }
        zzdrd zzdrdVarZza = zzdreVar.zza();
        zzdrdVarZza.zzb("action", "cct_action");
        switch (i) {
            case 2:
                str = "CONTEXT_NOT_AN_ACTIVITY";
                break;
            case 3:
                str = "CONTEXT_NULL";
                break;
            case 4:
                str = "CCT_NOT_SUPPORTED";
                break;
            case 5:
                str = "CCT_READY_TO_OPEN";
                break;
            case 6:
                str = "ACTIVITY_NOT_FOUND";
                break;
            case 7:
                str = "EMPTY_URL";
                break;
            case 8:
                str = "UNKNOWN";
                break;
            case 9:
                str = "WRONG_EXP_SETUP";
                break;
            default:
                str = "OPT_OUT";
                break;
        }
        zzdrdVarZza.zzb("cct_open_status", str);
        zzdrdVarZza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzclx zzclxVar;
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String str = (String) map.get("u");
        Map map2 = new HashMap();
        zzcel zzcelVar = (zzcel) zzaVar;
        if (zzcelVar.zzD() != null) {
            map2 = zzcelVar.zzD().zzaw;
        }
        String strZzc = zzbxy.zzc(str, zzcelVar.getContext(), true, map2);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zza;
        if (zzbVar == null || zzbVar.zzc()) {
            zzgbs.zzr((((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzkf)).booleanValue() && (zzclxVar = this.zzf) != null && zzclx.zzj(strZzc)) ? zzclxVar.zze(strZzc, com.google.android.gms.ads.internal.client.zzbb.zze()) : zzgbs.zzh(strZzc), new zzbjr(this, map, zzaVar, str2), this.zzh);
        } else {
            zzbVar.zzb(strZzc);
        }
    }
}
