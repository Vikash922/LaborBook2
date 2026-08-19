package com.inmobi.media;

import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.u2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3369u2 implements InterfaceC2825J2 {

    /* JADX INFO: renamed from: b */
    public static ThreadPoolExecutor f2628b;

    /* JADX INFO: renamed from: c */
    public static HandlerC3249m2 f2629c;

    /* JADX INFO: renamed from: d */
    public static HandlerThread f2630d;

    /* JADX INFO: renamed from: g */
    public static AdConfig.ImaiConfig f2633g;

    /* JADX INFO: renamed from: m */
    public static final C3354t2 f2639m;

    /* JADX INFO: renamed from: a */
    public static final C3369u2 f2627a = new C3369u2();

    /* JADX INFO: renamed from: e */
    public static List f2631e = new ArrayList();

    /* JADX INFO: renamed from: f */
    public static final AtomicBoolean f2632f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h */
    public static final AtomicBoolean f2634h = new AtomicBoolean(true);

    /* JADX INFO: renamed from: i */
    public static final Object f2635i = new Object();

    /* JADX INFO: renamed from: j */
    public static final LinkedHashMap f2636j = new LinkedHashMap();

    /* JADX INFO: renamed from: k */
    public static final C3324r2 f2637k = C3324r2.f2492a;

    /* JADX INFO: renamed from: l */
    public static final Lazy f2638l = LazyKt.lazy(C3339s2.f2525a);

    /* JADX INFO: renamed from: a */
    public static final HashMap m2460a(C3369u2 c3369u2, C3189i2 c3189i2) {
        c3369u2.getClass();
        HashMap map = new HashMap();
        try {
            AdConfig.ImaiConfig imaiConfig = f2633g;
            int maxRetries = ((imaiConfig != null ? imaiConfig.getMaxRetries() : 0) - c3189i2.f2173f) + 1;
            if (maxRetries > 0) {
                map.put("X-im-retry-count", String.valueOf(maxRetries));
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
        return map;
    }

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ String m2479f() {
        return "u2";
    }

    /* JADX INFO: renamed from: i */
    public static void m2480i() {
        try {
            AtomicBoolean atomicBoolean = f2632f;
            atomicBoolean.set(false);
            synchronized (f2635i) {
                if (!atomicBoolean.get()) {
                    HandlerThread handlerThread = f2630d;
                    if (handlerThread != null) {
                        handlerThread.getLooper().quit();
                        handlerThread.interrupt();
                    }
                    f2630d = null;
                    f2629c = null;
                }
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
    }

    /* JADX INFO: renamed from: g */
    public final boolean m2487g() {
        return ((Boolean) f2638l.getValue()).booleanValue();
    }

    /* JADX INFO: renamed from: h */
    public final void m2488h() {
        HandlerThread handlerThread;
        try {
            boolean z = C3301p9.f2439a;
            if (C3301p9.m2342a(false) != null) {
                return;
            }
            synchronized (f2635i) {
                AtomicBoolean atomicBoolean = f2632f;
                if (atomicBoolean.compareAndSet(false, true)) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    if (f2630d == null) {
                        HandlerThread handlerThread2 = new HandlerThread("pingHandlerThread");
                        f2630d = handlerThread2;
                        AbstractC3311q4.m2352a(handlerThread2, "pingHandlerThread");
                    }
                    if (f2629c == null && (handlerThread = f2630d) != null) {
                        Looper looper = handlerThread.getLooper();
                        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
                        f2629c = new HandlerC3249m2(looper);
                    }
                    C3204j2 c3204j2M967b = AbstractC2744Db.m967b();
                    if (c3204j2M967b == null || AbstractC2942R1.m1750a((AbstractC2942R1) c3204j2M967b) == 0) {
                        Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                        atomicBoolean.set(false);
                        m2480i();
                    } else {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 1;
                        HandlerC3249m2 handlerC3249m2 = f2629c;
                        if (handlerC3249m2 != null) {
                            handlerC3249m2.sendMessage(messageObtain);
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2471b(C3369u2 c3369u2, C3189i2 c3189i2) {
        c3369u2.getClass();
        LinkedHashMap linkedHashMap = f2636j;
        AbstractC3026X1 abstractC3026X1 = (AbstractC3026X1) linkedHashMap.get(Integer.valueOf(c3189i2.f2168a));
        if (abstractC3026X1 != null) {
            abstractC3026X1.mo1328a(c3189i2);
        }
        linkedHashMap.remove(Integer.valueOf(c3189i2.f2168a));
    }

    /* JADX INFO: renamed from: c */
    public static final void m2475c(C3369u2 c3369u2, C3189i2 click) {
        c3369u2.getClass();
        int i = click.f2173f;
        if (i > 0) {
            click.f2173f = i - 1;
            click.f2174g = System.currentTimeMillis();
            C3204j2 c3204j2M967b = AbstractC2744Db.m967b();
            c3204j2M967b.getClass();
            Intrinsics.checkNotNullParameter(click, "click");
            c3204j2M967b.m1756b(click, "id = ?", new String[]{String.valueOf(click.f2168a)});
        }
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m2472b(C3369u2 c3369u2, String str, boolean z, AbstractC3026X1 abstractC3026X1, InterfaceC3147f5 interfaceC3147f5, int i, Object obj) {
        if ((i & 4) != 0) {
            abstractC3026X1 = null;
        }
        c3369u2.m2485b(str, z, abstractC3026X1, interfaceC3147f5);
    }

    /* JADX INFO: renamed from: b */
    public final void m2485b(final String url, final boolean z, final AbstractC3026X1 abstractC3026X1, final InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        C3020W9 c3020w9 = AbstractC3384v2.f2679a;
        AbstractC3384v2.m2498a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3369u2.m2473b(url, z, interfaceC3147f5, abstractC3026X1);
            }
        }, EnumC3006V9.f1596b);
    }

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ void m2464a(C3369u2 c3369u2) {
        c3369u2.getClass();
        m2480i();
    }

    static {
        Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3369u2.m2461a();
            }
        });
        f2639m = new C3354t2();
    }

    /* JADX INFO: renamed from: a */
    public static final void m2461a() {
        C3369u2 c3369u2 = f2627a;
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 5L, timeUnit, linkedBlockingQueue, new ThreadFactoryC3297p5("u2"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            f2628b = threadPoolExecutor;
            HandlerThread handlerThread = new HandlerThread("pingHandlerThread");
            f2630d = handlerThread;
            AbstractC3311q4.m2352a(handlerThread, "pingHandlerThread");
            HandlerThread handlerThread2 = f2630d;
            Intrinsics.checkNotNull(handlerThread2);
            Looper looper = handlerThread2.getLooper();
            Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
            f2629c = new HandlerC3249m2(looper);
            LinkedHashMap linkedHashMap = C2840K2.f1150a;
            Config configM1161a = C2810I2.m1161a("ads", C2849Kb.m1248b(), c3369u2);
            Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
            f2633g = ((AdConfig) configM1161a).getImai();
            C2849Kb.m1256f().m2215a(new int[]{10, 11, 2, 1}, f2637k);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
    }

    /* JADX INFO: renamed from: c */
    public static final void m2476c(String url, boolean z, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f2627a.m2487g()) {
                AdConfig.ImaiConfig imaiConfig = f2633g;
                C3189i2 c3189i2 = new C3189i2(url, null, z, true, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.MULTIANEWARRAY);
                if (interfaceC3147f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C3162g5) interfaceC3147f5).m2152c("u2", "Received click (" + url + ") for pinging in WebView");
                }
                m2462a(c3189i2, (AbstractC3026X1) null, interfaceC3147f5);
            }
        } catch (Exception e) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("u2", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("u2", "TAG", "SDK encountered unexpected error in pinging click over WebView; ")));
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2473b(String url, boolean z, InterfaceC3147f5 interfaceC3147f5, AbstractC3026X1 abstractC3026X1) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f2627a.m2487g()) {
                AdConfig.ImaiConfig imaiConfig = f2633g;
                C3189i2 c3189i2 = new C3189i2(url, null, z, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.MULTIANEWARRAY);
                if (interfaceC3147f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a("u2", "Received click (" + url + ") for pinging over HTTP");
                }
                m2462a(c3189i2, abstractC3026X1, interfaceC3147f5);
            }
        } catch (Exception e) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("u2", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("u2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
        }
    }

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        AdConfig adConfig = config instanceof AdConfig ? (AdConfig) config : null;
        f2633g = adConfig != null ? adConfig.getImai() : null;
    }

    /* JADX INFO: renamed from: a */
    public final void m2484a(String url, boolean z, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        m2483a(url, z, (AbstractC3026X1) null, interfaceC3147f5);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m2466a(C3369u2 c3369u2, String str, boolean z, AbstractC3026X1 abstractC3026X1, InterfaceC3147f5 interfaceC3147f5, int i, Object obj) {
        if ((i & 4) != 0) {
            abstractC3026X1 = null;
        }
        c3369u2.m2483a(str, z, abstractC3026X1, interfaceC3147f5);
    }

    /* JADX INFO: renamed from: a */
    public final void m2483a(final String url, final boolean z, final AbstractC3026X1 abstractC3026X1, final InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        C3020W9 c3020w9 = AbstractC3384v2.f2679a;
        AbstractC3384v2.m2498a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3369u2.m2468a(url, z, interfaceC3147f5, abstractC3026X1);
            }
        }, EnumC3006V9.f1597c);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2468a(String url, boolean z, InterfaceC3147f5 interfaceC3147f5, AbstractC3026X1 abstractC3026X1) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f2627a.m2487g()) {
                AdConfig.ImaiConfig imaiConfig = f2633g;
                C3189i2 c3189i2 = new C3189i2(url, null, z, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.MULTIANEWARRAY);
                if (interfaceC3147f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a("u2", "Received click (" + url + ") for pinging over HTTP");
                }
                m2462a(c3189i2, abstractC3026X1, interfaceC3147f5);
            }
        } catch (Exception e) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("u2", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("u2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2486b(final String url, final boolean z, final InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        C3020W9 c3020w9 = AbstractC3384v2.f2679a;
        AbstractC3384v2.m2498a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3369u2.m2476c(url, z, interfaceC3147f5);
            }
        }, EnumC3006V9.f1597c);
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m2465a(C3369u2 c3369u2, String str, Map map, boolean z, AbstractC3026X1 abstractC3026X1, EnumC3006V9 enumC3006V9, InterfaceC3147f5 interfaceC3147f5, int i, Object obj) {
        if ((i & 8) != 0) {
            abstractC3026X1 = null;
        }
        c3369u2.m2482a(str, map, z, abstractC3026X1, enumC3006V9, interfaceC3147f5);
    }

    /* JADX INFO: renamed from: a */
    public final void m2482a(final String url, final Map<String, String> map, final boolean z, final AbstractC3026X1 abstractC3026X1, EnumC3006V9 priority, final InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(priority, "priority");
        C3020W9 c3020w9 = AbstractC3384v2.f2679a;
        AbstractC3384v2.m2498a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3369u2.m2467a(url, map, z, interfaceC3147f5, abstractC3026X1);
            }
        }, priority);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2467a(String url, Map map, boolean z, InterfaceC3147f5 interfaceC3147f5, AbstractC3026X1 abstractC3026X1) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f2627a.m2487g()) {
                AdConfig.ImaiConfig imaiConfig = f2633g;
                C3189i2 c3189i2 = new C3189i2(url, map, z, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.INSTANCEOF);
                if (interfaceC3147f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C3162g5) interfaceC3147f5).m2147a("u2", "Received click (" + url + ") for pinging over HTTP");
                }
                m2462a(c3189i2, abstractC3026X1, interfaceC3147f5);
            }
        } catch (Exception e) {
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2151b("u2", AbstractC2761Ed.m1111a(e, AbstractC3208j6.m2261a("u2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2462a(final C3189i2 click, AbstractC3026X1 abstractC3026X1, final InterfaceC3147f5 interfaceC3147f5) {
        HandlerC3249m2 handlerC3249m2 = f2629c;
        if (handlerC3249m2 != null) {
            handlerC3249m2.f2311a = interfaceC3147f5;
        }
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("u2", "record Click");
        }
        AdConfig.ImaiConfig imaiConfig = f2633g;
        if (imaiConfig != null) {
            C3204j2 c3204j2M967b = AbstractC2744Db.m967b();
            int maxDbEvents = imaiConfig.getMaxDbEvents();
            synchronized (c3204j2M967b) {
                Intrinsics.checkNotNullParameter(click, "click");
                if (AbstractC2942R1.m1750a((AbstractC2942R1) c3204j2M967b) >= maxDbEvents) {
                    Intrinsics.checkNotNullExpressionValue("j2", "TAG");
                    C3189i2 click2 = (C3189i2) c3204j2M967b.m1755b("ts= (SELECT MIN(ts) FROM click LIMIT 1)", null);
                    if (click2 != null) {
                        Intrinsics.checkNotNullExpressionValue("j2", "TAG");
                        f2627a.m2481a(click, "DB_OVERLOAD");
                        Intrinsics.checkNotNullParameter(click2, "click");
                        c3204j2M967b.m1752a("id = ?", new String[]{String.valueOf(click2.f2168a)});
                    }
                }
                c3204j2M967b.m1753a(click);
            }
            if (abstractC3026X1 != null) {
                f2636j.put(Integer.valueOf(click.f2168a), abstractC3026X1);
            }
        }
        boolean z = C3301p9.f2439a;
        if (C3301p9.m2342a(false) != null) {
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                ((C3162g5) interfaceC3147f5).m2151b("u2", "No network available. Saving click for later processing ...");
            }
            f2632f.set(false);
            m2480i();
            return;
        }
        if (interfaceC3147f5 != null) {
            ((C3162g5) interfaceC3147f5).m2147a("u2", AbstractC3208j6.m2261a("u2", "TAG", "submit click - ").append(click.f2168a).toString());
        }
        ThreadPoolExecutor threadPoolExecutor = f2628b;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.submit(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    C3369u2.m2463a(click, interfaceC3147f5);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2463a(C3189i2 click, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(click, "$click");
        SystemClock.elapsedRealtime();
        if (click.f2172e) {
            if (interfaceC3147f5 != null) {
                Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                ((C3162g5) interfaceC3147f5).m2152c("u2", "ping in web view");
            }
            new C3279o2(f2639m, interfaceC3147f5).m2323a(click);
            return;
        }
        if (interfaceC3147f5 != null) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
            ((C3162g5) interfaceC3147f5).m2152c("u2", "ping in http executor");
        }
        new C3294p2(f2639m, interfaceC3147f5).m2338a(click);
    }

    /* JADX INFO: renamed from: a */
    public final void m2481a(C3189i2 click, String error) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(error, "error");
        LinkedHashMap linkedHashMap = f2636j;
        AbstractC3026X1 abstractC3026X1 = (AbstractC3026X1) linkedHashMap.get(Integer.valueOf(click.f2168a));
        if (abstractC3026X1 != null) {
            abstractC3026X1.mo1329a(click, error);
        }
        linkedHashMap.remove(Integer.valueOf(click.f2168a));
    }
}
