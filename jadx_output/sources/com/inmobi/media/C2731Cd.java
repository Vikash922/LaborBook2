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

/* JADX INFO: renamed from: com.inmobi.media.Cd */
/* JADX INFO: loaded from: classes6.dex */
public final class C2731Cd {

    /* JADX INFO: renamed from: a */
    public C2856L3 f906a;

    /* JADX INFO: renamed from: b */
    public final C2716Bd f907b;

    public C2731Cd(final Context context, final AdConfig.WebAssetCacheConfig webAssetCacheConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "webAssetCacheConfig");
        this.f907b = new C2716Bd();
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.Cd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2731Cd.m933a(webAssetCacheConfig, this, context);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042 A[Catch: Exception -> 0x004d, TRY_LEAVE, TryCatch #0 {Exception -> 0x004d, blocks: (B:5:0x0010, B:6:0x0016, B:8:0x0024, B:10:0x003a, B:13:0x0042), top: B:22:0x0010 }] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream m934a(java.lang.String r8, com.inmobi.media.InterfaceC3147f5 r9) {
        /*
            r7 = this;
            java.lang.String r0 = "did not find any valid cache entry for "
            java.lang.String r1 = "url"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            com.inmobi.media.L3 r1 = r7.f906a
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
            com.inmobi.media.K3 r1 = r1.m1283b(r4)     // Catch: java.lang.Exception -> L4d
            if (r1 == 0) goto L40
            java.io.InputStream[] r4 = r1.f1156a     // Catch: java.lang.Exception -> L4d
            r5 = 0
            r4 = r4[r5]     // Catch: java.lang.Exception -> L4d
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L4d
            java.nio.charset.Charset r6 = com.inmobi.media.AbstractC3023Wc.f1633b     // Catch: java.lang.Exception -> L4d
            r5.<init>(r4, r6)     // Catch: java.lang.Exception -> L4d
            java.lang.String r4 = com.inmobi.media.AbstractC3023Wc.m1894a(r5)     // Catch: java.lang.Exception -> L4d
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r4)     // Catch: java.lang.Exception -> L4d
            if (r4 == 0) goto L40
            java.io.InputStream[] r0 = r1.f1156a     // Catch: java.lang.Exception -> L4d
            r1 = 1
            r8 = r0[r1]     // Catch: java.lang.Exception -> L4d
            return r8
        L40:
            if (r9 == 0) goto L72
            java.lang.String r0 = r0.concat(r8)     // Catch: java.lang.Exception -> L4d
            r1 = r9
            com.inmobi.media.g5 r1 = (com.inmobi.media.C3162g5) r1     // Catch: java.lang.Exception -> L4d
            r1.m2147a(r2, r0)     // Catch: java.lang.Exception -> L4d
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
            com.inmobi.media.g5 r9 = (com.inmobi.media.C3162g5) r9
            r9.m2147a(r2, r8)
        L72:
            return r3
        L73:
            if (r9 == 0) goto L80
            java.lang.String r0 = "Disk Cache Failed to Initialize. Failed readFromCache: "
            java.lang.String r8 = r0.concat(r8)
            com.inmobi.media.g5 r9 = (com.inmobi.media.C3162g5) r9
            r9.m2147a(r2, r8)
        L80:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2731Cd.m934a(java.lang.String, com.inmobi.media.f5):java.io.InputStream");
    }

    /* JADX INFO: renamed from: a */
    public static final void m933a(AdConfig.WebAssetCacheConfig webAssetCacheConfig, C2731Cd this$0, Context context) {
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "$webAssetCacheConfig");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        try {
            long jM1022e = C2751E3.f962a.m1022e();
            if (jM1022e < webAssetCacheConfig.getMinAvailableDiskSpace()) {
                this$0.getClass();
                m932a(context, jM1022e);
                ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
                C3133e6.m2102a(AbstractC3118d6.m2058a(context, "web_asset_file_key"), "cache_enabled", false, false, 4, (Object) null);
            } else {
                this$0.m935a(context, webAssetCacheConfig, jM1022e);
                ConcurrentHashMap concurrentHashMap2 = C3133e6.f2044b;
                C3133e6.m2102a(AbstractC3118d6.m2058a(context, "web_asset_file_key"), "cache_enabled", true, false, 4, (Object) null);
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m935a(Context context, AdConfig.WebAssetCacheConfig webAssetCacheConfig, long j) throws IOException {
        File file = new File(context.getFilesDir(), "inmobiwebassetcache");
        Intrinsics.checkNotNullParameter(webAssetCacheConfig, "webAssetCacheConfig");
        long jMin = ((long) (j == -1 ? 0 : Math.min(webAssetCacheConfig.getCacheSize(), (int) ((j * ((long) webAssetCacheConfig.getCacheSizeToDiskSpaceMaxPercent())) / ((long) 100))))) * 1024 * ((long) 1024);
        C2716Bd c2716Bd = this.f907b;
        Pattern pattern = C2856L3.f1187p;
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
            C2856L3 c2856l3 = new C2856L3(file, jMin, c2716Bd);
            if (c2856l3.f1190b.exists()) {
                try {
                    c2856l3.m1285c();
                    c2856l3.m1284b();
                    c2856l3.f1198j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c2856l3.f1190b, true), AbstractC3023Wc.f1632a));
                } catch (IOException e) {
                    System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    c2856l3.close();
                    AbstractC3023Wc.m1896a(c2856l3.f1189a);
                    file.mkdirs();
                    c2856l3 = new C2856L3(file, jMin, c2716Bd);
                    c2856l3.m1287d();
                }
            } else {
                file.mkdirs();
                c2856l3 = new C2856L3(file, jMin, c2716Bd);
                c2856l3.m1287d();
            }
            Intrinsics.checkNotNullExpressionValue(c2856l3, "open(...)");
            this.f906a = c2856l3;
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* JADX INFO: renamed from: a */
    public static void m932a(Context context, long j) {
        Pair pairM2729to = TuplesKt.m2729to("size", Long.valueOf(j));
        ConcurrentHashMap concurrentHashMap = C3133e6.f2044b;
        C3133e6 c3133e6M2058a = AbstractC3118d6.m2058a(context, "web_asset_file_key");
        Intrinsics.checkNotNullParameter("cache_enabled", "key");
        Map mapMutableMapOf = MapsKt.mutableMapOf(pairM2729to, TuplesKt.m2729to("state", Boolean.valueOf(c3133e6M2058a.f2045a.getBoolean("cache_enabled", false))));
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("LowAvailableSpaceForCache", mapMutableMapOf, EnumC3259mc.f2349a);
    }
}
