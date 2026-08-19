package com.inmobi.media;

import java.util.Map;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class F0 {
    public static final String a(String str, Map map) {
        if (map == null || str == null) {
            return str;
        }
        String strReplace$default = str;
        for (Object obj : map.keySet()) {
            strReplace$default = strReplace$default != null ? StringsKt.replace$default(strReplace$default, String.valueOf(obj), String.valueOf(map.get(obj)), false, 4, (Object) null) : null;
        }
        return strReplace$default;
    }
}
