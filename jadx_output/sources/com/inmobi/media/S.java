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

/* JADX INFO: loaded from: classes6.dex */
public final class S extends C0397l9 {
    public String A;
    public String B;
    public String C;
    public Map D;
    public final Y y;
    public final C0485r9 z;

    public static JSONObject a(String adType) throws JSONException {
        Intrinsics.checkNotNullParameter(adType, "adType");
        if (Intrinsics.areEqual(adType, "banner")) {
            return C0236b5.c.a();
        }
        if (!Intrinsics.areEqual("audio", adType)) {
            return new JSONObject();
        }
        X4 x4 = X4.c;
        JSONObject jSONObject = new JSONObject();
        long j = x4.f220a / 1000;
        if (j != 0) {
            jSONObject.put("a-lastAudioPlayedTs", String.valueOf(j));
        }
        int i = x4.b;
        if (i > 0) {
            jSONObject.put("a-audioFreq", String.valueOf(i));
        }
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "audio_pref_file");
            Intrinsics.checkNotNullParameter("user_mute_count", "key");
            int i2 = c0284e6A.f340a.getInt("user_mute_count", -1);
            if (i2 > 0) {
                jSONObject.put("a-umc", String.valueOf(i2));
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01dd  */
    @Override // com.inmobi.media.C0397l9
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            Method dump skipped, instruction units count: 1010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.S.f():void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S(String str, Kc kc, String str2, Y adPlacement, C0485r9 c0485r9, InterfaceC0298f5 interfaceC0298f5, boolean z) {
        super("POST", str, kc, false, interfaceC0298f5, ShareTarget.ENCODING_TYPE_URL_ENCODED, z);
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.y = adPlacement;
        this.z = c0485r9;
        this.A = "json";
        this.m = Kb.b();
        HashMap map = this.k;
        if (map != null) {
            map.putAll(N3.c());
            String str3 = C0247c1.b;
            if (str3 != null) {
            }
            map.put("client-request-id", adPlacement.d());
            if (str2 != null) {
                map.put("u-appcache", str2);
            }
            map.put("sdk-flavor", CommonCssConstants.ROW);
        }
    }
}
