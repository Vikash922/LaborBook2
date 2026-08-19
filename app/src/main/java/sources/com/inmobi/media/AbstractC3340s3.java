package com.inmobi.media;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsService;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.s3 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3340s3 {

    /* JADX INFO: renamed from: a */
    public static String f2526a;

    /* JADX INFO: renamed from: a */
    public static final String m2397a(Context context) {
        if (!C2751E3.f962a.m1012F()) {
            return null;
        }
        if (context == null || f2526a != null) {
            return f2526a;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.com"));
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
            String str = resolveInfoResolveActivity != null ? resolveInfoResolveActivity.activityInfo.packageName : null;
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
            ArrayList arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                Intent intent2 = new Intent();
                intent2.setAction(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                if (packageManager.resolveService(intent2, 0) != null) {
                    String packageName = resolveInfo.activityInfo.packageName;
                    Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
                    arrayList.add(packageName);
                }
            }
            if (arrayList.isEmpty()) {
                f2526a = null;
            } else if (arrayList.size() == 1) {
                f2526a = (String) arrayList.get(0);
            } else if (!TextUtils.isEmpty(str) && !m2398a(context, intent) && CollectionsKt.contains(arrayList, str)) {
                f2526a = str;
            } else if (arrayList.contains("com.android.chrome")) {
                f2526a = "com.android.chrome";
            } else if (arrayList.contains("com.chrome.beta")) {
                f2526a = "com.chrome.beta";
            } else if (arrayList.contains("com.chrome.dev")) {
                f2526a = "com.chrome.dev";
            } else if (arrayList.contains("com.google.android.apps.chrome")) {
                f2526a = "com.google.android.apps.chrome";
            }
        } catch (Exception unused) {
        }
        return f2526a;
    }

    /* JADX INFO: renamed from: a */
    public static boolean m2398a(Context context, Intent intent) {
        try {
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
            Intrinsics.checkNotNullExpressionValue(listQueryIntentActivities, "queryIntentActivities(...)");
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                IntentFilter intentFilter = resolveInfo.filter;
                if (intentFilter != null) {
                    Intrinsics.checkNotNull(intentFilter);
                    if (intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                        return true;
                    }
                }
            }
            return false;
        } catch (RuntimeException unused) {
            Log.e("s3", "Runtime exception while getting specialized handlers");
            return false;
        }
    }
}
