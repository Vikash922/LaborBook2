package com.inmobi.media;

import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.ErrorType;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.inmobi.adsession.ImpressionType;
import com.iab.omid.library.inmobi.adsession.media.InteractionType;
import com.iab.omid.library.inmobi.adsession.media.MediaEvents;
import com.iab.omid.library.inmobi.adsession.media.PlayerState;
import com.iab.omid.library.inmobi.adsession.media.VastProperties;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.z9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3451z9 {

    /* JADX INFO: renamed from: a */
    public final String f2807a;

    /* JADX INFO: renamed from: b */
    public final ImpressionType f2808b;

    /* JADX INFO: renamed from: c */
    public AdSessionContext f2809c;

    /* JADX INFO: renamed from: d */
    public final boolean f2810d;

    /* JADX INFO: renamed from: e */
    public byte f2811e;

    /* JADX INFO: renamed from: f */
    public AdSession f2812f;

    /* JADX INFO: renamed from: g */
    public C3426y f2813g;

    public C3451z9(String mAdSessionType, ImpressionType impressionType, AdSessionContext adSessionContext, boolean z) {
        Intrinsics.checkNotNullParameter(mAdSessionType, "mAdSessionType");
        Intrinsics.checkNotNullParameter(impressionType, "impressionType");
        this.f2807a = mAdSessionType;
        this.f2808b = impressionType;
        this.f2809c = adSessionContext;
        this.f2810d = z;
    }

    /* JADX INFO: renamed from: a */
    public static boolean m2638a(byte b, byte b2) {
        if (b == b2) {
            return true;
        }
        C3402w5 c3402w5 = C3402w5.f2709a;
        C3114d2 event = new C3114d2(new Exception("Omid AdSession State Error currentState :: " + ((int) b) + ", expectedState :: " + ((int) b2)));
        Intrinsics.checkNotNullParameter(event, "event");
        C3402w5.f2712d.m2158a(event);
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2642a(android.view.View r8, java.util.Map r9, android.view.View r10) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3451z9.m2642a(android.view.View, java.util.Map, android.view.View):void");
    }

    /* JADX INFO: renamed from: a */
    public final void m2640a(int i, int i2, float f, VastProperties vastProps) {
        C3426y c3426y;
        AdEvents adEvents;
        AdSession adSession;
        Intrinsics.checkNotNullParameter(vastProps, "vastProperties");
        if (m2638a(this.f2811e, (byte) 2)) {
            byte b = (byte) i;
            if (b == 17) {
                ErrorType errorType = ErrorType.VIDEO;
                Intrinsics.checkNotNullParameter(errorType, "errorType");
                Intrinsics.checkNotNullParameter("Unknown Player error", "errorMsg");
                if (m2638a(this.f2811e, (byte) 2) && (adSession = this.f2812f) != null) {
                    adSession.error(errorType, "Unknown Player error");
                }
            } else if (b == 0 && (c3426y = this.f2813g) != null && (adEvents = c3426y.f2750a) != null) {
                adEvents.impressionOccurred();
            }
            C3426y c3426y2 = this.f2813g;
            if (c3426y2 != null) {
                Intrinsics.checkNotNullParameter(vastProps, "vastProps");
                MediaEvents mediaEvents = c3426y2.f2751b;
                if (mediaEvents == null) {
                    return;
                }
                if (b == 7) {
                    mediaEvents.pause();
                    return;
                }
                if (b == 5) {
                    AdEvents adEvents2 = c3426y2.f2750a;
                    if (adEvents2 != null) {
                        adEvents2.loaded(vastProps);
                        return;
                    }
                    return;
                }
                if (b == 6) {
                    mediaEvents.start(i2, f);
                    return;
                }
                if (b == 8 || b == 16) {
                    mediaEvents.resume();
                    return;
                }
                if (b == 15) {
                    mediaEvents.skipped();
                    return;
                }
                if (b == 9) {
                    mediaEvents.firstQuartile();
                    return;
                }
                if (b == 10) {
                    mediaEvents.midpoint();
                    return;
                }
                if (b == 11) {
                    mediaEvents.thirdQuartile();
                    return;
                }
                if (b == 12) {
                    mediaEvents.complete();
                    return;
                }
                if (b == 13) {
                    mediaEvents.volumeChange(0.0f);
                    return;
                }
                if (b == 14) {
                    mediaEvents.volumeChange(f);
                    return;
                }
                if (b == 1) {
                    mediaEvents.playerStateChange(PlayerState.FULLSCREEN);
                    return;
                }
                if (b == 2) {
                    mediaEvents.playerStateChange(PlayerState.NORMAL);
                } else if (b == 4) {
                    mediaEvents.adUserInteraction(InteractionType.CLICK);
                } else if (b == 18) {
                    mediaEvents.adUserInteraction(InteractionType.INVITATION_ACCEPTED);
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2641a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        byte b = this.f2811e;
        if (b > 0) {
            AdSession adSession = this.f2812f;
            if (adSession != null) {
                adSession.addFriendlyObstruction(childView, obstructionCode, null);
                return;
            }
            return;
        }
        C3402w5 c3402w5 = C3402w5.f2709a;
        C3114d2 event = new C3114d2(new Exception("Omid AdSession State Error currentState :: " + ((int) b) + ", expectedState :: 1"));
        Intrinsics.checkNotNullParameter(event, "event");
        C3402w5.f2712d.m2158a(event);
    }

    /* JADX INFO: renamed from: a */
    public final void m2639a() {
        AdSession adSession = this.f2812f;
        if (adSession != null) {
            adSession.getAdSessionId();
        }
        if (m2638a(this.f2811e, (byte) 2)) {
            AdSession adSession2 = this.f2812f;
            if (adSession2 != null) {
                adSession2.finish();
            }
            this.f2812f = null;
            this.f2811e = (byte) 3;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2643a(View view, Map map, ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (!Intrinsics.areEqual(childAt, view)) {
                if (map == null || !map.containsKey(childAt)) {
                    Intrinsics.checkNotNull(childAt);
                    m2641a(childAt, FriendlyObstructionPurpose.OTHER);
                }
                if (childAt instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) childAt;
                    if (viewGroup2.getChildCount() > 0) {
                        m2643a(view, map, viewGroup2);
                    }
                }
            }
        }
    }
}
