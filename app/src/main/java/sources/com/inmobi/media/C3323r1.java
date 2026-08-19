package com.inmobi.media;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.squareup.picasso.Callback;
import com.squareup.picasso.RequestCreator;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3323r1 implements InterfaceC2825J2 {

    /* JADX INFO: renamed from: a */
    public static final C3323r1 f2477a;

    /* JADX INFO: renamed from: b */
    public static final Object f2478b;

    /* JADX INFO: renamed from: c */
    public static AdConfig.AssetCacheConfig f2479c;

    /* JADX INFO: renamed from: d */
    public static AdConfig.VastVideoConfig f2480d;

    /* JADX INFO: renamed from: e */
    public static final ExecutorService f2481e;

    /* JADX INFO: renamed from: f */
    public static final ThreadPoolExecutor f2482f;

    /* JADX INFO: renamed from: g */
    public static HandlerC3263n1 f2483g;

    /* JADX INFO: renamed from: h */
    public static HandlerThread f2484h;

    /* JADX INFO: renamed from: i */
    public static final AtomicBoolean f2485i;

    /* JADX INFO: renamed from: j */
    public static final AtomicBoolean f2486j;

    /* JADX INFO: renamed from: k */
    public static final ConcurrentHashMap f2487k;

    /* JADX INFO: renamed from: l */
    public static final ArrayList f2488l;

    /* JADX INFO: renamed from: m */
    public static final AtomicBoolean f2489m;

    /* JADX INFO: renamed from: n */
    public static final C3293p1 f2490n;

    /* JADX INFO: renamed from: o */
    public static final C3308q1 f2491o;

    @Override // com.inmobi.media.InterfaceC2825J2
    /* JADX INFO: renamed from: a */
    public final void mo1057a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (!(config instanceof AdConfig)) {
            f2479c = null;
            f2480d = null;
        } else {
            AdConfig adConfig = (AdConfig) config;
            f2479c = adConfig.getAssetCache();
            f2480d = adConfig.getVastVideo();
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2375b(C3201j c3201j) {
        String locationOnDisk = c3201j.f2205c;
        AdConfig.AssetCacheConfig assetCacheConfig = f2479c;
        if (locationOnDisk == null || locationOnDisk.length() == 0 || assetCacheConfig == null) {
            return;
        }
        File file = new File(locationOnDisk);
        long jMin = Math.min((c3201j.f2209g - c3201j.f2207e) + System.currentTimeMillis(), (assetCacheConfig.getTimeToLive() * ((long) 1000)) + System.currentTimeMillis());
        int iNextInt = new Random().nextInt() & Integer.MAX_VALUE;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        String url = c3201j.f2204b;
        int maxRetries = assetCacheConfig.getMaxRetries();
        long j = c3201j.f2210h;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        if (url == null) {
            url = "";
        }
        C3201j c3201j2 = new C3201j(iNextInt, url, locationOnDisk, maxRetries, jCurrentTimeMillis, jCurrentTimeMillis2, jMin, j);
        c3201j2.f2207e = System.currentTimeMillis();
        AbstractC2744Db.m966a().m2271a(c3201j2);
        long j2 = c3201j.f2207e;
        c3201j2.f2212j = AbstractC3231l.m2277a(c3201j, file, j2, j2);
        c3201j2.f2211i = true;
        m2374a(c3201j2, (byte) -1);
    }

    /* JADX INFO: renamed from: c */
    public final synchronized void m2378c(String str) {
        int size = f2488l.size();
        for (int i = 0; i < size; i++) {
            C3216k c3216k = (C3216k) f2488l.get(i);
            Iterator it = c3216k.f2250h.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(((C3452za) it.next()).f2815b, str)) {
                        c3216k.f2244b++;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m2379d(String str) {
        int size = f2488l.size();
        for (int i = 0; i < size; i++) {
            C3216k c3216k = (C3216k) f2488l.get(i);
            Set set = c3216k.f2250h;
            HashSet hashSet = c3216k.f2247e;
            Iterator it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (Intrinsics.areEqual(((C3452za) it.next()).f2815b, str)) {
                    if (!hashSet.contains(str)) {
                        c3216k.f2247e.add(str);
                        c3216k.f2243a++;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final synchronized void m2380e() {
        ArrayList arrayList = new ArrayList();
        int size = f2488l.size();
        for (int i = 0; i < size; i++) {
            C3216k c3216k = (C3216k) f2488l.get(i);
            if (c3216k.f2243a == c3216k.f2250h.size()) {
                try {
                    InterfaceC3338s1 interfaceC3338s1 = (InterfaceC3338s1) c3216k.f2246d.get();
                    if (interfaceC3338s1 != null) {
                        interfaceC3338s1.mo1822a(c3216k);
                    }
                    arrayList.add(c3216k);
                } catch (Exception e) {
                    Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                }
            }
        }
        m2376b(arrayList);
    }

    static {
        C3323r1 c3323r1 = new C3323r1();
        f2477a = c3323r1;
        f2478b = new Object();
        f2485i = new AtomicBoolean(false);
        f2486j = new AtomicBoolean(false);
        f2488l = new ArrayList();
        f2489m = new AtomicBoolean(true);
        f2490n = C3293p1.f2426a;
        LinkedHashMap linkedHashMap = C2840K2.f1150a;
        Config configM1161a = C2810I2.m1161a("ads", C2849Kb.m1248b(), c3323r1);
        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        AdConfig adConfig = (AdConfig) configM1161a;
        f2479c = adConfig.getAssetCache();
        f2480d = adConfig.getVastVideo();
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new ThreadFactoryC3297p5("r1".concat("-AP")));
        Intrinsics.checkNotNullExpressionValue(executorServiceNewCachedThreadPool, "newCachedThreadPool(...)");
        f2481e = executorServiceNewCachedThreadPool;
        int i = AbstractC3251m4.f2318a;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 5L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC3297p5("r1".concat("-AD")));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f2482f = threadPoolExecutor;
        HandlerThread handlerThread = new HandlerThread("assetFetcher");
        f2484h = handlerThread;
        AbstractC3311q4.m2352a(handlerThread, "assetFetcher");
        HandlerThread handlerThread2 = f2484h;
        Intrinsics.checkNotNull(handlerThread2);
        Looper looper = handlerThread2.getLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
        f2483g = new HandlerC3263n1(looper, c3323r1);
        f2487k = new ConcurrentHashMap(2, 0.9f, 2);
        f2491o = new C3308q1();
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m2373a(C3201j c3201j) {
        int size = f2488l.size();
        for (int i = 0; i < size; i++) {
            C3216k c3216k = (C3216k) f2488l.get(i);
            Iterator it = c3216k.f2250h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (Intrinsics.areEqual(((C3452za) it.next()).f2815b, c3201j.f2204b)) {
                    if (!c3216k.f2249g.contains(c3201j)) {
                        c3216k.f2249g.add(c3201j);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2377c() {
        if (f2489m.get()) {
            f2486j.set(false);
            boolean z = C3301p9.f2439a;
            if (C3301p9.m2342a(false) != null) {
                C3179h7 c3179h7M1256f = C2849Kb.m1256f();
                C3293p1 c3293p1 = f2490n;
                c3179h7M1256f.m2214a(c3293p1);
                C2849Kb.m1256f().m2215a(new int[]{10, 2, 1}, c3293p1);
                return;
            }
            synchronized (f2478b) {
                if (f2485i.compareAndSet(false, true)) {
                    if (f2484h == null) {
                        HandlerThread handlerThread = new HandlerThread("assetFetcher");
                        f2484h = handlerThread;
                        AbstractC3311q4.m2352a(handlerThread, "assetFetcher");
                    }
                    if (f2483g == null) {
                        HandlerThread handlerThread2 = f2484h;
                        Intrinsics.checkNotNull(handlerThread2);
                        Looper looper = handlerThread2.getLooper();
                        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
                        f2483g = new HandlerC3263n1(looper, this);
                    }
                    if (AbstractC2744Db.m966a().m2273b().isEmpty()) {
                        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                        m2371d();
                    } else {
                        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                        C3179h7 c3179h7M1256f2 = C2849Kb.m1256f();
                        C3293p1 c3293p12 = f2490n;
                        c3179h7M1256f2.m2214a(c3293p12);
                        C2849Kb.m1256f().m2215a(new int[]{10, 2, 1}, c3293p12);
                        HandlerC3263n1 handlerC3263n1 = f2483g;
                        Intrinsics.checkNotNull(handlerC3263n1);
                        handlerC3263n1.sendEmptyMessage(1);
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m2371d() {
        if (f2489m.get()) {
            synchronized (f2478b) {
                f2485i.set(false);
                f2487k.clear();
                HandlerThread handlerThread = f2484h;
                if (handlerThread != null) {
                    handlerThread.getLooper().quit();
                    handlerThread.interrupt();
                    f2484h = null;
                    f2483g = null;
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x015f, code lost:
    
        r18 = r14;
        r1.flush();
        r3.disconnect();
        r12 = android.os.SystemClock.elapsedRealtime();
        r7 = new com.inmobi.media.C3256m9();
        r7.f2335e = r3.getHeaderFields();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0176, code lost:
    
        r14 = r1;
        r15 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x017e, code lost:
    
        r20.f2212j = com.inmobi.media.AbstractC3231l.m2277a(r20, r11, r18, r12);
        r20.f2213k = r12 - r18;
        r1 = r8.f2308a;
        r2 = r11.getAbsolutePath();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "getAbsolutePath(...)");
        r1.mo2279a(r7, r2, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0199, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x019e, code lost:
    
        r1 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x019f, code lost:
    
        r2 = r15;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01a2, code lost:
    
        r2 = r14;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01a5, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01a8, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ab, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ae, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01b1, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c8 A[Catch: all -> 0x01cb, Exception -> 0x01d0, IOException -> 0x01e2, ProtocolException -> 0x01f2, MalformedURLException -> 0x0202, FileNotFoundException -> 0x0212, SocketTimeoutException -> 0x0222, TryCatch #8 {FileNotFoundException -> 0x0212, MalformedURLException -> 0x0202, ProtocolException -> 0x01f2, SocketTimeoutException -> 0x0222, IOException -> 0x01e2, Exception -> 0x01d0, all -> 0x01cb, blocks: (B:15:0x005f, B:17:0x0094, B:19:0x00a4, B:21:0x00ab, B:23:0x00b1, B:24:0x00b4, B:25:0x00b8, B:27:0x00bc, B:28:0x00c8, B:30:0x00d4, B:32:0x00db, B:34:0x00e9, B:36:0x00fa, B:38:0x0100, B:39:0x0103), top: B:117:0x005f }] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v22, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, java.util.Collection, java.util.List] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2366a(com.inmobi.media.C3201j r20, com.inmobi.media.InterfaceC3233l1 r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3323r1.m2366a(com.inmobi.media.j, com.inmobi.media.l1):boolean");
    }

    /* JADX INFO: renamed from: b */
    public final synchronized void m2376b(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            f2488l.remove(arrayList.get(i));
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m2367b() {
        ArrayList arrayListM2270a = AbstractC2744Db.m966a().m2270a();
        long length = 0;
        if (!arrayListM2270a.isEmpty()) {
            Iterator it = arrayListM2270a.iterator();
            while (it.hasNext()) {
                String str = ((C3201j) it.next()).f2205c;
                if (str != null) {
                    length += new File(str).length();
                }
            }
        }
        AdConfig.AssetCacheConfig assetCacheConfig = f2479c;
        Unit unit = null;
        if (assetCacheConfig != null) {
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            assetCacheConfig.getMaxCacheSize();
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            if (length > assetCacheConfig.getMaxCacheSize()) {
                C3218k1 c3218k1M966a = AbstractC2744Db.m966a();
                c3218k1M966a.getClass();
                ArrayList arrayListM1751a = AbstractC2942R1.m1751a(c3218k1M966a, null, null, null, null, "ts ASC ", 1, 15);
                C3201j asset = arrayListM1751a.isEmpty() ? null : (C3201j) arrayListM1751a.get(0);
                if (asset != null) {
                    if (f2489m.get()) {
                        C3218k1 c3218k1M966a2 = AbstractC2744Db.m966a();
                        c3218k1M966a2.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        c3218k1M966a2.m1752a("id = ?", new String[]{String.valueOf(asset.f2203a)});
                        String str2 = asset.f2205c;
                        if (str2 != null) {
                            File file = new File(str2);
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    }
                    m2367b();
                }
            }
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2368b(C3216k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "$assetBatch");
        synchronized (f2477a) {
            ArrayList arrayList = f2488l;
            if (!arrayList.contains(assetBatch)) {
                arrayList.add(assetBatch);
            }
        }
        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
        assetBatch.f2250h.size();
        Iterator it = assetBatch.f2250h.iterator();
        while (it.hasNext()) {
            String str = ((C3452za) it.next()).f2815b;
            C3323r1 c3323r1 = f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            C3201j c3201jM2269a = AbstractC2744Db.m966a().m2269a(str);
            if (c3201jM2269a != null && c3201jM2269a.m2253a()) {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                c3323r1.m2375b(c3201jM2269a);
            } else {
                m2364a(str);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2369b(C3216k assetBatch, String adType) {
        Intrinsics.checkNotNullParameter(assetBatch, "$assetBatch");
        Intrinsics.checkNotNullParameter(adType, "$adType");
        synchronized (f2477a) {
            ArrayList arrayList = f2488l;
            if (!arrayList.contains(assetBatch)) {
                arrayList.add(assetBatch);
            }
        }
        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
        assetBatch.f2250h.size();
        ArrayList<String> arrayList2 = new ArrayList();
        ArrayList<String> arrayList3 = new ArrayList();
        for (C3452za c3452za : assetBatch.f2250h) {
            String str = c3452za.f2815b;
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            if (str.subSequence(i, length + 1).toString().length() > 0 && c3452za.f2814a == 2) {
                arrayList2.add(c3452za.f2815b);
            } else {
                arrayList3.add(c3452za.f2815b);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(arrayList2.size());
        for (String str2 : arrayList2) {
            try {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Context contextM1254d = C2849Kb.m1254d();
                if (contextM1254d != null) {
                    C2950R9 c2950r9 = C2950R9.f1503a;
                    RequestCreator requestCreatorLoad = c2950r9.m1772a(contextM1254d).load(str2);
                    Object objM1773a = c2950r9.m1773a(new C3278o1(countDownLatch, str2, jElapsedRealtime, adType));
                    requestCreatorLoad.fetch(objM1773a instanceof Callback ? (Callback) objM1773a : null);
                }
            } catch (Exception unused) {
                countDownLatch.countDown();
            }
        }
        try {
            countDownLatch.await();
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
        } catch (InterruptedException unused2) {
        }
        C3323r1 c3323r1 = f2477a;
        c3323r1.m2380e();
        c3323r1.m2372a((byte) 0);
        for (String str3 : arrayList3) {
            C3323r1 c3323r12 = f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            C3201j c3201jM2269a = AbstractC2744Db.m966a().m2269a(str3);
            if (c3201jM2269a != null && c3201jM2269a.m2253a()) {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                c3323r12.m2375b(c3201jM2269a);
            } else {
                m2364a(str3);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m2374a(C3201j c3201j, byte b) {
        m2373a(c3201j);
        f2487k.remove(c3201j.f2204b);
        if (b == -1) {
            m2379d(c3201j.f2204b);
            m2380e();
        } else {
            m2378c(c3201j.f2204b);
            m2372a(b);
        }
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m2372a(byte b) {
        ArrayList arrayList = new ArrayList();
        int size = f2488l.size();
        for (int i = 0; i < size; i++) {
            C3216k c3216k = (C3216k) f2488l.get(i);
            if (c3216k.f2244b > 0) {
                try {
                    InterfaceC3338s1 interfaceC3338s1 = (InterfaceC3338s1) c3216k.f2246d.get();
                    if (interfaceC3338s1 != null) {
                        interfaceC3338s1.mo1823a(c3216k, b);
                    }
                    arrayList.add(c3216k);
                } catch (Exception e) {
                    Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                    C3402w5 c3402w5 = C3402w5.f2709a;
                    C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
                }
            }
        }
        m2376b(arrayList);
    }

    /* JADX INFO: renamed from: a */
    public static void m2361a() {
        if (f2489m.get()) {
            synchronized (f2478b) {
                ArrayList<C3201j> arrayListM2270a = AbstractC2744Db.m966a().m2270a();
                if (arrayListM2270a.isEmpty()) {
                    return;
                }
                for (C3201j asset : arrayListM2270a) {
                    asset.getClass();
                    if (System.currentTimeMillis() > asset.f2209g && f2489m.get()) {
                        C3218k1 c3218k1M966a = AbstractC2744Db.m966a();
                        c3218k1M966a.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        c3218k1M966a.m1752a("id = ?", new String[]{String.valueOf(asset.f2203a)});
                        String str = asset.f2205c;
                        if (str != null) {
                            File file = new File(str);
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    }
                }
                m2367b();
                m2365a(arrayListM2270a);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2365a(ArrayList arrayList) {
        File[] fileArrListFiles;
        File fileM1274b = C2849Kb.f1171a.m1274b(C2849Kb.m1254d());
        if (!fileM1274b.exists() || (fileArrListFiles = fileM1274b.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(file.getAbsolutePath(), ((C3201j) it.next()).f2205c)) {
                        break;
                    }
                } else {
                    Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                    file.getAbsolutePath();
                    file.delete();
                    break;
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static final void m2370b(String remoteUrl) {
        Intrinsics.checkNotNullParameter(remoteUrl, "$remoteUrl");
        C3201j c3201jM2269a = AbstractC2744Db.m966a().m2269a(remoteUrl);
        if (c3201jM2269a != null) {
            if (c3201jM2269a.m2253a()) {
                f2477a.m2375b(c3201jM2269a);
            } else if (m2366a(c3201jM2269a, f2491o)) {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            } else {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2362a(final C3216k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (f2489m.get()) {
            f2481e.execute(new Runnable() { // from class: com.inmobi.media.r1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C3323r1.m2368b(assetBatch);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2363a(final C3216k assetBatch, final String adType) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        Intrinsics.checkNotNullParameter(adType, "adType");
        if (f2489m.get()) {
            f2481e.execute(new Runnable() { // from class: com.inmobi.media.r1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3323r1.m2369b(assetBatch, adType);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m2364a(final String url) {
        C3201j asset;
        AdConfig.AssetCacheConfig assetCacheConfig = f2479c;
        if (assetCacheConfig != null) {
            int iNextInt = new Random().nextInt() & Integer.MAX_VALUE;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            int maxRetries = assetCacheConfig.getMaxRetries();
            long timeToLive = assetCacheConfig.getTimeToLive();
            Intrinsics.checkNotNullParameter(url, "url");
            asset = new C3201j(iNextInt, url == null ? "" : url, null, maxRetries, jCurrentTimeMillis, jCurrentTimeMillis2, System.currentTimeMillis() + timeToLive, 0L);
        } else {
            asset = null;
        }
        if (AbstractC2744Db.m966a().m2269a(url) == null && asset != null) {
            C3218k1 c3218k1M966a = AbstractC2744Db.m966a();
            synchronized (c3218k1M966a) {
                Intrinsics.checkNotNullParameter(asset, "asset");
                c3218k1M966a.m1754a(asset, "url = ?", new String[]{asset.f2204b});
            }
        }
        f2482f.execute(new Runnable() { // from class: com.inmobi.media.r1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3323r1.m2370b(url);
            }
        });
    }
}
