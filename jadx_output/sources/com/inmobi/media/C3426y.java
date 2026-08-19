package com.inmobi.media;

import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.media.MediaEvents;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y */
/* JADX INFO: loaded from: classes6.dex */
public final class C3426y {

    /* JADX INFO: renamed from: a */
    public final AdEvents f2750a;

    /* JADX INFO: renamed from: b */
    public final MediaEvents f2751b;

    public C3426y(AdSession adSession, String str) {
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        if (!Intrinsics.areEqual(str, "native_video_ad")) {
            this.f2750a = AdEvents.createAdEvents(adSession);
        } else {
            this.f2751b = MediaEvents.createMediaEvents(adSession);
            this.f2750a = AdEvents.createAdEvents(adSession);
        }
    }
}
