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

/* JADX INFO: loaded from: classes6.dex */
public abstract class N3 {
    public static String c;
    public static JSONObject f;
    public static Integer g;
    public static Float h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final O3 f189a = new O3(0, 2.0f, 0);
    public static final M3 b = new M3(0, 0);
    public static float d = -1.0f;
    public static boolean e = true;
    public static final boolean i = E3.f104a.F();

    public static String a() {
        Display displayA;
        Context contextD = Kb.d();
        if (contextD == null || (displayA = a(contextD)) == null) {
            return "0x0";
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayA.getMetrics(displayMetrics);
        return new StringBuilder().append(displayMetrics.widthPixels).append('x').append(displayMetrics.heightPixels).toString();
    }

    public static float b() {
        Display displayA;
        if (d == -1.0f) {
            Context contextD = Kb.d();
            if (contextD == null || (displayA = a(contextD)) == null) {
                return 2.0f;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayA.getMetrics(displayMetrics);
            float f2 = displayMetrics.density;
            if (f2 == 0.0f) {
                return 2.0f;
            }
            d = f2;
        }
        return d;
    }

    public static HashMap c() {
        HashMap map = new HashMap();
        try {
            map.put("d-device-screen-density", String.valueOf(b()));
            O3 o3D = d();
            map.put("d-device-screen-size", new StringBuilder().append(o3D.f199a).append('X').append(o3D.b).toString());
            map.put("d-density-dependent-screen-size", a());
            map.put("d-orientation", String.valueOf((int) g()));
            Float f2 = h;
            map.put("d-textsize", String.valueOf(f2 != null ? f2.floatValue() : 37.0f));
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        }
        return map;
    }

    public static O3 d() {
        Display displayA;
        Context contextD = Kb.d();
        if (contextD != null && (displayA = a(contextD)) != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayA.getMetrics(displayMetrics);
            float f2 = displayMetrics.density;
            return new O3((int) (displayMetrics.widthPixels / f2), f2, (int) (displayMetrics.heightPixels / f2));
        }
        return f189a;
    }

    public static String e() {
        String string = null;
        if (e) {
            return null;
        }
        String str = c;
        if (str != null) {
            return str;
        }
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "display_info_store");
            Intrinsics.checkNotNullParameter("gesture_margin", "key");
            string = c0284e6A.f340a.getString("gesture_margin", null);
        }
        c = string;
        return string;
    }

    public static Integer f() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return null;
        }
        int i2 = Settings.Secure.getInt(contextD.getContentResolver(), "navigation_mode", -1);
        if (i2 == 0 || i2 == 1) {
            return 0;
        }
        return i2 != 2 ? null : 1;
    }

    public static byte g() {
        Display displayA;
        int rotation;
        Context contextD = Kb.d();
        if (contextD == null || (displayA = a(contextD)) == null || (rotation = displayA.getRotation()) == 0) {
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

    public static O3 h() {
        Display displayA;
        Context contextD = Kb.d();
        if (contextD != null && (displayA = a(contextD)) != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            displayA.getRealMetrics(displayMetrics);
            float f2 = displayMetrics.density;
            return new O3((int) (displayMetrics.widthPixels / f2), f2, (int) (displayMetrics.heightPixels / f2));
        }
        return f189a;
    }

    public static void a(final WindowInsets insets, final Context context) {
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (e) {
            return;
        }
        Kb.a(new Runnable() { // from class: com.inmobi.media.N3$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                N3.b(insets, context);
            }
        });
    }

    public static Display a(Context context) {
        if (E3.f104a.E()) {
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

    public static final void b(Context context) {
        Window window;
        WindowInsets rootWindowInsets;
        if (e || !(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return;
        }
        a(rootWindowInsets, context);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.view.WindowInsets r3) {
        /*
            java.lang.String r0 = "insets"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            com.inmobi.media.E3 r0 = com.inmobi.media.E3.f104a
            boolean r0 = r0.z()
            if (r0 == 0) goto L51
            byte r0 = g()
            com.inmobi.media.I9 r0 = com.inmobi.media.J9.a(r0)
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.N3.a(android.view.WindowInsets):int");
    }

    public static final void b(WindowInsets insets, Context context) {
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
                for (int i2 = 0; i2 < length; i2++) {
                    String[] strArr3 = (String[]) new Regex("=").split(strArr2[i2], 0).toArray(new String[0]);
                    if (strArr3.length == 2) {
                        stringBuffer.append(Typography.quote + strArr3[0] + Typography.quote);
                        stringBuffer.append(":");
                        stringBuffer.append(AbstractC0576y2.b(Integer.parseInt(strArr3[1]) / b()));
                        if (i2 < strArr2.length - 1) {
                            stringBuffer.append(", ");
                        }
                    }
                }
                stringBuffer.append("}");
            }
            if (stringBuffer.length() > 0) {
                c = stringBuffer.toString();
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                Intrinsics.checkNotNull(context);
                C0284e6.a(AbstractC0268d6.a(context, "display_info_store"), "gesture_margin", stringBuffer.toString(), false, 4, (Object) null);
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        }
    }

    public static void a(final LinkedHashMap value) {
        Intrinsics.checkNotNullParameter(value, "value");
        final Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        Kb.a(new Runnable() { // from class: com.inmobi.media.N3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                N3.a(value, contextD);
            }
        });
    }

    public static final void a(Map value, Context context) throws JSONException {
        Intrinsics.checkNotNullParameter(value, "$value");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        Objects.toString(value);
        if (f == null) {
            f = new JSONObject();
        }
        Iterator it = value.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            JSONObject jSONObject = f;
            if (jSONObject != null) {
                jSONObject.put(String.valueOf(iIntValue), value.get(Integer.valueOf(iIntValue)));
            }
        }
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6 c0284e6A = AbstractC0268d6.a(context, "display_info_store");
        JSONObject jSONObject2 = f;
        C0284e6.a(c0284e6A, "safe_area", jSONObject2 != null ? jSONObject2.toString() : null, false, 4, (Object) null);
    }

    public static void a(final Integer num) {
        final Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        Kb.a(new Runnable() { // from class: com.inmobi.media.N3$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                N3.a(num, contextD);
            }
        });
    }

    public static final void a(Integer num, Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullExpressionValue("N3", "TAG");
        g = num;
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6.a(AbstractC0268d6.a(context, "display_info_store"), "nav_bar_type", num != null ? num.intValue() : -1, false, 4, (Object) null);
    }
}
