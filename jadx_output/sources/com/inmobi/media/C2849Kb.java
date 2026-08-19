package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebSettings;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Kb */
/* JADX INFO: loaded from: classes6.dex */
public final class C2849Kb {

    /* JADX INFO: renamed from: b */
    public static Context f1172b = null;

    /* JADX INFO: renamed from: c */
    public static String f1173c = "";

    /* JADX INFO: renamed from: d */
    public static String f1174d;

    /* JADX INFO: renamed from: g */
    public static boolean f1177g;

    /* JADX INFO: renamed from: h */
    public static final ExecutorService f1178h;

    /* JADX INFO: renamed from: i */
    public static int f1179i;

    /* JADX INFO: renamed from: a */
    public static final C2849Kb f1171a = new C2849Kb();

    /* JADX INFO: renamed from: e */
    public static final AtomicBoolean f1175e = new AtomicBoolean();

    /* JADX INFO: renamed from: f */
    public static final Lazy f1176f = LazyKt.lazy(C2834Jb.f1139a);

    /* JADX INFO: renamed from: b */
    public static final String m1248b() {
        return f1174d;
    }

    @JvmStatic
    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m1251c() {
    }

    /* JADX INFO: renamed from: d */
    public static final Context m1254d() {
        return f1172b;
    }

    @JvmStatic
    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m1255e() {
    }

    /* JADX INFO: renamed from: f */
    public static final C3179h7 m1256f() {
        return (C3179h7) f1176f.getValue();
    }

