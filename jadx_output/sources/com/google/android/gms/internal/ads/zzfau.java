package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfau {
    public final zzbxf zzA;
    public final String zzB;
    public final JSONObject zzC;
    public final JSONObject zzD;
    public final String zzE;
    public final String zzF;
    public final String zzG;
    public final String zzH;
    public final String zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final int zzQ;
    public final int zzR;
    public final boolean zzS;
    public final boolean zzT;
    public final String zzU;
    public final zzfbs zzV;
    public final boolean zzW;
    public final boolean zzX;
    public final int zzY;
    public final String zzZ;
    public final List zza;
    public final List zzaA;
    public final boolean zzaB;
    public final int zzaa;
    public final String zzab;
    public final boolean zzac;
    public final zzbte zzad;
    public final com.google.android.gms.ads.internal.client.zzt zzae;
    public final String zzaf;
    public final boolean zzag;
    public final JSONObject zzah;
    public final boolean zzai;
    public final JSONObject zzaj;
    public final boolean zzak;
    public final String zzal;
    public final boolean zzam;
    public final String zzan;
    public final String zzao;
    public final String zzap;
    public final boolean zzaq;
    public final boolean zzar;
    public final int zzas;
    public final String zzat;
    public final List zzau;
    public final boolean zzav;
    public final Map zzaw;
    public final com.google.android.gms.ads.internal.util.client.zzv zzax;
    public final com.google.android.gms.ads.internal.util.client.zzw zzay;
    public final double zzaz;
    public final int zzb;
    public final List zzc;
    public final List zzd;
    public final int zze;
    public final List zzf;
    public final List zzg;
    public final List zzh;
    public final List zzi;
    public final String zzj;
    public final String zzk;
    public final zzbvw zzl;
    public final List zzm;
    public final List zzn;
    public final List zzo;
    public final List zzp;
    public final int zzq;
    public final List zzr;
    public final zzfaz zzs;
    public final List zzt;
    public final List zzu;
    public final JSONObject zzv;
    public final String zzw;
    public final String zzx;
    public final String zzy;
    public final String zzz;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:258:0x06d7 A[PHI: r22 r25
      0x06d7: PHI (r22v91 java.util.List) = 
      (r22v5 java.util.List)
      (r22v6 java.util.List)
      (r22v7 java.util.List)
      (r22v8 java.util.List)
      (r22v9 java.util.List)
      (r22v10 java.util.List)
      (r22v11 java.util.List)
      (r22v12 java.util.List)
      (r22v13 java.util.List)
      (r22v14 java.util.List)
      (r22v15 java.util.List)
      (r22v16 java.util.List)
      (r22v17 java.util.List)
      (r22v18 java.util.List)
      (r22v19 java.util.List)
      (r22v20 java.util.List)
      (r22v21 java.util.List)
      (r22v22 java.util.List)
      (r22v23 java.util.List)
      (r22v24 java.util.List)
      (r22v25 java.util.List)
      (r22v26 java.util.List)
      (r22v27 java.util.List)
      (r22v28 java.util.List)
      (r22v29 java.util.List)
      (r22v30 java.util.List)
      (r22v31 java.util.List)
      (r22v32 java.util.List)
      (r22v33 java.util.List)
      (r22v34 java.util.List)
      (r22v35 java.util.List)
      (r22v36 java.util.List)
      (r22v37 java.util.List)
      (r22v38 java.util.List)
      (r22v39 java.util.List)
      (r22v40 java.util.List)
      (r22v41 java.util.List)
      (r22v42 java.util.List)
      (r22v43 java.util.List)
      (r22v44 java.util.List)
      (r22v45 java.util.List)
      (r22v46 java.util.List)
      (r22v47 java.util.List)
      (r22v48 java.util.List)
      (r22v49 java.util.List)
      (r22v50 java.util.List)
      (r22v51 java.util.List)
      (r22v52 java.util.List)
      (r22v53 java.util.List)
      (r22v54 java.util.List)
      (r22v55 java.util.List)
      (r22v56 java.util.List)
      (r22v57 java.util.List)
      (r22v58 java.util.List)
      (r22v59 java.util.List)
      (r22v60 java.util.List)
      (r22v61 java.util.List)
      (r22v62 java.util.List)
      (r22v63 java.util.List)
      (r22v64 java.util.List)
      (r22v65 java.util.List)
      (r22v66 java.util.List)
      (r22v67 java.util.List)
      (r22v68 java.util.List)
      (r22v69 java.util.List)
      (r22v70 java.util.List)
      (r22v71 java.util.List)
      (r22v72 java.util.List)
      (r22v73 java.util.List)
      (r22v74 java.util.List)
      (r22v75 java.util.List)
      (r22v76 java.util.List)
      (r22v77 java.util.List)
      (r22v78 java.util.List)
      (r22v79 java.util.List)
      (r22v80 java.util.List)
      (r22v81 java.util.List)
      (r22v82 java.util.List)
      (r22v83 java.util.List)
      (r22v84 java.util.List)
      (r22v85 java.util.List)
      (r22v86 java.util.List)
      (r22v92 java.util.List)
     binds: [B:256:0x06d2, B:253:0x06c1, B:250:0x06b0, B:247:0x069f, B:244:0x068e, B:241:0x067d, B:238:0x066b, B:235:0x0659, B:232:0x0647, B:229:0x0635, B:226:0x0623, B:223:0x0611, B:220:0x05ff, B:217:0x05ed, B:214:0x05db, B:211:0x05c9, B:208:0x05b7, B:205:0x05a5, B:202:0x0593, B:199:0x0581, B:196:0x056f, B:193:0x055d, B:190:0x054b, B:187:0x0539, B:184:0x0527, B:181:0x0515, B:178:0x0503, B:175:0x04f2, B:172:0x04e0, B:169:0x04ce, B:166:0x04bc, B:163:0x04aa, B:160:0x0498, B:157:0x0486, B:154:0x0474, B:151:0x0463, B:148:0x0451, B:145:0x043f, B:142:0x042e, B:139:0x041c, B:136:0x040a, B:133:0x03f8, B:130:0x03e6, B:127:0x03d4, B:124:0x03c2, B:121:0x03b0, B:118:0x039e, B:115:0x038c, B:112:0x037a, B:109:0x0368, B:106:0x0356, B:103:0x0344, B:100:0x0332, B:97:0x0320, B:94:0x030e, B:91:0x02fd, B:88:0x02eb, B:85:0x02d9, B:82:0x02c7, B:79:0x02b5, B:76:0x02a3, B:73:0x0292, B:70:0x0280, B:67:0x026e, B:64:0x025c, B:61:0x024a, B:58:0x0238, B:55:0x0226, B:52:0x0214, B:49:0x0202, B:46:0x01f0, B:43:0x01de, B:40:0x01cd, B:37:0x01bb, B:34:0x01aa, B:31:0x0198, B:28:0x0186, B:25:0x0174, B:22:0x0162, B:19:0x0150, B:16:0x013e, B:13:0x012c, B:11:0x011a] A[DONT_GENERATE, DONT_INLINE]
      0x06d7: PHI (r25v85 java.util.List) = 
      (r25v2 java.util.List)
      (r25v3 java.util.List)
      (r25v4 java.util.List)
      (r25v5 java.util.List)
      (r25v6 java.util.List)
      (r25v7 java.util.List)
      (r25v8 java.util.List)
      (r25v9 java.util.List)
      (r25v10 java.util.List)
      (r25v11 java.util.List)
      (r25v12 java.util.List)
      (r25v13 java.util.List)
      (r25v14 java.util.List)
      (r25v15 java.util.List)
      (r25v16 java.util.List)
      (r25v17 java.util.List)
      (r25v18 java.util.List)
      (r25v19 java.util.List)
      (r25v20 java.util.List)
      (r25v21 java.util.List)
      (r25v22 java.util.List)
      (r25v23 java.util.List)
      (r25v24 java.util.List)
      (r25v25 java.util.List)
      (r25v26 java.util.List)
      (r25v27 java.util.List)
      (r25v28 java.util.List)
      (r25v29 java.util.List)
      (r25v30 java.util.List)
      (r25v31 java.util.List)
      (r25v32 java.util.List)
      (r25v33 java.util.List)
      (r25v34 java.util.List)
      (r25v35 java.util.List)
      (r25v36 java.util.List)
      (r25v37 java.util.List)
      (r25v38 java.util.List)
      (r25v39 java.util.List)
      (r25v40 java.util.List)
      (r25v41 java.util.List)
      (r25v42 java.util.List)
      (r25v43 java.util.List)
      (r25v44 java.util.List)
      (r25v45 java.util.List)
      (r25v46 java.util.List)
      (r25v47 java.util.List)
      (r25v48 java.util.List)
      (r25v49 java.util.List)
      (r25v50 java.util.List)
      (r25v51 java.util.List)
      (r25v52 java.util.List)
      (r25v53 java.util.List)
      (r25v54 java.util.List)
      (r25v55 java.util.List)
      (r25v56 java.util.List)
      (r25v57 java.util.List)
      (r25v58 java.util.List)
      (r25v59 java.util.List)
      (r25v60 java.util.List)
      (r25v61 java.util.List)
      (r25v62 java.util.List)
      (r25v63 java.util.List)
      (r25v64 java.util.List)
      (r25v65 java.util.List)
      (r25v66 java.util.List)
      (r25v67 java.util.List)
      (r25v68 java.util.List)
      (r25v69 java.util.List)
      (r25v70 java.util.List)
      (r25v71 java.util.List)
      (r25v72 java.util.List)
      (r25v73 java.util.List)
      (r25v74 java.util.List)
      (r25v75 java.util.List)
      (r25v76 java.util.List)
      (r25v77 java.util.List)
      (r25v78 java.util.List)
      (r25v79 java.util.List)
      (r25v80 java.util.List)
      (r25v81 java.util.List)
      (r25v82 java.util.List)
      (r25v83 java.util.List)
      (r25v86 java.util.List)
     binds: [B:256:0x06d2, B:253:0x06c1, B:250:0x06b0, B:247:0x069f, B:244:0x068e, B:241:0x067d, B:238:0x066b, B:235:0x0659, B:232:0x0647, B:229:0x0635, B:226:0x0623, B:223:0x0611, B:220:0x05ff, B:217:0x05ed, B:214:0x05db, B:211:0x05c9, B:208:0x05b7, B:205:0x05a5, B:202:0x0593, B:199:0x0581, B:196:0x056f, B:193:0x055d, B:190:0x054b, B:187:0x0539, B:184:0x0527, B:181:0x0515, B:178:0x0503, B:175:0x04f2, B:172:0x04e0, B:169:0x04ce, B:166:0x04bc, B:163:0x04aa, B:160:0x0498, B:157:0x0486, B:154:0x0474, B:151:0x0463, B:148:0x0451, B:145:0x043f, B:142:0x042e, B:139:0x041c, B:136:0x040a, B:133:0x03f8, B:130:0x03e6, B:127:0x03d4, B:124:0x03c2, B:121:0x03b0, B:118:0x039e, B:115:0x038c, B:112:0x037a, B:109:0x0368, B:106:0x0356, B:103:0x0344, B:100:0x0332, B:97:0x0320, B:94:0x030e, B:91:0x02fd, B:88:0x02eb, B:85:0x02d9, B:82:0x02c7, B:79:0x02b5, B:76:0x02a3, B:73:0x0292, B:70:0x0280, B:67:0x026e, B:64:0x025c, B:61:0x024a, B:58:0x0238, B:55:0x0226, B:52:0x0214, B:49:0x0202, B:46:0x01f0, B:43:0x01de, B:40:0x01cd, B:37:0x01bb, B:34:0x01aa, B:31:0x0198, B:28:0x0186, B:25:0x0174, B:22:0x0162, B:19:0x0150, B:16:0x013e, B:13:0x012c, B:11:0x011a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    zzfau(android.util.JsonReader r91) throws java.lang.IllegalStateException, org.json.JSONException, java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instruction units count: 3264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfau.<init>(android.util.JsonReader):void");
    }

    public static String zza(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    private static int zzc(String str) {
        if ("banner".equals(str)) {
            return 1;
        }
        if ("interstitial".equals(str)) {
            return 2;
        }
        if ("native_express".equals(str)) {
            return 3;
        }
        if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE.equals(str)) {
            return 4;
        }
        if ("rewarded".equals(str)) {
            return 5;
        }
        if ("app_open_ad".equals(str)) {
            return 6;
        }
        return "rewarded_interstitial".equals(str) ? 7 : 0;
    }

    private static int zzd(String str) {
        if ("landscape".equalsIgnoreCase(str)) {
            return 6;
        }
        return "portrait".equalsIgnoreCase(str) ? 7 : -1;
    }

    private static int zze(int i) {
        if (i == 0 || i == 1 || i == 3 || i == 4) {
            return i;
        }
        return 0;
    }

    public final boolean zzb() {
        return this.zzai || this.zzay != null;
    }
}
