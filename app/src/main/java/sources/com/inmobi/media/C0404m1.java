package com.inmobi.media;

import android.os.Message;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0404m1 implements InterfaceC0388l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HandlerC0419n1 f418a;

    public C0404m1(HandlerC0419n1 handlerC0419n1) {
        this.f418a = handlerC0419n1;
    }

    @Override // com.inmobi.media.InterfaceC0388l1
    public final void a(C0412m9 response, String locationOnDisk, C0356j asset) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C0477r1 c0477r1 = (C0477r1) this.f418a.f429a.get();
        AdConfig.AssetCacheConfig assetCacheConfig = c0477r1 != null ? C0477r1.c : null;
        if (assetCacheConfig == null) {
            C0477r1 c0477r12 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            return;
        }
        C0477r1 c0477r13 = C0477r1.f467a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        C0340i c0340iA = new C0340i().a(asset.b, locationOnDisk, response, assetCacheConfig.getMaxRetries(), assetCacheConfig.getTimeToLive());
        int i = c0340iA.f379a;
        String str = c0340iA.c;
        if (str == null) {
            str = "";
        }
        C0356j c0356j = new C0356j(i, str, c0340iA.d, c0340iA.b, c0340iA.e, c0340iA.f, c0340iA.g, c0340iA.h);
        Db.a().a(c0356j);
        c0356j.j = asset.j;
        c0356j.k = asset.k;
        c0477r1.a(c0356j, (byte) -1);
        HandlerC0419n1 handlerC0419n1 = this.f418a;
        handlerC0419n1.getClass();
        try {
            handlerC0419n1.sendEmptyMessage(3);
        } catch (Exception unused) {
            C0477r1 c0477r14 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
        }
    }

    @Override // com.inmobi.media.InterfaceC0388l1
    public final void a(C0356j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        C0477r1 c0477r1 = (C0477r1) this.f418a.f429a.get();
        if (c0477r1 != null) {
            C0477r1 c0477r12 = C0477r1.f467a;
            Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
            C0477r1.k.remove(asset.b);
            int i = asset.d;
            if (i > 0) {
                asset.d = i - 1;
                asset.e = System.currentTimeMillis();
                Db.a().a(asset);
                this.f418a.a();
                return;
            }
            c0477r1.a(asset, asset.l);
            HandlerC0419n1 handlerC0419n1 = this.f418a;
            handlerC0419n1.getClass();
            try {
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.obj = asset;
                handlerC0419n1.sendMessage(messageObtain);
                return;
            } catch (Exception unused) {
                C0477r1 c0477r13 = C0477r1.f467a;
                Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
                return;
            }
        }
        C0477r1 c0477r14 = C0477r1.f467a;
        Intrinsics.checkNotNullExpressionValue("r1", "access$getTAG$p(...)");
    }
}
