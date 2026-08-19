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

/* JADX INFO: renamed from: com.inmobi.media.u5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0523u5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f498a = new Object();
    public static final Object b = new Object();
    public static boolean c;
    public static boolean d;
    public static JSONObject e;
    public static JSONObject f;

    public static final void a(JSONObject jSONObject) {
        synchronized (b) {
            Objects.toString(f);
            Objects.toString(jSONObject);
            f = jSONObject;
            d = true;
            Context contextD = Kb.d();
            if (contextD != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "unified_id_info_store");
                JSONObject jSONObject2 = f;
                if (jSONObject2 == null) {
                    c0284e6A.a("publisher_provided_unified_id");
                } else {
                    C0284e6.a(c0284e6A, "publisher_provided_unified_id", String.valueOf(jSONObject2), false, 4, (Object) null);
                    Unit unit = Unit.INSTANCE;
                }
            }
        }
    }

    public static final JSONObject b() {
        synchronized (f498a) {
            if (c) {
                return e;
            }
            c = true;
            Context contextD = Kb.d();
            if (contextD != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "unified_id_info_store");
                Intrinsics.checkNotNullParameter("ufids", "key");
                String string = c0284e6A.f340a.getString("ufids", null);
                if (string != null) {
                    try {
                        e = new JSONObject(string);
                    } catch (JSONException unused) {
                    }
                    return e;
                }
            }
            return null;
        }
    }

    public static final JSONObject a() {
        synchronized (b) {
            if (d) {
                Objects.toString(f);
                return f;
            }
            d = true;
            Context contextD = Kb.d();
            String string = null;
            if (contextD != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "unified_id_info_store");
                Intrinsics.checkNotNullParameter("publisher_provided_unified_id", "key");
                string = c0284e6A.f340a.getString("publisher_provided_unified_id", null);
            }
            try {
                f = new JSONObject(string);
            } catch (NullPointerException | JSONException unused) {
            }
            Objects.toString(f);
            return f;
        }
    }

    public static final void b(JSONObject jSONObject) {
        synchronized (f498a) {
            e = jSONObject;
            c = true;
            Context contextD = Kb.d();
            if (contextD != null) {
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "unified_id_info_store");
                JSONObject jSONObject2 = e;
                if (jSONObject2 == null) {
                    c0284e6A.a("ufids");
                } else {
                    C0284e6.a(c0284e6A, "ufids", String.valueOf(jSONObject2), false, 4, (Object) null);
                }
                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(contextD).edit();
                JSONObject jSONObject3 = e;
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
