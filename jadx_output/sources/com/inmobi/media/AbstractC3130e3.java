package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.inmobi.media.e3 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3130e3 {
    /* JADX INFO: renamed from: a */
    public static JSONArray m2092a(C3115d3 it, List skipList) {
        Intrinsics.checkNotNullParameter(it, "it");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        JSONArray jSONArray = new JSONArray();
        List list = C3115d3.f1975j;
        Intrinsics.checkNotNullParameter("ac", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("ac")) {
            jSONArray.put(it.f1976a);
        }
        Intrinsics.checkNotNullParameter("bid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("bid")) {
            jSONArray.put(it.f1977b);
        }
        Intrinsics.checkNotNullParameter("its", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("its")) {
            jSONArray.put(it.f1978c);
        }
        Intrinsics.checkNotNullParameter("vtm", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("vtm")) {
            jSONArray.put(it.f1979d);
        }
        Intrinsics.checkNotNullParameter("plid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("plid")) {
            jSONArray.put(it.f1980e);
        }
        Intrinsics.checkNotNullParameter("catid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("catid")) {
            jSONArray.put(it.f1981f);
        }
        Intrinsics.checkNotNullParameter("hcd", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hcd")) {
            jSONArray.put(it.f1982g);
        }
        Intrinsics.checkNotNullParameter("hsv", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hsv")) {
            jSONArray.put(it.f1983h);
        }
        Intrinsics.checkNotNullParameter("hcv", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hcv")) {
            jSONArray.put(it.f1984i);
        }
        return jSONArray;
    }
}
