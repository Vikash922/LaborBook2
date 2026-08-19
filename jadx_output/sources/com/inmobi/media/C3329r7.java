package com.inmobi.media;

import com.facebook.internal.AnalyticsEvents;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3329r7 implements InterfaceC2698Aa {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3359t7 f2505a;

    public C3329r7(C3359t7 c3359t7) {
        this.f2505a = c3359t7;
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    /* JADX INFO: renamed from: a */
    public final void mo863a(String triggerApi) {
        Intrinsics.checkNotNullParameter(triggerApi, "triggerApi");
        HashMap map = new HashMap();
        map.put("creativeId", this.f2505a.getCreativeId());
        map.put("trigger", triggerApi);
        map.put("impressionId", this.f2505a.getImpressionId());
        map.put("adType", AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE);
        C3199ic c3199ic = C3199ic.f2193a;
        C3199ic.m2248b("BlockAutoRedirection", map, EnumC3259mc.f2349a);
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    /* JADX INFO: renamed from: d */
    public final boolean mo864d() {
        return true;
    }

    @Override // com.inmobi.media.InterfaceC2698Aa
    public final long getViewTouchTimestamp() {
        return -1L;
    }
}
