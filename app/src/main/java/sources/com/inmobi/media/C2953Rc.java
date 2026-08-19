package com.inmobi.media;

import com.facebook.internal.ServerProtocol;
import com.inmobi.unifiedId.InMobiUserDataModel;
import com.inmobi.unifiedId.InMobiUserDataTypes;
import java.util.HashMap;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Rc */
/* JADX INFO: loaded from: classes6.dex */
public final class C2953Rc extends AbstractC3333rb {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2953Rc(String url, C2850Kc c2850Kc, String str, int i, int i2, int i3) {
        super(url, c2850Kc, str, i, i2);
        Intrinsics.checkNotNullParameter("POST", "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f2289p = i3;
    }

    @Override // com.inmobi.media.C3241l9
    /* JADX INFO: renamed from: f */
    public final void mo1146f() {
        InMobiUserDataTypes emailId;
        InMobiUserDataTypes phoneNumber;
        HashMap map;
        HashMap map2;
        HashMap map3;
        HashMap map4;
        String string;
        HashMap map5;
        super.mo1146f();
        InMobiUserDataModel inMobiUserDataModel = C3431y4.f2755a;
        String.valueOf(C3431y4.f2755a);
        HashMap mapM2046a = AbstractC3107ca.m2046a();
        HashMap map6 = this.f2284k;
        if (map6 != null) {
            map6.put("mk-version", C2864Lb.m1313a());
            String str = C3098c1.f1905a;
            if (str != null) {
            }
            map6.put("ua", C2849Kb.m1259k());
            map6.put("ts", String.valueOf(System.currentTimeMillis()));
        }
        String str2 = this.f2286m;
        if (str2 != null && (map5 = this.f2284k) != null) {
        }
        Boolean boolM1203c = C2835Jc.f1140a.m1203c();
        HashMap map7 = this.f2284k;
        if (map7 != null) {
            if (boolM1203c == null || (string = boolM1203c.toString()) == null) {
                string = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
            }
        }
        String str3 = (String) mapM2046a.get("u-age");
        if (str3 != null && (map4 = this.f2284k) != null) {
        }
        InMobiUserDataModel inMobiUserDataModel2 = C3431y4.f2755a;
        if (inMobiUserDataModel2 == null || (emailId = inMobiUserDataModel2.getEmailId()) == null || (emailId.getMd5() == null && emailId.getSha1() == null && emailId.getSha256() == null)) {
            emailId = null;
        }
        if (emailId != null && (map3 = this.f2284k) != null) {
        }
        InMobiUserDataModel inMobiUserDataModel3 = C3431y4.f2755a;
        if (inMobiUserDataModel3 == null || (phoneNumber = inMobiUserDataModel3.getPhoneNumber()) == null || (phoneNumber.getMd5() == null && phoneNumber.getSha1() == null && phoneNumber.getSha256() == null)) {
            phoneNumber = null;
        }
        if (phoneNumber != null && (map2 = this.f2284k) != null) {
        }
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObjectM2491b = AbstractC3372u5.m2491b();
        if (jSONObjectM2491b != null) {
            try {
                if (jSONObjectM2491b.has("ufids")) {
                    JSONArray jSONArray2 = jSONObjectM2491b.getJSONArray("ufids");
                    int length = jSONArray2.length();
                    for (int i = 0; i < length; i++) {
                        String string2 = jSONArray2.getJSONObject(i).has("src") ? jSONArray2.getJSONObject(i).getString("src") : null;
                        String string3 = jSONArray2.getJSONObject(i).has("signature") ? jSONArray2.getJSONObject(i).getString("signature") : null;
                        boolean z = System.currentTimeMillis() > jSONArray2.getJSONObject(i).getLong("expiry");
                        if (string2 != null && string3 != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("src", string2);
                            jSONObject.put("signature", string3);
                            jSONObject.put("expired", z);
                            jSONArray.put(jSONObject);
                        }
                    }
                }
            } catch (JSONException unused) {
                Objects.toString(jSONObjectM2491b);
            }
        }
        HashMap map8 = this.f2284k;
        if (map8 != null) {
            String string4 = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(string4, "toString(...)");
        }
        InMobiUserDataModel inMobiUserDataModel4 = C3431y4.f2755a;
        HashMap<String, String> extras = inMobiUserDataModel4 != null ? inMobiUserDataModel4.getExtras() : null;
        if (extras == null || (map = this.f2284k) == null) {
            return;
        }
        map.putAll(extras);
    }
}
