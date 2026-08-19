package com.inmobi.media;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.inmobi.media.e3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0281e3 {
    public static JSONArray a(C0265d3 it, List skipList) {
        Intrinsics.checkNotNullParameter(it, "it");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        JSONArray jSONArray = new JSONArray();
        List list = C0265d3.j;
        Intrinsics.checkNotNullParameter("ac", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("ac")) {
            jSONArray.put(it.f329a);
        }
        Intrinsics.checkNotNullParameter("bid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("bid")) {
            jSONArray.put(it.b);
        }
        Intrinsics.checkNotNullParameter("its", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("its")) {
            jSONArray.put(it.c);
        }
        Intrinsics.checkNotNullParameter("vtm", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("vtm")) {
            jSONArray.put(it.d);
        }
        Intrinsics.checkNotNullParameter("plid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("plid")) {
            jSONArray.put(it.e);
        }
        Intrinsics.checkNotNullParameter("catid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("catid")) {
            jSONArray.put(it.f);
        }
        Intrinsics.checkNotNullParameter("hcd", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hcd")) {
            jSONArray.put(it.g);
        }
        Intrinsics.checkNotNullParameter("hsv", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hsv")) {
            jSONArray.put(it.h);
        }
        Intrinsics.checkNotNullParameter("hcv", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hcv")) {
            jSONArray.put(it.i);
        }
        return jSONArray;
    }
}
