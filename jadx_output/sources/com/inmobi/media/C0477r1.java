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

/* JADX INFO: renamed from: com.inmobi.media.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0477r1 implements J2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0477r1 f467a;
    public static final Object b;
    public static AdConfig.AssetCacheConfig c;
    public static AdConfig.VastVideoConfig d;
    public static final ExecutorService e;
    public static final ThreadPoolExecutor f;
    public static HandlerC0419n1 g;
    public static HandlerThread h;
    public static final AtomicBoolean i;
    public static final AtomicBoolean j;
    public static final ConcurrentHashMap k;
    public static final ArrayList l;
    public static final AtomicBoolean m;
    public static final C0449p1 n;
    public static final C0464q1 o;

    @Override // com.inmobi.media.J2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (!(config instanceof AdConfig)) {
            c = null;
            d = null;
        } else {
            AdConfig adConfig = (AdConfig) config;
            c = adConfig.getAssetCache();
            d = adConfig.getVastVideo();
        }
    }

    public final void b(C0356j c0356j) {
        String locationOnDisk = c0356j.c;
        AdConfig.AssetCacheConfig assetCacheConfig = c;
        if (locationOnDisk == null || locationOnDisk.length() == 0 || assetCacheConfig == null) {
            return;
        }
        File file = new File(locationOnDisk);
        long jMin = Math.min((c0356j.g - c0356j.e) + System.currentTimeMillis(), (assetCacheConfig.getTimeToLive() * ((long) 1000)) + System.currentTimeMillis());
        int iNextInt = new Random().nextInt() & Integer.MAX_VALUE;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        String url = c0356j.b;
        int maxRetries = assetCacheConfig.getMaxRetries();
        long j2 = c0356j.h;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        if (url == null) {
            url = "";
        }
        C0356j c0356j2 = new C0356j(iNextInt, url, locationOnDisk, maxRetries, jCurrentTimeMillis, jCurrentTimeMillis2, jMin, j2);
        c0356j2.e = System.currentTimeMillis();
        Db.a().a(c0356j2);
        long j3 = c0356j.e;
        c0356j2.j = AbstractC0386l.a(c0356j, file, j3, j3);
        c0356j2.i = true;
        a(c0356j2, (byte) -1);
    }

    public final synchronized void c(String str) {
        int size = l.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0371k c0371k = (C0371k) l.get(i2);
            Iterator it = c0371k.h.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(((C0600za) it.next()).b, str)) {
                        c0371k.b++;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
    }

    public final synchronized void d(String str) {
        int size = l.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0371k c0371k = (C0371k) l.get(i2);
            Set set = c0371k.h;
            HashSet hashSet = c0371k.e;
            Iterator it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (Intrinsics.areEqual(((C0600za) it.next()).b, str)) {
                    if (!hashSet.contains(str)) {
                        c0371k.e.add(str);
                        c0371k.f398a++;
                    }
                }
            }
        }
    }

    public final synchronized void e() {
        ArrayList arrayList = new ArrayList();
        int size = l.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0371k c0371k = (C0371k) l.get(i2);
            if (c0371k.f398a == c0371k.h.size()) {
                try {
                    InterfaceC0491s1 interfaceC0491s1 = (InterfaceC0491s1) c0371k.d.get();
                    if (interfaceC0491s1 != null) {
                        interfaceC0491s1.a(c0371k);
                    }
                    arrayList.add(c0371k);
                } catch (Exception e2) {
                    Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                    C0551w5 c0551w5 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
                }
            }
        }
        b(arrayList);
    }

    static {
        C0477r1 c0477r1 = new C0477r1();
        f467a = c0477r1;
        b = new Object();
        i = new AtomicBoolean(false);
        j = new AtomicBoolean(false);
        l = new ArrayList();
        m = new AtomicBoolean(true);
        n = C0449p1.f450a;
        LinkedHashMap linkedHashMap = K2.f154a;
        Config configA = I2.a("ads", Kb.b(), c0477r1);
        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        AdConfig adConfig = (AdConfig) configA;
        c = adConfig.getAssetCache();
        d = adConfig.getVastVideo();
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new ThreadFactoryC0453p5("r1".concat("-AP")));
        Intrinsics.checkNotNullExpressionValue(executorServiceNewCachedThreadPool, "newCachedThreadPool(...)");
        e = executorServiceNewCachedThreadPool;
        int i2 = AbstractC0407m4.f421a;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 5L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactoryC0453p5("r1".concat("-AD")));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f = threadPoolExecutor;
        HandlerThread handlerThread = new HandlerThread("assetFetcher");
        h = handlerThread;
        AbstractC0467q4.a(handlerThread, "assetFetcher");
        HandlerThread handlerThread2 = h;
        Intrinsics.checkNotNull(handlerThread2);
        Looper looper = handlerThread2.getLooper();
        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
        g = new HandlerC0419n1(looper, c0477r1);
        k = new ConcurrentHashMap(2, 0.9f, 2);
        o = new C0464q1();
    }

    public final synchronized void a(C0356j c0356j) {
        int size = l.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0371k c0371k = (C0371k) l.get(i2);
            Iterator it = c0371k.h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (Intrinsics.areEqual(((C0600za) it.next()).b, c0356j.b)) {
                    if (!c0371k.g.contains(c0356j)) {
                        c0371k.g.add(c0356j);
                    }
                }
            }
        }
    }

    public final void c() {
        if (m.get()) {
            j.set(false);
            boolean z = C0457p9.f457a;
            if (C0457p9.a(false) != null) {
                C0333h7 c0333h7F = Kb.f();
                C0449p1 c0449p1 = n;
                c0333h7F.a(c0449p1);
                Kb.f().a(new int[]{10, 2, 1}, c0449p1);
                return;
            }
            synchronized (b) {
                if (i.compareAndSet(false, true)) {
                    if (h == null) {
                        HandlerThread handlerThread = new HandlerThread("assetFetcher");
                        h = handlerThread;
                        AbstractC0467q4.a(handlerThread, "assetFetcher");
                    }
                    if (g == null) {
                        HandlerThread handlerThread2 = h;
                        Intrinsics.checkNotNull(handlerThread2);
                        Looper looper = handlerThread2.getLooper();
                        Intrinsics.checkNotNullExpressionValue(looper, "getLooper(...)");
                        g = new HandlerC0419n1(looper, this);
                    }
                    if (Db.a().b().isEmpty()) {
                        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                        d();
                    } else {
                        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                        C0333h7 c0333h7F2 = Kb.f();
                        C0449p1 c0449p12 = n;
                        c0333h7F2.a(c0449p12);
                        Kb.f().a(new int[]{10, 2, 1}, c0449p12);
                        HandlerC0419n1 handlerC0419n1 = g;
                        Intrinsics.checkNotNull(handlerC0419n1);
                        handlerC0419n1.sendEmptyMessage(1);
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public static void d() {
        if (m.get()) {
            synchronized (b) {
                i.set(false);
                k.clear();
                HandlerThread handlerThread = h;
                if (handlerThread != null) {
                    handlerThread.getLooper().quit();
                    handlerThread.interrupt();
                    h = null;
                    g = null;
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
        r7 = new com.inmobi.media.C0412m9();
        r7.e = r3.getHeaderFields();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0176, code lost:
    
        r14 = r1;
        r15 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x017e, code lost:
    
        r20.j = com.inmobi.media.AbstractC0386l.a(r20, r11, r18, r12);
        r20.k = r12 - r18;
        r1 = r8.f416a;
        r2 = r11.getAbsolutePath();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "getAbsolutePath(...)");
        r1.a(r7, r2, r20);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.inmobi.media.C0356j r20, com.inmobi.media.InterfaceC0388l1 r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C0477r1.a(com.inmobi.media.j, com.inmobi.media.l1):boolean");
    }

    public final synchronized void b(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            l.remove(arrayList.get(i2));
        }
    }

    public static void b() {
        ArrayList arrayListA = Db.a().a();
        long length = 0;
        if (!arrayListA.isEmpty()) {
            Iterator it = arrayListA.iterator();
            while (it.hasNext()) {
                String str = ((C0356j) it.next()).c;
                if (str != null) {
                    length += new File(str).length();
                }
            }
        }
        AdConfig.AssetCacheConfig assetCacheConfig = c;
        Unit unit = null;
        if (assetCacheConfig != null) {
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            assetCacheConfig.getMaxCacheSize();
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            if (length > assetCacheConfig.getMaxCacheSize()) {
                C0373k1 c0373k1A = Db.a();
                c0373k1A.getClass();
                ArrayList arrayListA2 = R1.a(c0373k1A, null, null, null, null, "ts ASC ", 1, 15);
                C0356j asset = arrayListA2.isEmpty() ? null : (C0356j) arrayListA2.get(0);
                if (asset != null) {
                    if (m.get()) {
                        C0373k1 c0373k1A2 = Db.a();
                        c0373k1A2.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        c0373k1A2.a("id = ?", new String[]{String.valueOf(asset.f389a)});
                        String str2 = asset.c;
                        if (str2 != null) {
                            File file = new File(str2);
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    }
                    b();
                }
            }
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
        }
    }

    public static final void b(C0371k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "$assetBatch");
        synchronized (f467a) {
            ArrayList arrayList = l;
            if (!arrayList.contains(assetBatch)) {
                arrayList.add(assetBatch);
            }
        }
        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
        assetBatch.h.size();
        Iterator it = assetBatch.h.iterator();
        while (it.hasNext()) {
            String str = ((C0600za) it.next()).b;
            C0477r1 c0477r1 = f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            C0356j c0356jA = Db.a().a(str);
            if (c0356jA != null && c0356jA.a()) {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                c0477r1.b(c0356jA);
            } else {
                a(str);
            }
        }
    }

    public static final void b(C0371k assetBatch, String adType) {
        Intrinsics.checkNotNullParameter(assetBatch, "$assetBatch");
        Intrinsics.checkNotNullParameter(adType, "$adType");
        synchronized (f467a) {
            ArrayList arrayList = l;
            if (!arrayList.contains(assetBatch)) {
                arrayList.add(assetBatch);
            }
        }
        Intrinsics.checkNotNullExpressionValue("r1", "TAG");
        assetBatch.h.size();
        ArrayList<String> arrayList2 = new ArrayList();
        ArrayList<String> arrayList3 = new ArrayList();
        for (C0600za c0600za : assetBatch.h) {
            String str = c0600za.b;
            int length = str.length() - 1;
            int i2 = 0;
            boolean z = false;
            while (i2 <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i2 : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i2++;
                } else {
                    z = true;
                }
            }
            if (str.subSequence(i2, length + 1).toString().length() > 0 && c0600za.f550a == 2) {
                arrayList2.add(c0600za.b);
            } else {
                arrayList3.add(c0600za.b);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(arrayList2.size());
        for (String str2 : arrayList2) {
            try {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Context contextD = Kb.d();
                if (contextD != null) {
                    R9 r9 = R9.f235a;
                    RequestCreator requestCreatorLoad = r9.a(contextD).load(str2);
                    Object objA = r9.a(new C0434o1(countDownLatch, str2, jElapsedRealtime, adType));
                    requestCreatorLoad.fetch(objA instanceof Callback ? (Callback) objA : null);
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
        C0477r1 c0477r1 = f467a;
        c0477r1.e();
        c0477r1.a((byte) 0);
        for (String str3 : arrayList3) {
            C0477r1 c0477r12 = f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            C0356j c0356jA = Db.a().a(str3);
            if (c0356jA != null && c0356jA.a()) {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                c0477r12.b(c0356jA);
            } else {
                a(str3);
            }
        }
    }

    public final synchronized void a(C0356j c0356j, byte b2) {
        a(c0356j);
        k.remove(c0356j.b);
        if (b2 == -1) {
            d(c0356j.b);
            e();
        } else {
            c(c0356j.b);
            a(b2);
        }
    }

    public final synchronized void a(byte b2) {
        ArrayList arrayList = new ArrayList();
        int size = l.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0371k c0371k = (C0371k) l.get(i2);
            if (c0371k.b > 0) {
                try {
                    InterfaceC0491s1 interfaceC0491s1 = (InterfaceC0491s1) c0371k.d.get();
                    if (interfaceC0491s1 != null) {
                        interfaceC0491s1.a(c0371k, b2);
                    }
                    arrayList.add(c0371k);
                } catch (Exception e2) {
                    Intrinsics.checkNotNullExpressionValue("r1", "TAG");
                    C0551w5 c0551w5 = C0551w5.f513a;
                    C0551w5.d.a(AbstractC0251c5.a(e2, "event"));
                }
            }
        }
        b(arrayList);
    }

    public static void a() {
        if (m.get()) {
            synchronized (b) {
                ArrayList<C0356j> arrayListA = Db.a().a();
                if (arrayListA.isEmpty()) {
                    return;
                }
                for (C0356j asset : arrayListA) {
                    asset.getClass();
                    if (System.currentTimeMillis() > asset.g && m.get()) {
                        C0373k1 c0373k1A = Db.a();
                        c0373k1A.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        c0373k1A.a("id = ?", new String[]{String.valueOf(asset.f389a)});
                        String str = asset.c;
                        if (str != null) {
                            File file = new File(str);
                            if (file.exists()) {
                                file.delete();
                            }
                        }
                    }
                }
                b();
                a(arrayListA);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public static void a(ArrayList arrayList) {
        File[] fileArrListFiles;
        File fileB = Kb.f162a.b(Kb.d());
        if (!fileB.exists() || (fileArrListFiles = fileB.listFiles()) == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (Intrinsics.areEqual(file.getAbsolutePath(), ((C0356j) it.next()).c)) {
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

    public static final void b(String remoteUrl) {
        Intrinsics.checkNotNullParameter(remoteUrl, "$remoteUrl");
        C0356j c0356jA = Db.a().a(remoteUrl);
        if (c0356jA != null) {
            if (c0356jA.a()) {
                f467a.b(c0356jA);
            } else if (a(c0356jA, o)) {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            } else {
                Intrinsics.checkNotNullExpressionValue("r1", "TAG");
            }
        }
    }

    public static void a(final C0371k assetBatch) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        if (m.get()) {
            e.execute(new Runnable() { // from class: com.inmobi.media.r1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    C0477r1.b(assetBatch);
                }
            });
        }
    }

    public static void a(final C0371k assetBatch, final String adType) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        Intrinsics.checkNotNullParameter(adType, "adType");
        if (m.get()) {
            e.execute(new Runnable() { // from class: com.inmobi.media.r1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0477r1.b(assetBatch, adType);
                }
            });
        }
    }

    public static void a(final String url) {
        C0356j asset;
        AdConfig.AssetCacheConfig assetCacheConfig = c;
        if (assetCacheConfig != null) {
            int iNextInt = new Random().nextInt() & Integer.MAX_VALUE;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            int maxRetries = assetCacheConfig.getMaxRetries();
            long timeToLive = assetCacheConfig.getTimeToLive();
            Intrinsics.checkNotNullParameter(url, "url");
            asset = new C0356j(iNextInt, url == null ? "" : url, null, maxRetries, jCurrentTimeMillis, jCurrentTimeMillis2, System.currentTimeMillis() + timeToLive, 0L);
        } else {
            asset = null;
        }
        if (Db.a().a(url) == null && asset != null) {
            C0373k1 c0373k1A = Db.a();
            synchronized (c0373k1A) {
                Intrinsics.checkNotNullParameter(asset, "asset");
                c0373k1A.a(asset, "url = ?", new String[]{asset.b});
            }
        }
        f.execute(new Runnable() { // from class: com.inmobi.media.r1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C0477r1.b(url);
            }
        });
    }
}
