package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Zc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3065Zc {

    /* JADX INFO: renamed from: a */
    public final byte f1827a;

    /* JADX INFO: renamed from: b */
    public final String f1828b;

    public C3065Zc(byte b, String str) {
        this.f1827a = b;
        this.f1828b = str;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            byte b = this.f1827a;
            String str = "unknown";
            if (b != 0) {
                if (b == 1) {
                    str = CommonCssConstants.STATIC;
                } else if (b == 2) {
                    str = "html";
                } else if (b == 3) {
                    str = "iframe";
                }
            }
            jSONObject.put("type", str);
            jSONObject.put("content", this.f1828b);
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            List list = C3080ad.f1854h;
            Intrinsics.checkNotNullExpressionValue("ad", "access$getTAG$cp(...)");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return "";
        }
    }
}
