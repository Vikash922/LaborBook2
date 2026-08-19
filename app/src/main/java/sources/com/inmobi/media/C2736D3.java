package com.inmobi.media;

import android.content.Context;
import android.media.AudioManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.D3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2736D3 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C2736D3 f910a = new C2736D3();

    public C2736D3() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context contextM1254d = C2849Kb.m1254d();
        Object systemService = contextM1254d != null ? contextM1254d.getSystemService("audio") : null;
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        return Integer.valueOf(audioManager != null ? audioManager.getStreamMaxVolume(3) : 15);
    }
}
