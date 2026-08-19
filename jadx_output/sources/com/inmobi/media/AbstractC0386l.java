package com.inmobi.media;

import android.net.Uri;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0386l {
    public static String a(C0356j asset, File file, long j, long j2) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(file, "file");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", asset.b);
            jSONObject.put("saved_url", Uri.fromFile(file));
            jSONObject.put("size_in_bytes", file.length());
            jSONObject.put("download_started_at", j);
            jSONObject.put("download_ended_at", j2);
        } catch (JSONException e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0264d2 event = new C0264d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C0551w5.d.a(event);
        }
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return StringsKt.replace$default(string, "\"", "\\\"", false, 4, (Object) null);
    }
}
