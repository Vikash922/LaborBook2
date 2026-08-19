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

/* JADX INFO: renamed from: com.inmobi.media.y0 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3427y0 implements InterfaceC3338s1 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2688A0 f2752a;

    public C3427y0(C2688A0 c2688a0) {
        this.f2752a = c2688a0;
    }

    @Override // com.inmobi.media.InterfaceC3338s1
    /* JADX INFO: renamed from: a */
    public final void mo1823a(C3216k assetBatch, byte b) {
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        C2688A0 c2688a0 = this.f2752a;
        InterfaceC3147f5 interfaceC3147f5 = c2688a0.f814f;
        if (interfaceC3147f5 != null) {
            String str = c2688a0.f812d;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2151b(str, "onAssetsFetchFailure of batch " + assetBatch);
        }
    }

    @Override // com.inmobi.media.InterfaceC3338s1
    /* JADX INFO: renamed from: a */
    public final void mo1822a(C3216k assetBatch) {
        String str;
        Intrinsics.checkNotNullParameter(assetBatch, "assetBatch");
        C2688A0 c2688a0 = this.f2752a;
        InterfaceC3147f5 interfaceC3147f5 = c2688a0.f814f;
        if (interfaceC3147f5 != null) {
            String str2 = c2688a0.f812d;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((C3162g5) interfaceC3147f5).m2147a(str2, "onAssetsFetchSuccess of batch " + assetBatch);
        }
        Set set = assetBatch.f2250h;
        for (C3201j c3201j : assetBatch.f2249g) {
            if (!c3201j.f2211i) {
                this.f2752a.getClass();
                Iterator it = set.iterator();
                while (true) {
                    str = "";
                    if (!it.hasNext()) {
                        break;
                    }
                    C3452za c3452za = (C3452za) it.next();
                    if (Intrinsics.areEqual(c3452za.f2815b, c3201j.f2204b)) {
                        byte b = c3452za.f2814a;
                        if (b == 2) {
                            str = "image";
                        } else if (b == 1) {
                            str = "gif";
                        } else if (b == 0) {
                            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
                        }
                    }
                }
                Pair pairM2729to = TuplesKt.m2729to("latency", Long.valueOf(c3201j.f2213k));
                long length = 0;
                try {
                    String path = Uri.parse(c3201j.f2205c).getPath();
                    if (path != null) {
                        File file = new File(path);
                        if (file.exists()) {
                            length = file.length();
                        }
                    }
                } catch (Exception unused) {
                    Intrinsics.checkNotNullExpressionValue("s4", "TAG");
                }
                Map<String, Object> mapMutableMapOf = MapsKt.mutableMapOf(pairM2729to, TuplesKt.m2729to("size", Float.valueOf((length * 1.0f) / 1024)), TuplesKt.m2729to("assetType", str), TuplesKt.m2729to("networkType", C2751E3.m1005q()));
                String strM1929b = this.f2752a.f811c.m1929b();
                if (strM1929b != null) {
                    mapMutableMapOf.put("adType", strM1929b);
                }
                this.f2752a.f810b.m1636b("AssetDownloaded", mapMutableMapOf);
            }
        }
        C2688A0 c2688a02 = this.f2752a;
        InterfaceC3147f5 interfaceC3147f52 = c2688a02.f814f;
        if (interfaceC3147f52 != null) {
            String str3 = c2688a02.f812d;
            ((C3162g5) interfaceC3147f52).m2147a(str3, AbstractC3208j6.m2261a(str3, "access$getTAG$p(...)", "Notifying ad unit with placement ID (").append(this.f2752a.f811c).append(')').toString());
        }
    }
}
