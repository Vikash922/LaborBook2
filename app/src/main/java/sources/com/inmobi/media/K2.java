package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class K2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinkedHashMap f154a = new LinkedHashMap();
    public static final Lazy b = LazyKt.lazy(H2.f128a);
    public static final AtomicBoolean c = new AtomicBoolean(false);
    public static final AtomicBoolean d = new AtomicBoolean(true);
    public static final ConcurrentHashMap e = new ConcurrentHashMap();
    public static final Lazy f = LazyKt.lazy(G2.f121a);

    static {
        Kb.f().a(new int[]{2, 1}, D2.f94a);
        Kb.a(new Runnable() { // from class: com.inmobi.media.K2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                K2.a();
            }
        });
    }

    @JvmStatic
    public static final Config a(String str, String str2, J2 j2) {
        return I2.a(str, str2, j2);
    }

    public static final /* synthetic */ String b() {
        return "ConfigBootstrapHandler";
    }

    public static final /* synthetic */ String f() {
        return "K2";
    }

    @JvmStatic
    public static final void g() {
        I2.a();
    }

    @JvmStatic
    public static final void h() {
        if (c.getAndSet(false)) {
            Intrinsics.checkNotNullExpressionValue(f(), "access$getTAG$cp(...)");
            ((E2) b.getValue()).sendEmptyMessage(5);
        }
    }

    public static final void a() {
        I2.a();
    }
}
