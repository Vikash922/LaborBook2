package com.inmobi.media;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.S */
/* JADX INFO: loaded from: classes6.dex */
public final class C2954S extends C3241l9 {

    /* JADX INFO: renamed from: A */
    public String f1509A;

    /* JADX INFO: renamed from: B */
    public String f1510B;

    /* JADX INFO: renamed from: C */
    public String f1511C;

    /* JADX INFO: renamed from: D */
    public Map f1512D;

    /* JADX INFO: renamed from: y */
    public final C3038Y f1513y;

    /* JADX INFO: renamed from: z */
    public final C3331r9 f1514z;

    /* JADX INFO: renamed from: a */
    public static JSONObject m1774a(String adType) throws JSONException {
        Intrinsics.checkNotNullParameter(adType, "adType");
        if (Intrinsics.areEqual(adType, "banner")) {
            return C3087b5.f1875c.m2034a();
        }
        if (!Intrinsics.areEqual("audio", adType)) {
            return new JSONObject();
        }
        C3029X4 c3029x4 = C3029X4.f1640c;
        JSONObject jSONObject = new JSONObject();
        long j = c3029x4.f1454a / 1000;
        if (j != 0) {
            jSONObject.put("a-lastAudioPlayedTs", String.valueOf(j));
        }
        int i = c3029x4.f1455b;
        if (i > 0) {
            jSONObject.put("a-audioFreq", String.valueOf(i));
        }
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "audio_pref_file");
            Intrinsics.checkNotNullParameter("user_mute_count", "key");
            int i2 = c3133e6M2058a.f2045a.getInt("user_mute_count", -1);
            if (i2 > 0) {
                jSONObject.put("a-umc", String.valueOf(i2));
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01dd  */
    @Override // com.inmobi.media.C3241l9
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1146f() {
        /*
            Method dump skipped, instruction units count: 1010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2954S.mo1146f():void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2954S(String str, C2850Kc c2850Kc, String str2, C3038Y adPlacement, C3331r9 c3331r9, InterfaceC3147f5 interfaceC3147f5, boolean z) {
        super("POST", str, c2850Kc, false, interfaceC3147f5, ShareTarget.ENCODING_TYPE_URL_ENCODED, z);
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.f1513y = adPlacement;
        this.f1514z = c3331r9;
        this.f1509A = "json";
        this.f2286m = C2849Kb.m1248b();
        HashMap map = this.f2284k;
        if (map != null) {
            map.putAll(AbstractC2886N3.m1387c());
            String str3 = C3098c1.f1906b;
            if (str3 != null) {
            }
            map.put("client-request-id", adPlacement.m1931d());
            if (str2 != null) {
                map.put("u-appcache", str2);
            }
            map.put("sdk-flavor", CommonCssConstants.ROW);
        }
    }
}
