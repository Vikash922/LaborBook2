package com.inmobi.media;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.webkit.ProxyConfig;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.w2 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3399w2 {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int f2699a = 0;

    /* JADX INFO: renamed from: a */
    public static boolean m2540a(Context context, String str) {
        if (str != null) {
            if (context == null) {
                Uri uri = Uri.parse(str);
                Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
                return m2541a(uri);
            }
            try {
                if (new Intent("android.intent.action.VIEW", Uri.parse(str)).resolveActivity(context.getPackageManager()) != null) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    public static final String m2543b(Context context, C3329r7 c3329r7, String str, String str2) {
        String stringExtra;
        if (AbstractC3429y2.m2607a(str)) {
            Intrinsics.checkNotNull(str);
            return m2539a(context, c3329r7, str, (String) null);
        }
        try {
            Uri uri = Uri.parse(str2);
            try {
                stringExtra = Intent.parseUri(str2, 1).getStringExtra("browser_fallback_url");
            } catch (URISyntaxException unused) {
                Intrinsics.checkNotNullExpressionValue("w2", "TAG");
                stringExtra = null;
            }
            if (Intrinsics.areEqual("intent", uri.getScheme()) && AbstractC3429y2.m2607a(stringExtra)) {
                String strDecode = URLDecoder.decode(stringExtra, "UTF-8");
                Intrinsics.checkNotNullExpressionValue(strDecode, "decode(...)");
                return m2539a(context, c3329r7, strDecode, (String) null);
            }
        } catch (Exception unused2) {
            Intrinsics.checkNotNullExpressionValue("w2", "TAG");
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public static int m2537a(Context context, String url, ResolveInfo resolveInfo, InterfaceC2698Aa redirectionValidator, String api) throws URISyntaxException {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (context == null) {
            return 7;
        }
        if (!redirectionValidator.mo864d()) {
            redirectionValidator.mo863a("EX_" + api);
            return 8;
        }
        Intent uri = Intent.parseUri(url, 3);
        Intrinsics.checkNotNullExpressionValue(uri, "parseUri(...)");
        if ((resolveInfo != null ? resolveInfo.activityInfo : null) != null) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if ((activityInfo != null ? activityInfo.packageName : null) != null) {
                if ((activityInfo != null ? activityInfo.name : null) != null) {
                    uri.setClassName(activityInfo.packageName, activityInfo.name);
                }
            }
        }
        uri.setFlags(268435456);
        context.startActivity(uri);
        return 0;
    }

    /* JADX INFO: renamed from: b */
    public static ArrayList m2544b(Context context, String url) throws URISyntaxException {
        Intrinsics.checkNotNullParameter(url, "url");
        ArrayList arrayList = new ArrayList();
        if (url.length() == 0 || context == null) {
            return arrayList;
        }
        Intent uri = Intent.parseUri(url, 3);
        Intrinsics.checkNotNullExpressionValue(uri, "parseUri(...)");
        List<ResolveInfo> listQueryIntentActivityOptions = context.getPackageManager().queryIntentActivityOptions((ComponentName) null, (Intent[]) null, uri, 0);
        Intrinsics.checkNotNullExpressionValue(listQueryIntentActivityOptions, "queryIntentActivityOptions(...)");
        for (ResolveInfo resolveInfo : listQueryIntentActivityOptions) {
            if (resolveInfo.activityInfo.exported) {
                Intrinsics.checkNotNull(resolveInfo);
                arrayList.add(resolveInfo);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: a */
    public static int m2538a(Context context, String url, InterfaceC2698Aa redirectionValidator, String api) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        if (context == null) {
            return 7;
        }
        if (!redirectionValidator.mo864d()) {
            redirectionValidator.mo863a("EX_" + api);
            return 8;
        }
        String stringExtra = null;
        try {
            Intent uri = Intent.parseUri(url, 0);
            uri.setFlags(268435456);
            context.startActivity(uri);
            return 0;
        } catch (ActivityNotFoundException e) {
            Uri uri2 = Uri.parse(url);
            try {
                stringExtra = Intent.parseUri(url, 1).getStringExtra("browser_fallback_url");
            } catch (URISyntaxException unused) {
                Intrinsics.checkNotNullExpressionValue("w2", "TAG");
            }
            if (Intrinsics.areEqual("intent", uri2.getScheme()) && stringExtra != null && stringExtra.length() != 0) {
                return m2538a(context, stringExtra, redirectionValidator, api);
            }
            throw e;
        } catch (NullPointerException e2) {
            Uri uri3 = Uri.parse(url);
            try {
                stringExtra = Intent.parseUri(url, 1).getStringExtra("browser_fallback_url");
            } catch (URISyntaxException unused2) {
                Intrinsics.checkNotNullExpressionValue("w2", "TAG");
            }
            if (Intrinsics.areEqual("intent", uri3.getScheme()) && stringExtra != null && stringExtra.length() != 0) {
                return m2538a(context, stringExtra, redirectionValidator, api);
            }
            throw e2;
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m2539a(Context context, C3329r7 redirectionValidator, String url, String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter("NATIVE", "api");
        if (context == null) {
            return null;
        }
        redirectionValidator.getClass();
        try {
            Intent uri = Intent.parseUri(url, 0);
            if (uri.resolveActivity(context.getPackageManager()) != null) {
                uri.setFlags(268435456);
                context.startActivity(uri);
            } else {
                Intrinsics.checkNotNullExpressionValue("w2", "TAG");
                url = m2543b(context, redirectionValidator, str, url);
            }
            return url;
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("w2", "TAG");
            return m2543b(context, redirectionValidator, str, url);
        }
    }

    /* JADX INFO: renamed from: a */
    public static boolean m2541a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return Intrinsics.areEqual(ProxyConfig.MATCH_HTTP, uri.getScheme()) || Intrinsics.areEqual("https", uri.getScheme());
    }

    /* JADX INFO: renamed from: a */
    public static boolean m2542a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Uri uri = Uri.parse(url);
        Intrinsics.checkNotNull(uri);
        return (!m2541a(uri) || Intrinsics.areEqual("play.google.com", uri.getHost()) || Intrinsics.areEqual("market.android.com", uri.getHost()) || Intrinsics.areEqual("market", uri.getScheme())) ? false : true;
    }
}
