package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.webkit.WebView;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfkf implements WebViewCompat.WebMessageListener {
    final /* synthetic */ zzfkg zza;

    zzfkf(zzfkg zzfkgVar) {
        this.zza = zzfkgVar;
    }

    @Override // androidx.webkit.WebViewCompat.WebMessageListener
    public final void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
        try {
            JSONObject jSONObject = new JSONObject(webMessageCompat.getData());
            String string = jSONObject.getString(FirebaseAnalytics.Param.METHOD);
            String string2 = jSONObject.getJSONObject("data").getString("adSessionId");
            if (string.equals("startSession")) {
                zzfkg.zze(this.zza, string2);
            } else if (string.equals("finishSession")) {
                zzfkg.zzc(this.zza, string2);
            } else {
                zzfjs.zza.booleanValue();
            }
        } catch (JSONException e) {
            zzflo.zza("Error parsing JS message in JavaScriptSessionService.", e);
        }
    }
}
