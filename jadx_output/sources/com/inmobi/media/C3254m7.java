package com.inmobi.media;

import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
import com.facebook.share.internal.ShareConstants;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.itextpdf.kernel.xmp.XMPError;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.m7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3254m7 extends AbstractRunnableC2749E1 {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3359t7 f2325d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C3359t7 f2326e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3254m7(C3359t7 c3359t7, C3359t7 c3359t72) {
        super(c3359t7);
        this.f2325d = c3359t7;
        this.f2326e = c3359t72;
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: a */
    public final void mo991a() {
        JSONObject jSONObjectM1501e;
        C3359t7 c3359t7 = this.f2325d;
        if (c3359t7.f2557C == null) {
            InterfaceC3147f5 interfaceC3147f5 = c3359t7.f2584j;
            if (interfaceC3147f5 != null) {
                String TAG = c3359t7.f2587m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C3162g5) interfaceC3147f5).m2152c(TAG, "prepareFullscreenContainer");
            }
            C2920P7 c2920p7 = c3359t7.f2576b;
            JSONArray jSONArray = c2920p7.f1381f;
            if (jSONArray != null && !AbstractC3429y2.m2608a(jSONArray) && (jSONObjectM1501e = c2920p7.m1501e()) != null) {
                C2920P7 dataModel = new C2920P7(c3359t7.f2575a, jSONObjectM1501e, c2920p7, c3359t7.f2575a == 0, c3359t7.f2593s, c3359t7.f2584j);
                dataModel.f1392q = c2920p7.f1392q;
                Context context = (Context) c3359t7.f2598x.get();
                if (dataModel.m1503f() && context != null) {
                    String adImpressionId = c3359t7.getImpressionId();
                    Set set = c3359t7.f2578d;
                    AdConfig adConfig = c3359t7.f2593s;
                    long j = c3359t7.f2579e;
                    boolean z = c3359t7.f2580f;
                    String creativeId = c3359t7.getCreativeId();
                    C3373u6 c3373u6 = c3359t7.f2583i;
                    InterfaceC3147f5 interfaceC3147f52 = c3359t7.f2584j;
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(dataModel, "dataModel");
                    Intrinsics.checkNotNullParameter(adImpressionId, "adImpressionId");
                    Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                    Intrinsics.checkNotNullParameter(creativeId, "creativeId");
                    C3359t7 c2696a8 = dataModel.m1496c().contains(ShareConstants.VIDEO_URL) ? new C2696A8(context, (byte) 0, dataModel, adImpressionId, set, adConfig, j, z, creativeId, null, c3373u6, interfaceC3147f52) : new C3359t7(context, (byte) 0, dataModel, adImpressionId, set, adConfig, j, z, creativeId, null, c3373u6, interfaceC3147f52);
                    c3359t7.f2557C = c2696a8;
                    c2696a8.f2596v = c3359t7;
                    C2898O0 c2898o0 = c3359t7.f2597w;
                    if (c2898o0 != null) {
                        c2696a8.f2597w = c2898o0;
                    }
                }
            }
        }
        C3359t7 container = this.f2325d.f2557C;
        if (container != null) {
            SparseArray sparseArray = InMobiAdActivity.f787k;
            Intrinsics.checkNotNullParameter(container, "container");
            int iHashCode = container.hashCode();
            InMobiAdActivity.f787k.put(iHashCode, container);
            Intent intent = new Intent((Context) this.f2325d.f2598x.get(), (Class<?>) InMobiAdActivity.class);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", iHashCode);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", XMPError.BADXML);
            Context context2 = (Context) this.f2325d.f2598x.get();
            C3359t7 c3359t72 = this.f2325d;
            if (c3359t72.f2558D) {
                c3359t72.f2561G = intent;
            } else if (context2 != null) {
                C2849Kb.f1171a.m1272a(context2, intent);
            }
        }
    }

    @Override // com.inmobi.media.AbstractRunnableC2749E1
    /* JADX INFO: renamed from: c */
    public final void mo993c() {
        super.mo993c();
        C2898O0 c2898o0 = this.f2326e.f2597w;
        if (c2898o0 != null) {
            c2898o0.m1413c();
        }
    }
}
