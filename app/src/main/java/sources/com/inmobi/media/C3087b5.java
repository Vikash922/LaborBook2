package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.b5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3087b5 extends AbstractC2929Q1 {

    /* JADX INFO: renamed from: c */
    public static final C3087b5 f1875c = new C3087b5();

    /* JADX INFO: renamed from: d */
    public static final AtomicBoolean f1876d = new AtomicBoolean(true);

    /* JADX INFO: renamed from: a */
    public final JSONObject m2034a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        AtomicBoolean atomicBoolean = f1876d;
        jSONObject.put("a-audioBannerEnabled", String.valueOf(atomicBoolean.get()));
        if (!atomicBoolean.get()) {
            return jSONObject;
        }
        long j = this.f1454a / 1000;
        if (j != 0) {
            jSONObject.put("a-lastAudioBannerPlayedTs", String.valueOf(j));
        }
        int i = this.f1455b;
        if (i > 0) {
            jSONObject.put("a-audioBannerFreq", String.valueOf(i));
        }
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null) {
            ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
            C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(contextM1254d, "banner_audio_pref_file");
            Intrinsics.checkNotNullParameter("user_mute_count", "key");
            int i2 = c3133e6M2058a.f2045a.getInt("user_mute_count", -1);
            if (i2 > 0) {
                jSONObject.put("a-b-umc", String.valueOf(i2));
            }
        }
        return jSONObject;
    }
}
