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

/* JADX INFO: renamed from: com.inmobi.media.m7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0410m7 extends E1 {
    public final /* synthetic */ C0511t7 d;
    public final /* synthetic */ C0511t7 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0410m7(C0511t7 c0511t7, C0511t7 c0511t72) {
        super(c0511t7);
        this.d = c0511t7;
        this.e = c0511t72;
    }

    @Override // com.inmobi.media.E1
    public final void a() {
        JSONObject jSONObjectE;
        C0511t7 c0511t7 = this.d;
        if (c0511t7.C == null) {
            InterfaceC0298f5 interfaceC0298f5 = c0511t7.j;
            if (interfaceC0298f5 != null) {
                String TAG = c0511t7.m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((C0314g5) interfaceC0298f5).c(TAG, "prepareFullscreenContainer");
            }
            P7 p7 = c0511t7.b;
            JSONArray jSONArray = p7.f;
            if (jSONArray != null && !AbstractC0576y2.a(jSONArray) && (jSONObjectE = p7.e()) != null) {
                P7 dataModel = new P7(c0511t7.f490a, jSONObjectE, p7, c0511t7.f490a == 0, c0511t7.s, c0511t7.j);
                dataModel.q = p7.q;
                Context context = (Context) c0511t7.x.get();
                if (dataModel.f() && context != null) {
                    String adImpressionId = c0511t7.getImpressionId();
                    Set set = c0511t7.d;
                    AdConfig adConfig = c0511t7.s;
                    long j = c0511t7.e;
                    boolean z = c0511t7.f;
                    String creativeId = c0511t7.getCreativeId();
                    C0524u6 c0524u6 = c0511t7.i;
                    InterfaceC0298f5 interfaceC0298f52 = c0511t7.j;
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(dataModel, "dataModel");
                    Intrinsics.checkNotNullParameter(adImpressionId, "adImpressionId");
                    Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                    Intrinsics.checkNotNullParameter(creativeId, "creativeId");
                    C0511t7 a8 = dataModel.c().contains(ShareConstants.VIDEO_URL) ? new A8(context, (byte) 0, dataModel, adImpressionId, set, adConfig, j, z, creativeId, null, c0524u6, interfaceC0298f52) : new C0511t7(context, (byte) 0, dataModel, adImpressionId, set, adConfig, j, z, creativeId, null, c0524u6, interfaceC0298f52);
                    c0511t7.C = a8;
                    a8.v = c0511t7;
                    O0 o0 = c0511t7.w;
                    if (o0 != null) {
                        a8.w = o0;
                    }
                }
            }
        }
        C0511t7 container = this.d.C;
        if (container != null) {
            SparseArray sparseArray = InMobiAdActivity.k;
            Intrinsics.checkNotNullParameter(container, "container");
            int iHashCode = container.hashCode();
            InMobiAdActivity.k.put(iHashCode, container);
            Intent intent = new Intent((Context) this.d.x.get(), (Class<?>) InMobiAdActivity.class);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", iHashCode);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", XMPError.BADXML);
            Context context2 = (Context) this.d.x.get();
            C0511t7 c0511t72 = this.d;
            if (c0511t72.D) {
                c0511t72.G = intent;
            } else if (context2 != null) {
                Kb.f162a.a(context2, intent);
            }
        }
    }

    @Override // com.inmobi.media.E1
    public final void c() {
        super.c();
        O0 o0 = this.e.w;
        if (o0 != null) {
            o0.c();
        }
    }
}
