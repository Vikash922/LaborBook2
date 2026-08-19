package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcmq implements zzbnt {
    private final Context zza;
    private final zzayd zzb;
    private final PowerManager zzc;

    public zzcmq(Context context, zzayd zzaydVar) {
        this.zza = context;
        this.zzb = zzaydVar;
        this.zzc = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final JSONObject zzb(zzcmt zzcmtVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzayg zzaygVar = zzcmtVar.zzf;
        if (zzaygVar == null) {
            jSONObject = new JSONObject();
        } else {
            zzayd zzaydVar = this.zzb;
            if (zzaydVar.zzd() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = zzaygVar.zza;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObjectPut = jSONObject3.put("afmaVersion", zzaydVar.zzb()).put("activeViewJSON", zzaydVar.zzd()).put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, zzcmtVar.zzd).put("adFormat", zzaydVar.zza()).put("hashCode", zzaydVar.zzc()).put("isMraid", false);
            boolean z2 = zzcmtVar.zzc;
            JSONObject jSONObjectPut2 = jSONObjectPut.put("isStopped", false).put("isPaused", zzcmtVar.zzb).put("isNative", zzaydVar.zze()).put("isScreenOn", this.zzc.isInteractive()).put("appMuted", com.google.android.gms.ads.internal.zzv.zzs().zze()).put("appVolume", com.google.android.gms.ads.internal.zzv.zzs().zza());
            Context context = this.zza;
            jSONObjectPut2.put("deviceVolume", com.google.android.gms.ads.internal.util.zzab.zzb(context.getApplicationContext()));
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            JSONObject jSONObjectPut3 = jSONObject3.put("windowVisibility", zzaygVar.zzb).put("isAttachedToWindow", z);
            JSONObject jSONObject4 = new JSONObject();
            Rect rect = zzaygVar.zzc;
            JSONObject jSONObjectPut4 = jSONObjectPut3.put(SvgConstants.Attributes.VIEWBOX, jSONObject4.put("top", rect.top).put(CommonCssConstants.BOTTOM, rect.bottom).put("left", rect.left).put("right", rect.right));
            JSONObject jSONObject5 = new JSONObject();
            Rect rect2 = zzaygVar.zzd;
            JSONObject jSONObjectPut5 = jSONObjectPut4.put("adBox", jSONObject5.put("top", rect2.top).put(CommonCssConstants.BOTTOM, rect2.bottom).put("left", rect2.left).put("right", rect2.right));
            JSONObject jSONObject6 = new JSONObject();
            Rect rect3 = zzaygVar.zze;
            JSONObject jSONObjectPut6 = jSONObjectPut5.put("globalVisibleBox", jSONObject6.put("top", rect3.top).put(CommonCssConstants.BOTTOM, rect3.bottom).put("left", rect3.left).put("right", rect3.right)).put("globalVisibleBoxVisible", zzaygVar.zzf);
            JSONObject jSONObject7 = new JSONObject();
            Rect rect4 = zzaygVar.zzg;
            JSONObject jSONObjectPut7 = jSONObjectPut6.put("localVisibleBox", jSONObject7.put("top", rect4.top).put(CommonCssConstants.BOTTOM, rect4.bottom).put("left", rect4.left).put("right", rect4.right)).put("localVisibleBoxVisible", zzaygVar.zzh);
            JSONObject jSONObject8 = new JSONObject();
            Rect rect5 = zzaygVar.zzi;
            jSONObjectPut7.put("hitBox", jSONObject8.put("top", rect5.top).put(CommonCssConstants.BOTTOM, rect5.bottom).put("left", rect5.left).put("right", rect5.right)).put("screenDensity", displayMetrics.density);
            jSONObject3.put("isVisible", zzcmtVar.zza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzbC)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = zzaygVar.zzk;
                if (list != null) {
                    for (Rect rect6 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect6.top).put(CommonCssConstants.BOTTOM, rect6.bottom).put("left", rect6.left).put("right", rect6.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(zzcmtVar.zze)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
