package com.inmobi.media;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class X6 {
    public static int a(String str, JSONObject jSONObject) {
        return (str == null || !jSONObject.has(str)) ? jSONObject.getInt("default") : jSONObject.getInt(str);
    }
}
