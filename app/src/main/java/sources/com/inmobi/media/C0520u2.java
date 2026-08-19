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

/* JADX INFO: renamed from: com.inmobi.media.u2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0520u2 implements J2 {
    public static ThreadPoolExecutor b;
    public static HandlerC0405m2 c;
    public static HandlerThread d;
    public static AdConfig.ImaiConfig g;
    public static final C0506t2 m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0520u2 f496a = new C0520u2();
    public static List e = new ArrayList();
    public static final AtomicBoolean f = new AtomicBoolean(false);
    public static final AtomicBoolean h = new AtomicBoolean(true);
    public static final Object i = new Object();
    public static final LinkedHashMap j = new LinkedHashMap();
    public static final C0478r2 k = C0478r2.f468a;
    public static final Lazy l = LazyKt.lazy(C0492s2.f477a);

    public static final HashMap a(C0520u2 c0520u2, C0343i2 c0343i2) {
        c0520u2.getClass();
        HashMap map = new HashMap();
        try {
            AdConfig.ImaiConfig imaiConfig = g;
            int maxRetries = ((imaiConfig != null ? imaiConfig.getMaxRetries() : 0) - c0343i2.f) + 1;
            if (maxRetries > 0) {
                map.put("X-im-retry-count", String.valueOf(maxRetries));
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
        return map;
    }

    public static final /* synthetic */ String f() {
        return "u2";
    }

    public static void i() {
        try {
            AtomicBoolean atomicBoolean = f;
            atomicBoolean.set(false);
            synchronized (i) {
                if (!atomicBoolean.get()) {
                    HandlerThread handlerThread = d;
                    if (handlerThread != null) {
                        handlerThread.getLooper().quit();
                        handlerThread.interrupt();
                    }
                    d = null;
                    c = null;
                }
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
    }

    public final boolean g() {
        return ((Boolean) l.getValue()).booleanValue();
    }

    public final void h() {
        HandlerThread handlerThread;
        try {
            boolean z = C0457p9.f457a;
            if (C0457p9.a(false) != null) {
                return;
            }
            synchronized (i) {
                AtomicBoolean atomicBoolean = f;
                if (atomicBoolean.compareAndSet(false, true)) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    if (d == null) {
                        HandlerThread handlerThread2 = new HandlerThread("pingHandlerThread");
                        d = handlerThread2;
                        AbstractC0467q4.a(handlerThread2, "pingHandlerThread");
                    }
                    if (c == null && (handlerThread = d) != null) {
                        Looper looper = handlerThread.getLooper();
                        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
                        c = new HandlerC0405m2(looper);
                    }
                    C0359j2 c0359j2B = Db.b();
                    if (c0359j2B == null || R1.a((R1) c0359j2B) == 0) {
                        Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                        atomicBoolean.set(false);
                        i();
                    } else {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 1;
                        HandlerC0405m2 handlerC0405m2 = c;
                        if (handlerC0405m2 != null) {
                            handlerC0405m2.sendMessage(messageObtain);
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
    }

    public static final void b(C0520u2 c0520u2, C0343i2 c0343i2) {
        c0520u2.getClass();
        LinkedHashMap linkedHashMap = j;
        X1 x1 = (X1) linkedHashMap.get(Integer.valueOf(c0343i2.f382a));
        if (x1 != null) {
            x1.a(c0343i2);
        }
        linkedHashMap.remove(Integer.valueOf(c0343i2.f382a));
    }

    public static final void c(C0520u2 c0520u2, C0343i2 click) {
        c0520u2.getClass();
        int i2 = click.f;
        if (i2 > 0) {
            click.f = i2 - 1;
            click.g = System.currentTimeMillis();
            C0359j2 c0359j2B = Db.b();
            c0359j2B.getClass();
            Intrinsics.checkNotNullParameter(click, "click");
            c0359j2B.b(click, "id = ?", new String[]{String.valueOf(click.f382a)});
        }
    }

    public static /* synthetic */ void b(C0520u2 c0520u2, String str, boolean z, X1 x1, InterfaceC0298f5 interfaceC0298f5, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            x1 = null;
        }
        c0520u2.b(str, z, x1, interfaceC0298f5);
    }

    public final void b(final String url, final boolean z, final X1 x1, final InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        W9 w9 = AbstractC0534v2.f505a;
        AbstractC0534v2.a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C0520u2.b(url, z, interfaceC0298f5, x1);
            }
        }, V9.b);
    }

    public static final /* synthetic */ void a(C0520u2 c0520u2) {
        c0520u2.getClass();
        i();
    }

    static {
        Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        Kb.a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0520u2.a();
            }
        });
        m = new C0506t2();
    }

    public static final void a() {
        C0520u2 c0520u2 = f496a;
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 5L, timeUnit, linkedBlockingQueue, new ThreadFactoryC0453p5("u2"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            b = threadPoolExecutor;
            HandlerThread handlerThread = new HandlerThread("pingHandlerThread");
            d = handlerThread;
            AbstractC0467q4.a(handlerThread, "pingHandlerThread");
            HandlerThread handlerThread2 = d;
            Intrinsics.checkNotNull(handlerThread2);
            Looper looper = handlerThread2.getLooper();
            Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
            c = new HandlerC0405m2(looper);
            LinkedHashMap linkedHashMap = K2.f154a;
            Config configA = I2.a("ads", Kb.b(), c0520u2);
            Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
            g = ((AdConfig) configA).getImai();
            Kb.f().a(new int[]{10, 11, 2, 1}, k);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
        }
    }

    public static final void c(String url, boolean z, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f496a.g()) {
                AdConfig.ImaiConfig imaiConfig = g;
                C0343i2 c0343i2 = new C0343i2(url, null, z, true, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.MULTIANEWARRAY);
                if (interfaceC0298f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C0314g5) interfaceC0298f5).c("u2", "Received click (" + url + ") for pinging in WebView");
                }
                a(c0343i2, (X1) null, interfaceC0298f5);
            }
        } catch (Exception e2) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("u2", Ed.a(e2, AbstractC0363j6.a("u2", "TAG", "SDK encountered unexpected error in pinging click over WebView; ")));
            }
        }
    }

    public static final void b(String url, boolean z, InterfaceC0298f5 interfaceC0298f5, X1 x1) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f496a.g()) {
                AdConfig.ImaiConfig imaiConfig = g;
                C0343i2 c0343i2 = new C0343i2(url, null, z, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.MULTIANEWARRAY);
                if (interfaceC0298f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C0314g5) interfaceC0298f5).a("u2", "Received click (" + url + ") for pinging over HTTP");
                }
                a(c0343i2, x1, interfaceC0298f5);
            }
        } catch (Exception e2) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("u2", Ed.a(e2, AbstractC0363j6.a("u2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
        }
    }

    @Override // com.inmobi.media.J2
    public void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        AdConfig adConfig = config instanceof AdConfig ? (AdConfig) config : null;
        g = adConfig != null ? adConfig.getImai() : null;
    }

    public final void a(String url, boolean z, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        a(url, z, (X1) null, interfaceC0298f5);
    }

    public static /* synthetic */ void a(C0520u2 c0520u2, String str, boolean z, X1 x1, InterfaceC0298f5 interfaceC0298f5, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            x1 = null;
        }
        c0520u2.a(str, z, x1, interfaceC0298f5);
    }

    public final void a(final String url, final boolean z, final X1 x1, final InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        W9 w9 = AbstractC0534v2.f505a;
        AbstractC0534v2.a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0520u2.a(url, z, interfaceC0298f5, x1);
            }
        }, V9.c);
    }

    public static final void a(String url, boolean z, InterfaceC0298f5 interfaceC0298f5, X1 x1) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f496a.g()) {
                AdConfig.ImaiConfig imaiConfig = g;
                C0343i2 c0343i2 = new C0343i2(url, null, z, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.MULTIANEWARRAY);
                if (interfaceC0298f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C0314g5) interfaceC0298f5).a("u2", "Received click (" + url + ") for pinging over HTTP");
                }
                a(c0343i2, x1, interfaceC0298f5);
            }
        } catch (Exception e2) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("u2", Ed.a(e2, AbstractC0363j6.a("u2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
        }
    }

    public final void b(final String url, final boolean z, final InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        W9 w9 = AbstractC0534v2.f505a;
        AbstractC0534v2.a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C0520u2.c(url, z, interfaceC0298f5);
            }
        }, V9.c);
    }

    public static /* synthetic */ void a(C0520u2 c0520u2, String str, Map map, boolean z, X1 x1, V9 v9, InterfaceC0298f5 interfaceC0298f5, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            x1 = null;
        }
        c0520u2.a(str, map, z, x1, v9, interfaceC0298f5);
    }

    public final void a(final String url, final Map<String, String> map, final boolean z, final X1 x1, V9 priority, final InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(priority, "priority");
        W9 w9 = AbstractC0534v2.f505a;
        AbstractC0534v2.a(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C0520u2.a(url, map, z, interfaceC0298f5, x1);
            }
        }, priority);
    }

    public static final void a(String url, Map map, boolean z, InterfaceC0298f5 interfaceC0298f5, X1 x1) {
        Intrinsics.checkNotNullParameter(url, "$url");
        try {
            if (f496a.g()) {
                AdConfig.ImaiConfig imaiConfig = g;
                C0343i2 c0343i2 = new C0343i2(url, map, z, false, (imaiConfig != null ? imaiConfig.getMaxRetries() : 0) + 1, Opcodes.INSTANCEOF);
                if (interfaceC0298f5 != null) {
                    Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                    ((C0314g5) interfaceC0298f5).a("u2", "Received click (" + url + ") for pinging over HTTP");
                }
                a(c0343i2, x1, interfaceC0298f5);
            }
        } catch (Exception e2) {
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).b("u2", Ed.a(e2, AbstractC0363j6.a("u2", "TAG", "SDK encountered unexpected error in pinging click; ")));
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
        }
    }

    public static void a(final C0343i2 click, X1 x1, final InterfaceC0298f5 interfaceC0298f5) {
        HandlerC0405m2 handlerC0405m2 = c;
        if (handlerC0405m2 != null) {
            handlerC0405m2.f419a = interfaceC0298f5;
        }
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
            ((C0314g5) interfaceC0298f5).c("u2", "record Click");
        }
        AdConfig.ImaiConfig imaiConfig = g;
        if (imaiConfig != null) {
            C0359j2 c0359j2B = Db.b();
            int maxDbEvents = imaiConfig.getMaxDbEvents();
            synchronized (c0359j2B) {
                Intrinsics.checkNotNullParameter(click, "click");
                if (R1.a((R1) c0359j2B) >= maxDbEvents) {
                    Intrinsics.checkNotNullExpressionValue("j2", "TAG");
                    C0343i2 click2 = (C0343i2) c0359j2B.b("ts= (SELECT MIN(ts) FROM click LIMIT 1)", null);
                    if (click2 != null) {
                        Intrinsics.checkNotNullExpressionValue("j2", "TAG");
                        f496a.a(click, "DB_OVERLOAD");
                        Intrinsics.checkNotNullParameter(click2, "click");
                        c0359j2B.a("id = ?", new String[]{String.valueOf(click2.f382a)});
                    }
                }
                c0359j2B.a(click);
            }
            if (x1 != null) {
                j.put(Integer.valueOf(click.f382a), x1);
            }
        }
        boolean z = C0457p9.f457a;
        if (C0457p9.a(false) != null) {
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                ((C0314g5) interfaceC0298f5).b("u2", "No network available. Saving click for later processing ...");
            }
            f.set(false);
            i();
            return;
        }
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a("u2", AbstractC0363j6.a("u2", "TAG", "submit click - ").append(click.f382a).toString());
        }
        ThreadPoolExecutor threadPoolExecutor = b;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.submit(new Runnable() { // from class: com.inmobi.media.u2$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    C0520u2.a(click, interfaceC0298f5);
                }
            });
        }
    }

    public static final void a(C0343i2 click, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(click, "$click");
        SystemClock.elapsedRealtime();
        if (click.e) {
            if (interfaceC0298f5 != null) {
                Intrinsics.checkNotNullExpressionValue("u2", "TAG");
                ((C0314g5) interfaceC0298f5).c("u2", "ping in web view");
            }
            new C0435o2(m, interfaceC0298f5).a(click);
            return;
        }
        if (interfaceC0298f5 != null) {
            Intrinsics.checkNotNullExpressionValue("u2", "TAG");
            ((C0314g5) interfaceC0298f5).c("u2", "ping in http executor");
        }
        new C0450p2(m, interfaceC0298f5).a(click);
    }

    public final void a(C0343i2 click, String error) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(error, "error");
        LinkedHashMap linkedHashMap = j;
        X1 x1 = (X1) linkedHashMap.get(Integer.valueOf(click.f382a));
        if (x1 != null) {
            x1.a(click, error);
        }
        linkedHashMap.remove(Integer.valueOf(click.f382a));
    }
}
