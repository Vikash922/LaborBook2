package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Zc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f300a;
    public final String b;

    public Zc(byte b, String str) {
        this.f300a = b;
        this.b = str;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            byte b = this.f300a;
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
            jSONObject.put("content", this.b);
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            List list = C0229ad.h;
            Intrinsics.checkNotNullExpressionValue("ad", "access$getTAG$cp(...)");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
            return "";
        }
    }
}
