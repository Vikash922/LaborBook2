package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.b5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0236b5 extends Q1 {
    public static final C0236b5 c = new C0236b5();
    public static final AtomicBoolean d = new AtomicBoolean(true);

    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        AtomicBoolean atomicBoolean = d;
        jSONObject.put("a-audioBannerEnabled", String.valueOf(atomicBoolean.get()));
        if (!atomicBoolean.get()) {
            return jSONObject;
        }
        long j = this.f220a / 1000;
        if (j != 0) {
            jSONObject.put("a-lastAudioBannerPlayedTs", String.valueOf(j));
        }
        int i = this.b;
        if (i > 0) {
            jSONObject.put("a-audioBannerFreq", String.valueOf(i));
        }
        Context contextD = Kb.d();
        if (contextD != null) {
            ConcurrentHashMap concurrentHashMap = C0284e6.b;
            C0284e6 c0284e6A = AbstractC0268d6.a(contextD, "banner_audio_pref_file");
            Intrinsics.checkNotNullParameter("user_mute_count", "key");
            int i2 = c0284e6A.f340a.getInt("user_mute_count", -1);
            if (i2 > 0) {
                jSONObject.put("a-b-umc", String.valueOf(i2));
            }
        }
        return jSONObject;
    }
}
