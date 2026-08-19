package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import com.facebook.internal.ServerProtocol;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.RootConfig;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Q2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2930Q2 extends C3241l9 {

    /* JADX INFO: renamed from: A */
    public final int f1456A;

    /* JADX INFO: renamed from: B */
    public final String f1457B;

    /* JADX INFO: renamed from: C */
    public final boolean f1458C;

    /* JADX INFO: renamed from: y */
    public final Map f1459y;

    /* JADX INFO: renamed from: z */
    public final int f1460z;

    @Override // com.inmobi.media.C3241l9
    /* JADX INFO: renamed from: f */
    public final void mo1146f() {
        String string;
        this.f2294u = false;
        super.mo1146f();
        HashMap map = this.f2284k;
        if (map != null) {
            C2870M2 c2870m2 = new C2870M2();
            try {
                JSONArray jSONArray = new JSONArray();
                for (Map.Entry entry : this.f1459y.entrySet()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", entry.getKey());
                    jSONObject.put(SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, c2870m2.m1332a((String) entry.getKey(), ((Config) entry.getValue()).getAccountId$media_release()));
                    jSONArray.put(jSONObject);
                }
                string = jSONArray.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            } catch (JSONException unused) {
                string = "";
            }
        }
        HashMap map2 = this.f2284k;
        if (map2 != null) {
        }
        if (this.f1458C) {
            this.f2282i.put("rip", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2930Q2(Map requestedConfigMap, C2850Kc uidMap, String url, int i, int i2, boolean z, String accountId, boolean z2) {
        super("POST", (requestedConfigMap.get(CommonCssConstants.ROOT) == null && StringsKt.trim((CharSequence) url).toString().length() != 0) ? url : RootConfig.DEFAULT_FALLBACK_URL, uidMap, z, (InterfaceC3147f5) null, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter(requestedConfigMap, "requestedConfigMap");
        Intrinsics.checkNotNullParameter(uidMap, "uidMap");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.f1459y = requestedConfigMap;
        this.f1460z = i;
        this.f1456A = i2;
        this.f1457B = accountId;
        this.f1458C = z2;
    }
}
