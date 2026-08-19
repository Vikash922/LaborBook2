package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.webkit.WebResourceResponse;
import android.widget.RelativeLayout;
import com.google.common.net.HttpHeaders;
import java.io.InputStream;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.inmobi.media.y2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0576y2 {
    public static final boolean a(String str) {
        return str != null && str.length() > 0;
    }

    public static final int b(float f) {
        try {
            return MathKt.roundToInt(f);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static final int c(float f) {
        try {
            return (int) (f / N3.b());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static final boolean a(JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        return jSONArray.length() == 0;
    }

    public static final WebResourceResponse a(InputStream inputStream, String mimeType) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Map mapMapOf = MapsKt.mapOf(TuplesKt.to(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*"));
        if (E3.G()) {
            return new WebResourceResponse(mimeType, "UTF-8", 200, "OK", mapMapOf, inputStream);
        }
        return new WebResourceResponse(mimeType, "UTF-8", inputStream);
    }

    public static final int a(int i) {
        try {
            return (int) (i / N3.b());
        } catch (Exception unused) {
            return i;
        }
    }

    public static final float a(float f) {
        return MathKt.roundToInt(f * 10.0f) / 10.0f;
    }

    public static final Intent a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter filter) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (E3.f104a.B()) {
            return context.registerReceiver(broadcastReceiver, filter, 2);
        }
        return context.registerReceiver(broadcastReceiver, filter);
    }

    public static final boolean a(Context context) {
        ApplicationInfo applicationInfo;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (!E3.f104a.D()) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
            Intrinsics.checkNotNullExpressionValue(packageInfo, "getPackageInfo(...)");
            applicationInfo = packageInfo.applicationInfo;
        } catch (Exception unused) {
        }
        int i = applicationInfo != null ? applicationInfo.targetSdkVersion : -1;
        return i >= 35;
    }

    public static final void a(Od od, RelativeLayout.LayoutParams layoutParams, I9 orientation) {
        Intrinsics.checkNotNullParameter(od, "<this>");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        od.getClass();
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Nd nd = (Nd) od.f208a.get(orientation);
        int i = nd != null ? nd.f196a : 0;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Nd nd2 = (Nd) od.f208a.get(orientation);
        int i2 = nd2 != null ? nd2.c : 0;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Nd nd3 = (Nd) od.f208a.get(orientation);
        layoutParams.setMargins(i, 0, i2, nd3 != null ? nd3.d : 0);
    }
}
