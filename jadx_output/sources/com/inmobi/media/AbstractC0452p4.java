package com.inmobi.media;

import com.itextpdf.svg.SvgConstants;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.p4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0452p4 {
    public static final JSONObject a(C0437o4 c0437o4) throws JSONException {
        Intrinsics.checkNotNullParameter(c0437o4, "<this>");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(SvgConstants.Attributes.X, Float.valueOf(AbstractC0576y2.a(c0437o4.f442a)));
        jSONObject.put(SvgConstants.Attributes.Y, Float.valueOf(AbstractC0576y2.a(c0437o4.b)));
        jSONObject.put("width", c0437o4.c);
        jSONObject.put("height", c0437o4.d);
        return jSONObject;
    }
}
