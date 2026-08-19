package com.inmobi.media;

import com.itextpdf.svg.SvgConstants;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.p4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3296p4 {
    /* JADX INFO: renamed from: a */
    public static final JSONObject m2339a(C3281o4 c3281o4) throws JSONException {
        Intrinsics.checkNotNullParameter(c3281o4, "<this>");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(SvgConstants.Attributes.f3330X, Float.valueOf(AbstractC3429y2.m2601a(c3281o4.f2399a)));
        jSONObject.put(SvgConstants.Attributes.f3333Y, Float.valueOf(AbstractC3429y2.m2601a(c3281o4.f2400b)));
        jSONObject.put("width", c3281o4.f2401c);
        jSONObject.put("height", c3281o4.f2402d);
        return jSONObject;
    }
}
