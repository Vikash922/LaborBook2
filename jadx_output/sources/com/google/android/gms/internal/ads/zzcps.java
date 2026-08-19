package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcps extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private final Context zza;
    private View zzb;

    private zzcps(Context context) {
        super(context);
        this.zza = context;
    }

    public static zzcps zza(Context context, View view, zzfau zzfauVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcps zzcpsVar = new zzcps(context);
        List list = zzfauVar.zzu;
        if (!list.isEmpty() && (resources = zzcpsVar.zza.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            zzfav zzfavVar = (zzfav) list.get(0);
            zzcpsVar.setLayoutParams(new FrameLayout.LayoutParams((int) (zzfavVar.zza * displayMetrics.density), (int) (zzfavVar.zzb * displayMetrics.density)));
        }
        zzcpsVar.zzb = view;
        zzcpsVar.addView(view);
        com.google.android.gms.ads.internal.zzv.zzy();
        zzbzx.zzb(zzcpsVar, zzcpsVar);
        com.google.android.gms.ads.internal.zzv.zzy();
        zzbzx.zza(zzcpsVar, zzcpsVar);
        JSONObject jSONObject = zzfauVar.zzah;
        RelativeLayout relativeLayout = new RelativeLayout(zzcpsVar.zza);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("header");
        if (jSONObjectOptJSONObject != null) {
            zzcpsVar.zzc(jSONObjectOptJSONObject, relativeLayout, 10);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("footer");
        if (jSONObjectOptJSONObject2 != null) {
            zzcpsVar.zzc(jSONObjectOptJSONObject2, relativeLayout, 12);
        }
        zzcpsVar.addView(relativeLayout);
        return zzcpsVar;
    }

    private final int zzb(double d) {
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        return com.google.android.gms.ads.internal.util.client.zzf.zzy(this.zza, (int) d);
    }

    private final void zzc(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.zza);
        textView.setTextColor(-1);
        textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int iZzb = zzb(jSONObject.optDouble(CommonCssConstants.PADDING, 0.0d));
        textView.setPadding(0, iZzb, 0, iZzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }
}
