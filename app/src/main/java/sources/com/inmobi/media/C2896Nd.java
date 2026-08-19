package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Nd */
/* JADX INFO: loaded from: classes6.dex */
public final class C2896Nd {

    /* JADX INFO: renamed from: a */
    public final int f1322a;

    /* JADX INFO: renamed from: b */
    public final int f1323b;

    /* JADX INFO: renamed from: c */
    public final int f1324c;

    /* JADX INFO: renamed from: d */
    public final int f1325d;

    public C2896Nd(int i, int i2, int i3, int i4) {
        this.f1322a = i;
        this.f1323b = i2;
        this.f1324c = i3;
        this.f1325d = i4;
    }

    /* JADX INFO: renamed from: a */
    public final JSONObject m1408a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("left", AbstractC3429y2.m2602a(this.f1322a));
            jSONObject.put("top", AbstractC3429y2.m2602a(this.f1323b));
            jSONObject.put("right", AbstractC3429y2.m2602a(this.f1324c));
            jSONObject.put(CommonCssConstants.BOTTOM, AbstractC3429y2.m2602a(this.f1325d));
            return jSONObject;
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
            return new JSONObject();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2896Nd)) {
            return false;
        }
        C2896Nd c2896Nd = (C2896Nd) obj;
        return this.f1322a == c2896Nd.f1322a && this.f1323b == c2896Nd.f1323b && this.f1324c == c2896Nd.f1324c && this.f1325d == c2896Nd.f1325d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f1325d) + ((Integer.hashCode(this.f1324c) + ((Integer.hashCode(this.f1323b) + (Integer.hashCode(this.f1322a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Insets(left=" + this.f1322a + ", top=" + this.f1323b + ", right=" + this.f1324c + ", bottom=" + this.f1325d + ')';
    }
}
