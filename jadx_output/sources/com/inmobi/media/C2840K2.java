package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.K2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2840K2 {

    /* JADX INFO: renamed from: a */
    public static final LinkedHashMap f1150a = new LinkedHashMap();

    /* JADX INFO: renamed from: b */
    public static final Lazy f1151b = LazyKt.lazy(C2795H2.f1070a);

    /* JADX INFO: renamed from: c */
    public static final AtomicBoolean f1152c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d */
    public static final AtomicBoolean f1153d = new AtomicBoolean(true);

    /* JADX INFO: renamed from: e */
    public static final ConcurrentHashMap f1154e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f */
    public static final Lazy f1155f = LazyKt.lazy(C2780G2.f1045a);

    static {
        C2849Kb.m1256f().m2215a(new int[]{2, 1}, C2735D2.f909a);
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.K2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2840K2.m1237a();
            }
        });
    }

    @JvmStatic
    /* JADX INFO: renamed from: a */
    public static final Config m1236a(String str, String str2, InterfaceC2825J2 interfaceC2825J2) {
        return C2810I2.m1161a(str, str2, interfaceC2825J2);
    }

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ String m1238b() {
        return "ConfigBootstrapHandler";
    }

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ String m1242f() {
        return "K2";
    }

    @JvmStatic
    /* JADX INFO: renamed from: g */
    public static final void m1243g() {
        C2810I2.m1162a();
    }

    @JvmStatic
    /* JADX INFO: renamed from: h */
    public static final void m1244h() {
        if (f1152c.getAndSet(false)) {
            Intrinsics.checkNotNullExpressionValue(m1242f(), "access$getTAG$cp(...)");
            ((HandlerC2750E2) f1151b.getValue()).sendEmptyMessage(5);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1237a() {
        C2810I2.m1162a();
    }
}
