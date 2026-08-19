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

/* JADX INFO: loaded from: classes6.dex */
public final class Q2 extends C0397l9 {
    public final int A;
    public final String B;
    public final boolean C;
    public final Map y;
    public final int z;

    @Override // com.inmobi.media.C0397l9
    public final void f() {
        String string;
        this.u = false;
        super.f();
        HashMap map = this.k;
        if (map != null) {
            M2 m2 = new M2();
            try {
                JSONArray jSONArray = new JSONArray();
                for (Map.Entry entry : this.y.entrySet()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", entry.getKey());
                    jSONObject.put(SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, m2.a((String) entry.getKey(), ((Config) entry.getValue()).getAccountId$media_release()));
                    jSONArray.put(jSONObject);
                }
                string = jSONArray.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            } catch (JSONException unused) {
                string = "";
            }
        }
        HashMap map2 = this.k;
        if (map2 != null) {
        }
        if (this.C) {
            this.i.put("rip", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q2(Map requestedConfigMap, Kc uidMap, String url, int i, int i2, boolean z, String accountId, boolean z2) {
        super("POST", (requestedConfigMap.get(CommonCssConstants.ROOT) == null && StringsKt.trim((CharSequence) url).toString().length() != 0) ? url : RootConfig.DEFAULT_FALLBACK_URL, uidMap, z, (InterfaceC0298f5) null, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter(requestedConfigMap, "requestedConfigMap");
        Intrinsics.checkNotNullParameter(uidMap, "uidMap");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.y = requestedConfigMap;
        this.z = i;
        this.A = i2;
        this.B = accountId;
        this.C = z2;
    }
}
