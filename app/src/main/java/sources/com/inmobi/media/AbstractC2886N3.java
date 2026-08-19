package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.Typography;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.N3 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2886N3 {

    /* JADX INFO: renamed from: c */
    public static String f1295c;

    /* JADX INFO: renamed from: f */
    public static JSONObject f1298f;

    /* JADX INFO: renamed from: g */
    public static Integer f1299g;

    /* JADX INFO: renamed from: h */
    public static Float f1300h;

    /* JADX INFO: renamed from: a */
    public static final C2901O3 f1293a = new C2901O3(0, 2.0f, 0);

    /* JADX INFO: renamed from: b */
    public static final C2871M3 f1294b = new C2871M3(0, 0);

    /* JADX INFO: renamed from: d */
    public static float f1296d = -1.0f;

    /* JADX INFO: renamed from: e */
    public static boolean f1297e = true;

    /* JADX INFO: renamed from: i */
    public static final boolean f1301i = C2751E3.f962a.m1012F();

    /* JADX INFO: renamed from: a */
    public static String m1378a() {
        Display displayM1377a;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null || (displayM1377a = m1377a(contextM1254d)) == null) {
            return "0x0";
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayM1377a.getMetrics(displayMetrics);
        return new StringBuilder().append(displayMetrics.widthPixels).append('x').append(displayMetrics.heightPixels).toString();
    }

    /* JADX INFO: renamed from: b */
    public static float m1384b() {
        Display displayM1377a;
        if (f1296d == -1.0f) {
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d == null || (displayM1377a = m1377a(contextM1254d)) == null) {
                return 2.0f;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayM1377a.getMetrics(displayMetrics);
            float f = displayMetrics.density;
            if (f == 0.0f) {
                return 2.0f;
            }
            f1296d = f;
        }
        return f1296d;
    }

    /* JADX INFO: renamed from: c */
    public static HashMap m1387c() {
        HashMap map = new HashMap();
        try {
            map.put("d-device-screen-density", String.valueOf(m1384b()));
            C2901O3 c2901o3M1388d = m1388d();
            map.put("d-device-screen-size", new StringBuilder().append(c2901o3M1388d.f1330a).append('X').append(c2901o3M1388d.f1331b).toString());
            map.put("d-density-dependent-screen-size", m1378a());
            map.put("d-orientation", String.valueOf((int) m1391g()));
            Float f = f1300h;
            map.put("d-textsize", String.valueOf(f != null ? f.floatValue() : 37.0f));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        }
        return map;
    }

    /* JADX INFO: renamed from: d */
    public static C2901O3 m1388d() {
        Display displayM1377a;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null && (displayM1377a = m1377a(contextM1254d)) != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayM1377a.getMetrics(displayMetrics);
            float f = displayMetrics.density;
            return new C2901O3((int) (displayMetrics.widthPixels / f), f, (int) (displayMetrics.heightPixels / f));
        }
        return f1293a;
    }

    /* JADX INFO: renamed from: e */
    public static String m1389e() {
        String string = null;
        if (f1297e) {
            return null;
        }
        String str = f1295c;
        if (str != null) {
            return str;
        }
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "display_info_store");
            Intrinsics.checkNotNullParameter("gesture_margin", "key");
            string = c3133e6M2058a.f2045a.getString("gesture_margin", null);
        }
        f1295c = string;
        return string;
    }

    /* JADX INFO: renamed from: f */
    public static Integer m1390f() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return null;
        }
        int i = Settings.Secure.getInt(contextM1254d.getContentResolver(), "navigation_mode", -1);
        if (i == 0 || i == 1) {
            return 0;
        }
        return i != 2 ? null : 1;
    }

    /* JADX INFO: renamed from: g */
    public static byte m1391g() {
        Display displayM1377a;
        int rotation;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null || (displayM1377a = m1377a(contextM1254d)) == null || (rotation = displayM1377a.getRotation()) == 0) {
            return (byte) 1;
        }
        if (rotation == 1) {
            return (byte) 3;
        }
        if (rotation == 2) {
            return (byte) 2;
        }
        if (rotation == 3) {
            return (byte) 4;
        }
        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        return (byte) 1;
    }

    /* JADX INFO: renamed from: h */
    public static C2901O3 m1392h() {
        Display displayM1377a;
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null && (displayM1377a = m1377a(contextM1254d)) != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayM1377a.getRealMetrics(displayMetrics);
            float f = displayMetrics.density;
            return new C2901O3((int) (displayMetrics.widthPixels / f), f, (int) (displayMetrics.heightPixels / f));
        }
        return f1293a;
    }

    /* JADX INFO: renamed from: a */
    public static void m1379a(final WindowInsets insets, final Context context) {
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (f1297e) {
            return;
        }
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.N3$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2886N3.m1386b(insets, context);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static Display m1377a(Context context) {
        if (C2751E3.f962a.m1011E()) {
            Object systemService = context.getSystemService("display");
            DisplayManager displayManager = systemService instanceof DisplayManager ? (DisplayManager) systemService : null;
            if (displayManager != null) {
                return displayManager.getDisplay(0);
            }
            return null;
        }
        Object systemService2 = context.getSystemService("window");
        WindowManager windowManager = systemService2 instanceof WindowManager ? (WindowManager) systemService2 : null;
        if (windowManager != null) {
            return windowManager.getDefaultDisplay();
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static final void m1385b(Context context) {
        Window window;
        WindowInsets rootWindowInsets;
        if (f1297e || !(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return;
        }
        m1379a(rootWindowInsets, context);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m1376a(android.view.WindowInsets r3) {
        /*
            java.lang.String r0 = "insets"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            com.inmobi.media.E3 r0 = com.inmobi.media.C2751E3.f962a
            boolean r0 = r0.m1040z()
            if (r0 == 0) goto L51
            byte r0 = m1391g()
            com.inmobi.media.I9 r0 = com.inmobi.media.AbstractC2832J9.m1195a(r0)
            int r1 = androidx.core.view.WindowInsetsCompat.Type.systemGestures()
            android.graphics.Insets r3 = r3.getInsets(r1)
            java.lang.String r1 = "getInsets(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r1)
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == 0) goto L49
            if (r0 == r1) goto L40
            r2 = 2
            if (r0 == r2) goto L49
            r2 = 3
            if (r0 != r2) goto L3a
            int r0 = r3.right
            if (r0 != 0) goto L52
            int r3 = r3.bottom
            if (r3 != 0) goto L52
            goto L51
        L3a:
            kotlin.NoWhenBranchMatchedException r3 = new kotlin.NoWhenBranchMatchedException
            r3.<init>()
            throw r3
        L40:
            int r0 = r3.left
            if (r0 != 0) goto L52
            int r3 = r3.bottom
            if (r3 != 0) goto L52
            goto L51
        L49:
            int r0 = r3.left
            if (r0 != 0) goto L52
            int r3 = r3.right
            if (r3 != 0) goto L52
        L51:
            r1 = 0
        L52:
            java.lang.String r3 = "N3"
            java.lang.String r0 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.AbstractC2886N3.m1376a(android.view.WindowInsets):int");
    }

    /* JADX INFO: renamed from: b */
    public static final void m1386b(WindowInsets insets, Context context) {
        Intrinsics.checkNotNullParameter(insets, "$insets");
        try {
            String string = insets.getSystemGestureInsets().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            String[] strArr = (String[]) new Regex("Insets").split(string, 0).toArray(new String[0]);
            StringBuffer stringBuffer = new StringBuffer();
            if (strArr.length > 1) {
                String[] strArr2 = (String[]) new Regex(",").split(new Regex("[^0-9,=a-zA-Z]*").replace(strArr[1], ""), 0).toArray(new String[0]);
                stringBuffer.append("{");
                int length = strArr2.length;
                for (int i = 0; i < length; i++) {
                    String[] strArr3 = (String[]) new Regex("=").split(strArr2[i], 0).toArray(new String[0]);
                    if (strArr3.length == 2) {
                        stringBuffer.append(Typography.quote + strArr3[0] + Typography.quote);
                        stringBuffer.append(":");
                        stringBuffer.append(AbstractC3429y2.m2609b(Integer.parseInt(strArr3[1]) / m1384b()));
                        if (i < strArr2.length - 1) {
                            stringBuffer.append(", ");
                        }
                    }
                }
                stringBuffer.append("}");
            }
            if (stringBuffer.length() > 0) {
                f1295c = stringBuffer.toString();
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                Intrinsics.checkNotNull(context);
                C3133e6.m2101a(AbstractC3118d6.m2058a(context, "display_info_store"), "gesture_margin", stringBuffer.toString(), false, 4, (Object) null);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m1382a(final LinkedHashMap value) {
        Intrinsics.checkNotNullParameter(value, "value");
        final Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.N3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                AbstractC2886N3.m1383a(value, contextM1254d);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1383a(Map value, Context context) throws JSONException {
        Intrinsics.checkNotNullParameter(value, "$value");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        Objects.toString(value);
        if (f1298f == null) {
            f1298f = new JSONObject();
        }
        Iterator it = value.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            JSONObject jSONObject = f1298f;
            if (jSONObject != null) {
                jSONObject.put(String.valueOf(iIntValue), value.get(Integer.valueOf(iIntValue)));
            }
        }
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(context, "display_info_store");
        JSONObject jSONObject2 = f1298f;
        C3133e6.m2101a(c3133e6M2058a, "safe_area", jSONObject2 != null ? jSONObject2.toString() : null, false, 4, (Object) null);
    }

    /* JADX INFO: renamed from: a */
    public static void m1380a(final Integer num) {
        final Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.N3$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2886N3.m1381a(num, contextM1254d);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1381a(Integer num, Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        f1299g = num;
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6.m2099a(AbstractC3118d6.m2058a(context, "display_info_store"), "nav_bar_type", num != null ? num.intValue() : -1, false, 4, (Object) null);
    }
}