    @JvmStatic
    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m1257g() {
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ void m1258j() {
    }

    /* JADX INFO: renamed from: k */
    public static final String m1259k() {
        Context applicationContext;
        String str = "";
        if (f1173c.length() == 0) {
            Context context = f1172b;
            if (context != null) {
                try {
                    applicationContext = context.getApplicationContext();
                } catch (Exception e) {
                    try {
                        throw new C2995Uc(e.getMessage());
                    } catch (C2995Uc e2) {
                        Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
                        C3402w5 c3402w5 = C3402w5.f2709a;
                        C3114d2 event = new C3114d2(e2);
                        Intrinsics.checkNotNullParameter(event, "event");
                        C3402w5.f2712d.m2158a(event);
                        try {
                            String property = System.getProperty("http.agent");
                            if (property != null) {
                                str = property;
                            }
                            Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
                        } catch (Exception e3) {
                            Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
                            Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
                            C3402w5 c3402w52 = C3402w5.f2709a;
                            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e3, "event"));
                        }
                    } catch (Exception unused) {
                        Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
                    }
                }
            } else {
                applicationContext = null;
            }
            String defaultUserAgent = WebSettings.getDefaultUserAgent(applicationContext);
            Intrinsics.checkNotNull(defaultUserAgent);
            str = defaultUserAgent;
            f1173c = str;
        }
        return f1173c;
    }

    @JvmStatic
    /* JADX INFO: renamed from: l */
    public static /* synthetic */ void m1260l() {
    }

    /* JADX INFO: renamed from: m */
    public static final boolean m1261m() {
        return f1175e.get();
    }

    @JvmStatic
    /* JADX INFO: renamed from: n */
    public static /* synthetic */ void m1262n() {
    }

    /* JADX INFO: renamed from: o */
    public static final boolean m1263o() {
        return f1177g;
    }

    @JvmStatic
    /* JADX INFO: renamed from: p */
    public static /* synthetic */ void m1264p() {
    }

    /* JADX INFO: renamed from: q */
    public static final boolean m1265q() {
        return f1179i == 2;
    }

    @JvmStatic
    /* JADX INFO: renamed from: r */
    public static /* synthetic */ void m1266r() {
    }

    @JvmStatic
    /* JADX INFO: renamed from: u */
    public static final void m1267u() {
        f1172b = null;
        f1174d = null;
        f1179i = 0;
    }

    /* JADX INFO: renamed from: a */
    public final void m1270a(int i) {
        f1179i = i;
    }

    /* JADX INFO: renamed from: h */
    public final String m1276h() {
        Context context = f1172b;
        if (context == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(context, "coppa_store");
        Intrinsics.checkNotNullParameter("im_accid", "key");
        return c3133e6M2058a.f2045a.getString("im_accid", null);
    }

    /* JADX INFO: renamed from: i */
    public final int m1277i() {
        return f1179i;
    }

    /* JADX INFO: renamed from: s */
    public final void m1278s() {
        f1174d = null;
        f1172b = null;
        f1179i = 3;
    }

    /* JADX INFO: renamed from: t */
    public final void m1279t() {
        f1179i = 2;
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1246a(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        f1178h.submit(runnable);
    }

    /* JADX INFO: renamed from: b */
    public static final void m1249b(boolean z) {
        f1177g = z;
    }

    /* JADX INFO: renamed from: c */
    public static final void m1252c(Context context) {
        f1172b = context;
    }

    /* JADX INFO: renamed from: a */
    public static final void m1247a(boolean z) {
        f1175e.set(z);
        if (z) {
            m1256f().m2216b(new C3084b2(101, 6, (String) null));
        } else {
            m1256f().m2216b(new C3084b2(102, 6, (String) null));
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: b */
    public static final boolean m1250b(Context context, String accountId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        f1179i = 1;
        f1172b = context.getApplicationContext();
        f1175e.set(true);
        f1174d = accountId;
        return true;
    }

    /* JADX INFO: renamed from: c */
    public static final void m1253c(String str) {
        f1174d = str;
    }

    /* JADX INFO: renamed from: a */
    public final void m1271a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            AbstractC3341s4.m2400a(m1274b(context));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1269a() {
        Context context = f1172b;
        if (context != null) {
            File fileM1274b = m1274b(context);
            if (!fileM1274b.mkdir() && !fileM1274b.isDirectory()) {
                Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
            } else {
                Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1273a(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        context.getPackageManager();
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null) {
                return false;
            }
            for (String str2 : strArr) {
                if (Intrinsics.areEqual(str2, str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
            return false;
        }
    }

    static {
        Intrinsics.checkNotNullExpressionValue("Kb", "TAG");
        f1178h = Executors.newSingleThreadExecutor(new ThreadFactoryC3297p5("Kb"));
    }

    /* JADX INFO: renamed from: b */
    public final File m1274b(Context context) {
        return new File(context != null ? context.getFilesDir() : null, "im_cached_content");
    }

    /* JADX INFO: renamed from: b */
    public final void m1275b(String primaryAccountId) {
        Intrinsics.checkNotNullParameter(primaryAccountId, "primaryAccountId");
        Context context = f1172b;
        if (context != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6.m2101a(AbstractC3118d6.m2058a(context, "coppa_store"), "im_accid", primaryAccountId, false, 4, (Object) null);
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final void m1245a(Context context, Application.ActivityLifecycleCallbacks lifecycleCallbacks) {
        Intrinsics.checkNotNullParameter(lifecycleCallbacks, "lifecycleCallbacks");
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            activity.getApplication().unregisterActivityLifecycleCallbacks(lifecycleCallbacks);
            activity.getApplication().registerActivityLifecycleCallbacks(lifecycleCallbacks);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m1272a(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        context.startActivity(intent);
    }

    /* JADX INFO: renamed from: a */
    public final File m1268a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        m1269a();
        File fileM1274b = m1274b(f1172b);
        int length = key.length() / 2;
        String strSubstring = key.substring(0, length);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        StringBuilder sbAppend = new StringBuilder().append(String.valueOf(strSubstring.hashCode() & Integer.MAX_VALUE));
        String strSubstring2 = key.substring(length);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
        return new File(fileM1274b, sbAppend.append(strSubstring2.hashCode() & Integer.MAX_VALUE).toString());
    }
}
