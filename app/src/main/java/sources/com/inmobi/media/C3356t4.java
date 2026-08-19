package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.RootConfig;
import com.inmobi.sdk.InMobiSdk;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.t4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3356t4 {

    /* JADX INFO: renamed from: a */
    public static final C3356t4 f2542a = new C3356t4();

    /* JADX INFO: renamed from: b */
    public static JSONObject f2543b;

    /* JADX INFO: renamed from: c */
    public static JSONObject f2544c;

    /* JADX INFO: renamed from: d */
    public static JSONObject f2545d;

    /* JADX INFO: renamed from: e */
    public static RootConfig f2546e;

    /* JADX WARN: Removed duplicated region for block: B:71:0x00e1 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final org.json.JSONObject m2413c() {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3356t4.m2413c():org.json.JSONObject");
    }

    @JvmStatic
    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m2415d() {
    }

    /* JADX INFO: renamed from: e */
    public static final byte m2416e() {
        JSONObject jSONObjectM2413c = m2413c();
        if (jSONObjectM2413c == null) {
            return (byte) -1;
        }
        if (jSONObjectM2413c.has(InMobiSdk.IM_GDPR_CONSENT_IAB)) {
            return (byte) 1;
        }
        if (!jSONObjectM2413c.has("gdpr_consent_available")) {
            return (byte) -1;
        }
        try {
            return jSONObjectM2413c.getBoolean("gdpr_consent_available") ? (byte) 1 : (byte) 0;
        } catch (JSONException unused) {
            return (byte) -1;
        }
    }

    @JvmStatic
    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m2417f() {
    }

    @JvmStatic
    /* JADX INFO: renamed from: h */
    public static final void m2418h() {
        HashMap map = AbstractC3430y3.f2754a;
        Config configM2611a = AbstractC3430y3.m2611a(C2849Kb.m1248b(), CommonCssConstants.ROOT);
        Intrinsics.checkNotNull(configM2611a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig");
        f2546e = (RootConfig) configM2611a;
    }

    @JvmStatic
    /* JADX INFO: renamed from: i */
    public static final void m2419i() {
        f2543b = null;
        f2544c = null;
        f2545d = null;
        f2546e = null;
    }

    /* JADX INFO: renamed from: a */
    public final void m2420a(JSONObject jSONObject) {
        f2545d = jSONObject;
    }

    /* JADX INFO: renamed from: b */
    public final JSONObject m2423b() {
        return f2545d;
    }

    /* JADX INFO: renamed from: g */
    public final JSONObject m2424g() {
        return f2543b;
    }

    /* JADX INFO: renamed from: j */
    public final void m2425j() {
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        f2546e = (RootConfig) AbstractC3001V4.m1873a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ boolean m2411a(C3356t4 c3356t4, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return c3356t4.m2422a(z);
    }

    /* JADX INFO: renamed from: b */
    public static final void m2412b(JSONObject jSONObject) {
        if (jSONObject != null) {
            f2543b = jSONObject;
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2422a(boolean z) {
        if (f2546e == null) {
            m2425j();
        }
        byte bM2416e = m2416e();
        RootConfig rootConfig = f2546e;
        return bM2416e == 1 || Intrinsics.areEqual(rootConfig != null ? Boolean.valueOf(rootConfig.shouldTransmitRequest()) : null, Boolean.TRUE) || z;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m2421a() {
        return m2411a(this, false, 1, null);
    }

    @JvmStatic
    /* JADX INFO: renamed from: c */
    public static final void m2414c(JSONObject jSONObject) {
        if (jSONObject != null) {
            f2544c = jSONObject;
        }
    }
}
