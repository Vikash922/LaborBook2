package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class Nd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f196a;
    public final int b;
    public final int c;
    public final int d;

    public Nd(int i, int i2, int i3, int i4) {
        this.f196a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("left", AbstractC0576y2.a(this.f196a));
            jSONObject.put("top", AbstractC0576y2.a(this.b));
            jSONObject.put("right", AbstractC0576y2.a(this.c));
            jSONObject.put(CommonCssConstants.BOTTOM, AbstractC0576y2.a(this.d));
            return jSONObject;
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
            return new JSONObject();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Nd)) {
            return false;
        }
        Nd nd = (Nd) obj;
        return this.f196a == nd.f196a && this.b == nd.b && this.c == nd.c && this.d == nd.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ((Integer.hashCode(this.c) + ((Integer.hashCode(this.b) + (Integer.hashCode(this.f196a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Insets(left=" + this.f196a + ", top=" + this.b + ", right=" + this.c + ", bottom=" + this.d + ')';
    }
}
