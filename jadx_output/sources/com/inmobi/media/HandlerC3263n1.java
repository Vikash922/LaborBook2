package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.n1 */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC3263n1 extends Handler {

    /* JADX INFO: renamed from: a */
    public final WeakReference f2368a;

    /* JADX INFO: renamed from: b */
    public final C3248m1 f2369b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3263n1(Looper looper, C3323r1 assetStore) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        Intrinsics.checkNotNullParameter(assetStore, "assetStore");
        this.f2368a = new WeakReference(assetStore);
        this.f2369b = new C3248m1(this);
    }

    /* JADX INFO: renamed from: a */
    public final void m2309a() {
        try {
            sendEmptyMessage(1);
        } catch (Exception unused) {
            C3323r1 c3323r1 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        try {
        } catch (Exception e) {
            C3323r1 c3323r1 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
        if (C3323r1.f2489m.get()) {
            C3323r1 c3323r12 = (C3323r1) this.f2368a.get();
            int i = msg.what;
            if (i == 1) {
                if (c3323r12 != null) {
                    AdConfig.AssetCacheConfig assetCache = C3323r1.f2479c;
                    if (assetCache == null) {
                        LinkedHashMap linkedHashMap = C2840K2.f1150a;
                        Config configM1161a = C2810I2.m1161a("ads", C2849Kb.m1248b(), null);
                        Intrinsics.checkNotNull(configM1161a, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
                        assetCache = ((AdConfig) configM1161a).getAssetCache();
                    }
                    ArrayList arrayListM2273b = AbstractC2744Db.m966a().m2273b();
                    if (arrayListM2273b.isEmpty()) {
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                        C3323r1.m2371d();
                        return;
                    }
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    C3201j c3201j = (C3201j) arrayListM2273b.get(0);
                    Iterator it = arrayListM2273b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        C3201j c3201j2 = (C3201j) it.next();
                        if (!C3323r1.f2487k.containsKey(c3201j.f2204b)) {
                            c3201j = c3201j2;
                            break;
                        }
                    }
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 1;
                    long jCurrentTimeMillis = System.currentTimeMillis() - c3201j.f2207e;
                    try {
                        if (jCurrentTimeMillis < assetCache.getRetryInterval() * 1000) {
                            sendMessageDelayed(messageObtain, ((long) (assetCache.getRetryInterval() * 1000)) - jCurrentTimeMillis);
                        } else if (C3323r1.f2487k.containsKey(c3201j.f2204b)) {
                            sendMessageDelayed(messageObtain, assetCache.getRetryInterval() * 1000);
                        } else {
                            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 2;
                            messageObtain2.obj = c3201j.f2204b;
                            sendMessage(messageObtain2);
                        }
                        return;
                    } catch (Exception unused) {
                        C3323r1 c3323r13 = C3323r1.f2477a;
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                        return;
                    }
                }
                return;
            }
            if (i != 2) {
                if (i == 3) {
                    m2309a();
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (c3323r12 != null) {
                    Object obj = msg.obj;
                    C3201j asset = obj instanceof C3201j ? (C3201j) obj : null;
                    if (asset != null) {
                        C3218k1 c3218k1M966a = AbstractC2744Db.m966a();
                        c3218k1M966a.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        c3218k1M966a.m1752a("id = ?", new String[]{String.valueOf(asset.f2203a)});
                    }
                }
                m2309a();
                return;
            }
            if (c3323r12 != null) {
                Object obj2 = msg.obj;
                String str = obj2 instanceof String ? (String) obj2 : null;
                if (str == null) {
                    return;
                }
                C3201j c3201jM2272b = AbstractC2744Db.m966a().m2272b(str);
                if (c3201jM2272b == null) {
                    m2309a();
                    return;
                }
                if (c3201jM2272b.m2253a()) {
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    try {
                        sendEmptyMessage(3);
                    } catch (Exception unused2) {
                        C3323r1 c3323r14 = C3323r1.f2477a;
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    }
                    c3323r12.m2374a(c3201jM2272b, (byte) -1);
                    return;
                }
                AdConfig.AssetCacheConfig assetCacheConfig = C3323r1.f2479c;
                if (assetCacheConfig != null) {
                    assetCacheConfig.getMaxRetries();
                }
                if (c3201jM2272b.f2206d <= 0) {
                    c3201jM2272b.f2214l = (byte) 6;
                    c3323r12.m2374a(c3201jM2272b, (byte) 6);
                    try {
                        Message messageObtain3 = Message.obtain();
                        messageObtain3.what = 4;
                        messageObtain3.obj = c3201jM2272b;
                        sendMessage(messageObtain3);
                        return;
                    } catch (Exception unused3) {
                        C3323r1 c3323r15 = C3323r1.f2477a;
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                        return;
                    }
                }
                boolean z = C3301p9.f2439a;
                if (C3301p9.m2342a(false) != null) {
                    c3323r12.m2374a(c3201jM2272b, c3201jM2272b.f2214l);
                    C3323r1.m2371d();
                    return;
                } else if (C3323r1.m2366a(c3201jM2272b, this.f2369b)) {
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    return;
                } else {
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    m2309a();
                    return;
                }
            }
            return;
            C3323r1 c3323r16 = C3323r1.f2477a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C3402w5 c3402w52 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}
