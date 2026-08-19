package com.inmobi.media;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.u5 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3372u5 {

    /* JADX INFO: renamed from: a */
    public static final Object f2645a = new Object();

    /* JADX INFO: renamed from: b */
    public static final Object f2646b = new Object();

    /* JADX INFO: renamed from: c */
    public static boolean f2647c;

    /* JADX INFO: renamed from: d */
    public static boolean f2648d;

    /* JADX INFO: renamed from: e */
    public static JSONObject f2649e;

    /* JADX INFO: renamed from: f */
    public static JSONObject f2650f;

    /* JADX INFO: renamed from: a */
    public static final void m2490a(JSONObject jSONObject) {
        synchronized (f2646b) {
            Objects.toString(f2650f);
            Objects.toString(jSONObject);
            f2650f = jSONObject;
            f2648d = true;
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "unified_id_info_store");
                JSONObject jSONObject2 = f2650f;
                if (jSONObject2 == null) {
                    c3133e6M2058a.m2105a("publisher_provided_unified_id");
                } else {
                    C3133e6.m2101a(c3133e6M2058a, "publisher_provided_unified_id", String.valueOf(jSONObject2), false, 4, (Object) null);
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final JSONObject m2491b() {
        synchronized (f2645a) {
            if (f2647c) {
                return f2649e;
            }
            f2647c = true;
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "unified_id_info_store");
                Intrinsics.checkNotNullParameter("ufids", "key");
                String string = c3133e6M2058a.f2045a.getString("ufids", null);
                if (string != null) {
                    try {
                        f2649e = new JSONObject(string);
                    } catch (JSONException unused) {
                    }
                    return f2649e;
                }
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    public static final JSONObject m2489a() {
        synchronized (f2646b) {
            if (f2648d) {
                Objects.toString(f2650f);
                return f2650f;
            }
            f2648d = true;
            Context contextM1254d = C2849Kb.m1254d();
            String string = null;
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "unified_id_info_store");
                Intrinsics.checkNotNullParameter("publisher_provided_unified_id", "key");
                string = c3133e6M2058a.f2045a.getString("publisher_provided_unified_id", null);
            }
            try {
                f2650f = new JSONObject(string);
            } catch (NullPointerException | JSONException unused) {
            }
            Objects.toString(f2650f);
            return f2650f;
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2492b(JSONObject jSONObject) {
        synchronized (f2645a) {
            f2649e = jSONObject;
            f2647c = true;
            Context contextM1254d = C2849Kb.m1254d();
            if (contextM1254d != null) {
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "unified_id_info_store");
                JSONObject jSONObject2 = f2649e;
                if (jSONObject2 == null) {
                    c3133e6M2058a.m2105a("ufids");
                } else {
                    C3133e6.m2101a(c3133e6M2058a, "ufids", String.valueOf(jSONObject2), false, 4, (Object) null);
                }
                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(contextM1254d).edit();
                JSONObject jSONObject3 = f2649e;
                if (jSONObject3 == null) {
                    editorEdit.remove("InMobi_unifiedId");
                } else {
                    editorEdit.putString("InMobi_unifiedId", String.valueOf(jSONObject3));
                }
                editorEdit.apply();
            }
        }
    }
}
