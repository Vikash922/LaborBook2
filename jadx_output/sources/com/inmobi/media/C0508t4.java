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

/* JADX INFO: renamed from: com.inmobi.media.t4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0508t4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0508t4 f487a = new C0508t4();
    public static JSONObject b;
    public static JSONObject c;
    public static JSONObject d;
    public static RootConfig e;

    /* JADX WARN: Removed duplicated region for block: B:71:0x00e1 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x005d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final org.json.JSONObject c() {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0508t4.c():org.json.JSONObject");
    }

    @JvmStatic
    public static /* synthetic */ void d() {
    }

    public static final byte e() {
        JSONObject jSONObjectC = c();
        if (jSONObjectC == null) {
            return (byte) -1;
        }
        if (jSONObjectC.has(InMobiSdk.IM_GDPR_CONSENT_IAB)) {
            return (byte) 1;
        }
        if (!jSONObjectC.has("gdpr_consent_available")) {
            return (byte) -1;
        }
        try {
            return jSONObjectC.getBoolean("gdpr_consent_available") ? (byte) 1 : (byte) 0;
        } catch (JSONException unused) {
            return (byte) -1;
        }
    }

    @JvmStatic
    public static /* synthetic */ void f() {
    }

    @JvmStatic
    public static final void h() {
        HashMap map = AbstractC0577y3.f530a;
        Config configA = AbstractC0577y3.a(Kb.b(), CommonCssConstants.ROOT);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig");
        e = (RootConfig) configA;
    }

    @JvmStatic
    public static final void i() {
        b = null;
        c = null;
        d = null;
        e = null;
    }

    public final void a(JSONObject jSONObject) {
        d = jSONObject;
    }

    public final JSONObject b() {
        return d;
    }

    public final JSONObject g() {
        return b;
    }

    public final void j() {
        LinkedHashMap linkedHashMap = K2.f154a;
        e = (RootConfig) V4.a(CommonCssConstants.ROOT, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig", null);
    }

    public static /* synthetic */ boolean a(C0508t4 c0508t4, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return c0508t4.a(z);
    }

    public static final void b(JSONObject jSONObject) {
        if (jSONObject != null) {
            b = jSONObject;
        }
    }

    public final boolean a(boolean z) {
        if (e == null) {
            j();
        }
        byte bE = e();
        RootConfig rootConfig = e;
        return bE == 1 || Intrinsics.areEqual(rootConfig != null ? Boolean.valueOf(rootConfig.shouldTransmitRequest()) : null, Boolean.TRUE) || z;
    }

    public final boolean a() {
        return a(this, false, 1, null);
    }

    @JvmStatic
    public static final void c(JSONObject jSONObject) {
        if (jSONObject != null) {
            c = jSONObject;
        }
    }
}
