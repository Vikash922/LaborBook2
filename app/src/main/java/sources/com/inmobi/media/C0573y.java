package com.inmobi.media;

import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.media.MediaEvents;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0573y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AdEvents f527a;
    public final MediaEvents b;

    public C0573y(AdSession adSession, String str) {
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        if (!Intrinsics.areEqual(str, "native_video_ad")) {
            this.f527a = AdEvents.createAdEvents(adSession);
        } else {
            this.b = MediaEvents.createMediaEvents(adSession);
            this.f527a = AdEvents.createAdEvents(adSession);
        }
    }
}
