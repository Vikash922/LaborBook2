package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Cd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public L3 f92a;
    public final Bd b;

    public Cd(final Context context, final AdConfig.WebAssetCacheConfig webAssetCacheConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "webAssetCacheConfig");
        this.b = new Bd();
        Kb.a(new Runnable() { // from class: com.inmobi.media.Cd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Cd.a(webAssetCacheConfig, this, context);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042 A[Catch: Exception -> 0x004d, TRY_LEAVE, TryCatch #0 {Exception -> 0x004d, blocks: (B:5:0x0010, B:6:0x0016, B:8:0x0024, B:10:0x003a, B:13:0x0042), top: B:22:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream a(java.lang.String r8, com.inmobi.media.InterfaceC0298f5 r9) {
        /*
            r7 = this;
            java.lang.String r0 = "did not find any valid cache entry for "
            java.lang.String r1 = "url"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            com.inmobi.media.L3 r1 = r7.f92a
            java.lang.String r2 = "WebAssetLRUCacheHelper"
            r3 = 0
            if (r1 == 0) goto L73
            if (r1 != 0) goto L16
            java.lang.String r1 = "diskLruCache"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)     // Catch: java.lang.Exception -> L4d
            r1 = r3
        L16:
            int r4 = r8.hashCode()     // Catch: java.lang.Exception -> L4d
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Exception -> L4d
            com.inmobi.media.K3 r1 = r1.b(r4)     // Catch: java.lang.Exception -> L4d
            if (r1 == 0) goto L40
            java.io.InputStream[] r4 = r1.f155a     // Catch: java.lang.Exception -> L4d
            r5 = 0
            r4 = r4[r5]     // Catch: java.lang.Exception -> L4d
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L4d
            java.nio.charset.Charset r6 = com.inmobi.media.Wc.b     // Catch: java.lang.Exception -> L4d
            r5.<init>(r4, r6)     // Catch: java.lang.Exception -> L4d
            java.lang.String r4 = com.inmobi.media.Wc.a(r5)     // Catch: java.lang.Exception -> L4d
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r4)     // Catch: java.lang.Exception -> L4d
            if (r4 == 0) goto L40
            java.io.InputStream[] r0 = r1.f155a     // Catch: java.lang.Exception -> L4d
            r1 = 1
            r8 = r0[r1]     // Catch: java.lang.Exception -> L4d
            return r8
        L40:
            if (r9 == 0) goto L72
            java.lang.String r0 = r0.concat(r8)     // Catch: java.lang.Exception -> L4d
            r1 = r9
            com.inmobi.media.g5 r1 = (com.inmobi.media.C0314g5) r1     // Catch: java.lang.Exception -> L4d
            r1.a(r2, r0)     // Catch: java.lang.Exception -> L4d
            goto L72
        L4d:
            r0 = move-exception
            if (r9 == 0) goto L72
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r4 = "Failed to read from cache with: "
            r1.<init>(r4)
            java.lang.String r0 = r0.getMessage()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = " for "
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r8 = r0.append(r8)
            java.lang.String r8 = r8.toString()
            com.inmobi.media.g5 r9 = (com.inmobi.media.C0314g5) r9
            r9.a(r2, r8)
        L72:
            return r3
        L73:
            if (r9 == 0) goto L80
            java.lang.String r0 = "Disk Cache Failed to Initialize. Failed readFromCache: "
            java.lang.String r8 = r0.concat(r8)
            com.inmobi.media.g5 r9 = (com.inmobi.media.C0314g5) r9
            r9.a(r2, r8)
        L80:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Cd.a(java.lang.String, com.inmobi.media.f5):java.io.InputStream");
    }

    public static final void a(AdConfig.WebAssetCacheConfig webAssetCacheConfig, Cd this$0, Context context) {
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "$webAssetCacheConfig");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        try {
            long jE = E3.f104a.e();
            if (jE < webAssetCacheConfig.getMinAvailableDiskSpace()) {
                this$0.getClass();
                a(context, jE);
                ConcurrentHashMap concurrentHashMap = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(context, "web_asset_file_key"), "cache_enabled", false, false, 4, (Object) null);
            } else {
                this$0.a(context, webAssetCacheConfig, jE);
                ConcurrentHashMap concurrentHashMap2 = C0284e6.b;
                C0284e6.a(AbstractC0268d6.a(context, "web_asset_file_key"), "cache_enabled", true, false, 4, (Object) null);
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }

    public final void a(Context context, AdConfig.WebAssetCacheConfig webAssetCacheConfig, long j) throws IOException {
        File file = new File(context.getFilesDir(), "inmobiwebassetcache");
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "webAssetCacheConfig");
        long jMin = ((long) (j == -1 ? 0 : Math.min(webAssetCacheConfig.getCacheSize(), (int) ((j * ((long) webAssetCacheConfig.getCacheSizeToDiskSpaceMaxPercent())) / ((long) 100))))) * 1024 * ((long) 1024);
        Bd bd = this.b;
        Pattern pattern = L3.p;
        if (jMin > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else if (!file2.renameTo(file3)) {
                    throw new IOException();
                }
            }
            L3 l3 = new L3(file, jMin, bd);
            if (l3.b.exists()) {
                try {
                    l3.c();
                    l3.b();
                    l3.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(l3.b, true), Wc.f275a));
                } catch (IOException e) {
                    System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    l3.close();
                    Wc.a(l3.f167a);
                    file.mkdirs();
                    l3 = new L3(file, jMin, bd);
                    l3.d();
                }
            } else {
                file.mkdirs();
                l3 = new L3(file, jMin, bd);
                l3.d();
            }
            Intrinsics.checkNotNullExpressionValue(l3, "open(...)");
            this.f92a = l3;
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public static void a(Context context, long j) {
        Pair pair = TuplesKt.to("size", Long.valueOf(j));
        ConcurrentHashMap concurrentHashMap = C0284e6.b;
        C0284e6 c0284e6A = AbstractC0268d6.a(context, "web_asset_file_key");
        Intrinsics.checkNotNullParameter("cache_enabled", "key");
        Map mapMutableMapOf = MapsKt.mutableMapOf(pair, TuplesKt.to("state", Boolean.valueOf(c0284e6A.f340a.getBoolean("cache_enabled", false))));
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("LowAvailableSpaceForCache", mapMutableMapOf, EnumC0415mc.f426a);
    }
}
