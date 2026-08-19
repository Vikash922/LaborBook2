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

/* JADX INFO: renamed from: com.inmobi.media.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC0419n1 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f429a;
    public final C0404m1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0419n1(Looper looper, C0477r1 assetStore) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        Intrinsics.checkNotNullParameter(assetStore, "assetStore");
        this.f429a = new WeakReference(assetStore);
        this.b = new C0404m1(this);
    }

    public final void a() {
        try {
            sendEmptyMessage(1);
        } catch (Exception unused) {
            C0477r1 c0477r1 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        try {
        } catch (Exception e) {
            C0477r1 c0477r1 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
        if (C0477r1.m.get()) {
            C0477r1 c0477r12 = (C0477r1) this.f429a.get();
            int i = msg.what;
            if (i == 1) {
                if (c0477r12 != null) {
                    AdConfig.AssetCacheConfig assetCache = C0477r1.c;
                    if (assetCache == null) {
                        LinkedHashMap linkedHashMap = K2.f154a;
                        Config configA = I2.a("ads", Kb.b(), null);
                        Intrinsics.checkNotNull(configA, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
                        assetCache = ((AdConfig) configA).getAssetCache();
                    }
                    ArrayList arrayListB = Db.a().b();
                    if (arrayListB.isEmpty()) {
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                        C0477r1.d();
                        return;
                    }
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    C0356j c0356j = (C0356j) arrayListB.get(0);
                    Iterator it = arrayListB.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        C0356j c0356j2 = (C0356j) it.next();
                        if (!C0477r1.k.containsKey(c0356j.b)) {
                            c0356j = c0356j2;
                            break;
                        }
                    }
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 1;
                    long jCurrentTimeMillis = System.currentTimeMillis() - c0356j.e;
                    try {
                        if (jCurrentTimeMillis < assetCache.getRetryInterval() * 1000) {
                            sendMessageDelayed(messageObtain, ((long) (assetCache.getRetryInterval() * 1000)) - jCurrentTimeMillis);
                        } else if (C0477r1.k.containsKey(c0356j.b)) {
                            sendMessageDelayed(messageObtain, assetCache.getRetryInterval() * 1000);
                        } else {
                            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 2;
                            messageObtain2.obj = c0356j.b;
                            sendMessage(messageObtain2);
                        }
                        return;
                    } catch (Exception unused) {
                        C0477r1 c0477r13 = C0477r1.f467a;
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                        return;
                    }
                }
                return;
            }
            if (i != 2) {
                if (i == 3) {
                    a();
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (c0477r12 != null) {
                    Object obj = msg.obj;
                    C0356j asset = obj instanceof C0356j ? (C0356j) obj : null;
                    if (asset != null) {
                        C0373k1 c0373k1A = Db.a();
                        c0373k1A.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        c0373k1A.a("id = ?", new String[]{String.valueOf(asset.f389a)});
                    }
                }
                a();
                return;
            }
            if (c0477r12 != null) {
                Object obj2 = msg.obj;
                String str = obj2 instanceof String ? (String) obj2 : null;
                if (str == null) {
                    return;
                }
                C0356j c0356jB = Db.a().b(str);
                if (c0356jB == null) {
                    a();
                    return;
                }
                if (c0356jB.a()) {
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    try {
                        sendEmptyMessage(3);
                    } catch (Exception unused2) {
                        C0477r1 c0477r14 = C0477r1.f467a;
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    }
                    c0477r12.a(c0356jB, (byte) -1);
                    return;
                }
                AdConfig.AssetCacheConfig assetCacheConfig = C0477r1.c;
                if (assetCacheConfig != null) {
                    assetCacheConfig.getMaxRetries();
                }
                if (c0356jB.d <= 0) {
                    c0356jB.l = (byte) 6;
                    c0477r12.a(c0356jB, (byte) 6);
                    try {
                        Message messageObtain3 = Message.obtain();
                        messageObtain3.what = 4;
                        messageObtain3.obj = c0356jB;
                        sendMessage(messageObtain3);
                        return;
                    } catch (Exception unused3) {
                        C0477r1 c0477r15 = C0477r1.f467a;
                        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                        return;
                    }
                }
                boolean z = C0457p9.f457a;
                if (C0457p9.a(false) != null) {
                    c0477r12.a(c0356jB, c0356jB.l);
                    C0477r1.d();
                    return;
                } else if (C0477r1.a(c0356jB, this.b)) {
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    return;
                } else {
                    Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                    a();
                    return;
                }
            }
            return;
            C0477r1 c0477r16 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C0551w5 c0551w52 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}
