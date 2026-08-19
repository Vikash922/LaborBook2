package com.google.ads.mediation.inmobi;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class InMobiExtras {
    private final String keywords;
    private final HashMap<String, String> parameterMap;

    public InMobiExtras(HashMap<String, String> map, String str) {
        this.parameterMap = map;
        this.keywords = str;
    }

    public HashMap<String, String> getParameterMap() {
        return this.parameterMap;
    }

    public String getKeywords() {
        return this.keywords;
    }
}
