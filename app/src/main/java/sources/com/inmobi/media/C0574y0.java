package com.inmobi.media;

import android.net.Uri;
import com.facebook.internal.AnalyticsEvents;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0574y0 implements InterfaceC0491s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A0 f528a;

    public C0574y0(A0 a0) {
        this.f528a = a0;
    }

    @Override // com.inmobi.media.InterfaceC0491s1
    public final void a(C0371k assetBatch, byte b) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        A0 a0 = this.f528a;
        InterfaceC0298f5 interfaceC0298f5 = a0.f;
        if (interfaceC0298f5 != null) {
            String str = a0.d;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).b(str, "onAssetsFetchFailure of batch " + assetBatch);
        }
    }

    @Override // com.inmobi.media.InterfaceC0491s1
    public final void a(C0371k assetBatch) {
        String str;
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        A0 a0 = this.f528a;
        InterfaceC0298f5 interfaceC0298f5 = a0.f;
        if (interfaceC0298f5 != null) {
            String str2 = a0.d;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C0314g5) interfaceC0298f5).a(str2, "onAssetsFetchSuccess of batch " + assetBatch);
        }
        Set set = assetBatch.h;
        for (C0356j c0356j : assetBatch.g) {
            if (!c0356j.i) {
                this.f528a.getClass();
                Iterator it = set.iterator();
                while (true) {
                    str = "";
                    if (!it.hasNext()) {
                        break;
                    }
                    C0600za c0600za = (C0600za) it.next();
                    if (Intrinsics.areEqual(c0600za.b, c0356j.b)) {
                        byte b = c0600za.f550a;
                        if (b == 2) {
                            str = "image";
                        } else if (b == 1) {
                            str = "gif";
                        } else if (b == 0) {
                            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
                        }
                    }
                }
                Pair pair = TuplesKt.to("latency", Long.valueOf(c0356j.k));
                long length = 0;
                try {
                    String path = Uri.parse(c0356j.c).getPath();
                    if (path != null) {
                        File file = new File(path);
                        if (file.exists()) {
                            length = file.length();
                        }
                    }
                } catch (Exception unused) {
                    Intrinsics.checkNotNullExpressionValue("s4", "TAG");
                }
                Map<String, Object> mapMutableMapOf = MapsKt.mutableMapOf(pair, TuplesKt.to("size", Float.valueOf((length * 1.0f) / 1024)), TuplesKt.to("assetType", str), TuplesKt.to("networkType", E3.q()));
                String strB = this.f528a.c.b();
                if (strB != null) {
                    mapMutableMapOf.put("adType", strB);
                }
                this.f528a.b.b("AssetDownloaded", mapMutableMapOf);
            }
        }
        A0 a02 = this.f528a;
        InterfaceC0298f5 interfaceC0298f52 = a02.f;
        if (interfaceC0298f52 != null) {
            String str3 = a02.d;
            ((C0314g5) interfaceC0298f52).a(str3, AbstractC0363j6.a(str3, "access$getTAG$p(...)", "Notifying ad unit with placement ID (").append(this.f528a.c).append(')').toString());
        }
    }
}
