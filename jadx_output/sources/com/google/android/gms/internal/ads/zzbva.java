package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.truecaller.android.sdk.common.network.RestAdapter;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbva {
    private final List zza;
    private final String zzb;
    private final String zzc;
    private final boolean zzd;
    private final boolean zze;
    private final String zzf;
    private final int zzg;
    private final JSONObject zzh;
    private final String zzi;
    private final long zzj;
    private final long zzk;

    public zzbva(JSONObject jSONObject) {
        this.zzf = jSONObject.optString("url");
        this.zzb = jSONObject.optString("base_uri");
        this.zzc = jSONObject.optString("post_parameters");
        this.zzd = zzm(jSONObject.optString("drt_include"));
        this.zze = zzm(jSONObject.optString("cookies_include", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
        jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID);
        jSONObject.optString("type");
        String strOptString = jSONObject.optString(RestAdapter.JSON_KEY_ERRORS_LIST);
        this.zza = strOptString == null ? null : Arrays.asList(strOptString.split(","));
        this.zzg = jSONObject.optInt(CommonCssConstants.VALID, 0) == 1 ? -2 : 1;
        jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.zzh = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.zzi = jSONObject.optString("pool_key");
        this.zzj = zzl(jSONObject.optString("start_time")).longValue();
        this.zzk = zzl(jSONObject.optString(SDKConstants.PARAM_TOURNAMENTS_END_TIME)).longValue();
    }

    private static Long zzl(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        try {
            return Long.valueOf(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private static boolean zzm(String str) {
        if (str != null) {
            return str.equals(AppEventsConstants.EVENT_PARAM_VALUE_YES) || str.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
        return false;
    }

    public final int zza() {
        return this.zzg;
    }

    public final long zzb() {
        return this.zzk;
    }

    public final long zzc() {
        return this.zzj;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final String zze() {
        return this.zzi;
    }

    public final String zzf() {
        return this.zzc;
    }

    public final String zzg() {
        return this.zzf;
    }

    public final List zzh() {
        return this.zza;
    }

    public final JSONObject zzi() {
        return this.zzh;
    }

    public final boolean zzj() {
        return this.zze;
    }

    public final boolean zzk() {
        return this.zzd;
    }
}
