package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.ec */
/* JADX INFO: loaded from: classes6.dex */
public final class C3139ec extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public static final C3139ec f2050a = new C3139ec();

    public C3139ec() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new Handler(Looper.getMainLooper());
    }
}
