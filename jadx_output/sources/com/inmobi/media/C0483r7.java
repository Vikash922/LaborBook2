package com.inmobi.media;

import com.facebook.internal.AnalyticsEvents;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0483r7 implements Aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0511t7 f471a;

    public C0483r7(C0511t7 c0511t7) {
        this.f471a = c0511t7;
    }

    @Override // com.inmobi.media.Aa
    public final void a(String triggerApi) {
        Intrinsics.checkNotNullParameter(triggerApi, "triggerApi");
        HashMap map = new HashMap();
        map.put("creativeId", this.f471a.getCreativeId());
        map.put("trigger", triggerApi);
        map.put("impressionId", this.f471a.getImpressionId());
        map.put("adType", AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE);
        C0353ic c0353ic = C0353ic.f388a;
        C0353ic.b("BlockAutoRedirection", map, EnumC0415mc.f426a);
    }

    @Override // com.inmobi.media.Aa
    public final boolean d() {
        return true;
    }

    @Override // com.inmobi.media.Aa
    public final long getViewTouchTimestamp() {
        return -1L;
    }
}
