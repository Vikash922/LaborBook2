package com.iab.omid.library.inmobi.adsession.media;

import com.iab.omid.library.inmobi.utils.C2651d;
import com.iab.omid.library.inmobi.utils.C2654g;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class VastProperties {

    /* JADX INFO: renamed from: a */
    private final boolean f608a;

    /* JADX INFO: renamed from: b */
    private final Float f609b;

    /* JADX INFO: renamed from: c */
    private final boolean f610c;

    /* JADX INFO: renamed from: d */
    private final Position f611d;

    private VastProperties(boolean z, Float f, boolean z2, Position position) {
        this.f608a = z;
        this.f609b = f;
        this.f610c = z2;
        this.f611d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z, Position position) {
        C2654g.m723a(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f, boolean z, Position position) {
        C2654g.m723a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f), z, position);
    }

    /* JADX INFO: renamed from: a */
    public JSONObject m559a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f608a);
            if (this.f608a) {
                jSONObject.put("skipOffset", this.f609b);
            }
            jSONObject.put("autoPlay", this.f610c);
            jSONObject.put(CommonCssConstants.POSITION, this.f611d);
        } catch (JSONException e) {
            C2651d.m713a("VastProperties: JSON error", e);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f611d;
    }

    public Float getSkipOffset() {
        return this.f609b;
    }

    public boolean isAutoPlay() {
        return this.f610c;
    }

    public boolean isSkippable() {
        return this.f608a;
    }
}
