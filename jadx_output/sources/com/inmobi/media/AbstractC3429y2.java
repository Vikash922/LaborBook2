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

/* JADX INFO: renamed from: com.inmobi.media.y2 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3429y2 {
    /* JADX INFO: renamed from: a */
    public static final boolean m2607a(String str) {
        return str != null && str.length() > 0;
    }

    /* JADX INFO: renamed from: b */
    public static final int m2609b(float f) {
        try {
            return MathKt.roundToInt(f);
        } catch (Exception unused) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: c */
    public static final int m2610c(float f) {
        try {
            return (int) (f / AbstractC2886N3.m1384b());
        } catch (Exception unused) {
            return 0;
        }
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m2608a(JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(jSONArray, "<this>");
        return jSONArray.length() == 0;
    }

    /* JADX INFO: renamed from: a */
    public static final WebResourceResponse m2604a(InputStream inputStream, String mimeType) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Map mapMapOf = MapsKt.mapOf(TuplesKt.m2729to(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*"));
        if (C2751E3.m994G()) {
            return new WebResourceResponse(mimeType, "UTF-8", 200, "OK", mapMapOf, inputStream);
        }
        return new WebResourceResponse(mimeType, "UTF-8", inputStream);
    }

    /* JADX INFO: renamed from: a */
    public static final int m2602a(int i) {
        try {
            return (int) (i / AbstractC2886N3.m1384b());
        } catch (Exception unused) {
            return i;
        }
    }

    /* JADX INFO: renamed from: a */
    public static final float m2601a(float f) {
        return MathKt.roundToInt(f * 10.0f) / 10.0f;
    }

    /* JADX INFO: renamed from: a */
    public static final Intent m2603a(Context context, BroadcastReceiver broadcastReceiver, IntentFilter filter) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (C2751E3.f962a.m1008B()) {
            return context.registerReceiver(broadcastReceiver, filter, 2);
        }
        return context.registerReceiver(broadcastReceiver, filter);
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m2606a(Context context) {
        ApplicationInfo applicationInfo;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (!C2751E3.f962a.m1010D()) {
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

    /* JADX INFO: renamed from: a */
    public static final void m2605a(C2911Od c2911Od, RelativeLayout.LayoutParams layoutParams, EnumC2817I9 orientation) {
        Intrinsics.checkNotNullParameter(c2911Od, "<this>");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        c2911Od.getClass();
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        C2896Nd c2896Nd = (C2896Nd) c2911Od.f1345a.get(orientation);
        int i = c2896Nd != null ? c2896Nd.f1322a : 0;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        C2896Nd c2896Nd2 = (C2896Nd) c2911Od.f1345a.get(orientation);
        int i2 = c2896Nd2 != null ? c2896Nd2.f1324c : 0;
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        C2896Nd c2896Nd3 = (C2896Nd) c2911Od.f1345a.get(orientation);
        layoutParams.setMargins(i, 0, i2, c2896Nd3 != null ? c2896Nd3.f1325d : 0);
    }
}
