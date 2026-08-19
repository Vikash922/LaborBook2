package com.iab.omid.library.inmobi.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import com.iab.omid.library.inmobi.adsession.OutputDeviceStatus;
import com.iab.omid.library.inmobi.internal.C2635e;
import com.iab.omid.library.inmobi.walking.C2660a;
import com.itextpdf.svg.SvgConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.c */
/* JADX INFO: loaded from: classes6.dex */
public class C2650c {

    /* JADX INFO: renamed from: a */
    private static WindowManager f683a;

    /* JADX INFO: renamed from: b */
    private static String[] f684b = {SvgConstants.Attributes.f3330X, SvgConstants.Attributes.f3333Y, "width", "height"};

    /* JADX INFO: renamed from: c */
    static float f685c = Resources.getSystem().getDisplayMetrics().density;

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.c$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f686a;

        static {
            int[] iArr = new int[OutputDeviceStatus.values().length];
            f686a = iArr;
            try {
                iArr[OutputDeviceStatus.NOT_DETECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.c$b */
    private static class b {

        /* JADX INFO: renamed from: a */
        final float f687a;

        /* JADX INFO: renamed from: b */
        final float f688b;

        b(float f, float f2) {
            this.f687a = f;
            this.f688b = f2;
        }
    }

    /* JADX INFO: renamed from: a */
    static float m690a(int i) {
        return i / f685c;
    }

    /* JADX INFO: renamed from: a */
    private static b m691a(JSONObject jSONObject) {
        float fM690a;
        float fM690a2;
        if (f683a != null) {
            Point point = new Point(0, 0);
            f683a.getDefaultDisplay().getRealSize(point);
            fM690a = m690a(point.x);
            fM690a2 = m690a(point.y);
        } else {
            fM690a = 0.0f;
            fM690a2 = 0.0f;
        }
        return new b(fM690a, fM690a2);
    }

    /* JADX INFO: renamed from: a */
    public static JSONObject m692a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SvgConstants.Attributes.f3330X, m690a(i));
            jSONObject.put(SvgConstants.Attributes.f3333Y, m690a(i2));
            jSONObject.put("width", m690a(i3));
            jSONObject.put("height", m690a(i4));
        } catch (JSONException e) {
            C2651d.m713a("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: a */
    public static void m693a(Context context) {
        if (context != null) {
            f685c = context.getResources().getDisplayMetrics().density;
            f683a = (WindowManager) context.getSystemService("window");
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m694a(JSONObject jSONObject, OutputDeviceStatus outputDeviceStatus) {
        try {
            jSONObject.put("noOutputDevice", m700a(outputDeviceStatus));
        } catch (JSONException e) {
            C2651d.m713a("Error with setting output device status", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m695a(JSONObject jSONObject, C2660a.a aVar) {
        C2635e c2635eM777a = aVar.m777a();
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = aVar.m779b().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", c2635eM777a.m608d());
            jSONObject.put("friendlyObstructionPurpose", c2635eM777a.m606b());
            jSONObject.put("friendlyObstructionReason", c2635eM777a.m605a());
        } catch (JSONException e) {
            C2651d.m713a("Error with setting friendly obstruction", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m696a(JSONObject jSONObject, Boolean bool) {
        try {
            jSONObject.put("hasWindowFocus", bool);
        } catch (JSONException e) {
            C2651d.m713a("Error with setting has window focus", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m697a(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            C2651d.m713a("Error with setting ad session id", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m698a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e) {
            C2651d.m713a("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m699a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: a */
    private static boolean m700a(OutputDeviceStatus outputDeviceStatus) {
        return a.f686a[outputDeviceStatus.ordinal()] == 1;
    }

    /* JADX INFO: renamed from: a */
    private static boolean m701a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        return (jSONArray == null || jSONArray2 == null || jSONArray.length() != jSONArray2.length()) ? false : true;
    }

    /* JADX INFO: renamed from: b */
    public static void m702b(JSONObject jSONObject) {
        b bVarM691a = m691a(jSONObject);
        try {
            jSONObject.put("width", bVarM691a.f687a);
            jSONObject.put("height", bVarM691a.f688b);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m703b(JSONObject jSONObject, Boolean bool) {
        if (bool.booleanValue()) {
            try {
                jSONObject.put("isPipActive", bool);
            } catch (JSONException e) {
                C2651d.m713a("Error with setting is picture-in-picture active", e);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m704b(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            C2651d.m713a("Error with setting not visible reason", e);
        }
    }

    /* JADX INFO: renamed from: b */
    private static boolean m705b(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!m701a(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            if (!m711h(jSONArrayOptJSONArray.optJSONObject(i), jSONArrayOptJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: c */
    private static boolean m706c(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!m701a(jSONArrayOptJSONArray, jSONArrayOptJSONArray2)) {
            return false;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            if (!jSONArrayOptJSONArray.optString(i, "").equals(jSONArrayOptJSONArray2.optString(i, ""))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: d */
    private static boolean m707d(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")));
    }

    /* JADX INFO: renamed from: e */
    private static boolean m708e(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice")));
    }

    /* JADX INFO: renamed from: f */
    private static boolean m709f(JSONObject jSONObject, JSONObject jSONObject2) {
        for (String str : f684b) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: g */
    private static boolean m710g(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    /* JADX INFO: renamed from: h */
    public static boolean m711h(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return false;
        }
        return m709f(jSONObject, jSONObject2) && m710g(jSONObject, jSONObject2) && m708e(jSONObject, jSONObject2) && m707d(jSONObject, jSONObject2) && m706c(jSONObject, jSONObject2) && m705b(jSONObject, jSONObject2);
    }
}
