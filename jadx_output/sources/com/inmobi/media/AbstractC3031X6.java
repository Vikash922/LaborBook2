package com.inmobi.media;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.X6 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3031X6 {
    /* JADX INFO: renamed from: a */
    public static int m1911a(String str, JSONObject jSONObject) {
        return (str == null || !jSONObject.has(str)) ? jSONObject.getInt("default") : jSONObject.getInt(str);
    }
}
