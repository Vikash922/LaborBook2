package com.inmobi.media;

import com.facebook.internal.AnalyticsEvents;
import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.ImpressionType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.C9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2727C9 {
    /* JADX INFO: renamed from: a */
    public static C3451z9 m923a(String creativeType, GestureDetectorOnGestureListenerC3049Ya webView, boolean z, String str, byte b, String str2) {
        AdSessionContext adSessionContextCreateHtmlAdSessionContext;
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        if (webView != null) {
            C2802H9 c2802h9 = AbstractC2787G9.f1056a;
            c2802h9.getClass();
            Intrinsics.checkNotNullParameter(webView, "webView");
            adSessionContextCreateHtmlAdSessionContext = AdSessionContext.createHtmlAdSessionContext(c2802h9.f1081b, webView, str, str2);
            Intrinsics.checkNotNullExpressionValue(adSessionContextCreateHtmlAdSessionContext, "createHtmlAdSessionContext(...)");
        } else {
            adSessionContextCreateHtmlAdSessionContext = null;
        }
        ImpressionType impressionType = b == 1 ? ImpressionType.DEFINED_BY_JAVASCRIPT : b == 2 ? ImpressionType.UNSPECIFIED : b == 3 ? ImpressionType.LOADED : b == 4 ? ImpressionType.BEGIN_TO_RENDER : b == 5 ? ImpressionType.ONE_PIXEL : b == 6 ? ImpressionType.VIEWABLE : b == 7 ? ImpressionType.AUDIBLE : b == 0 ? ImpressionType.OTHER : ImpressionType.OTHER;
        int iHashCode = creativeType.hashCode();
        if (iHashCode != -284840886) {
            if (iHashCode != 93166550) {
                if (iHashCode != 112202875) {
                    if (iHashCode == 1425678798 && creativeType.equals("nonvideo")) {
                        return new C3451z9("html_display_ad", impressionType, adSessionContextCreateHtmlAdSessionContext, false);
                    }
                } else if (creativeType.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                    return new C3451z9("html_video_ad", impressionType, adSessionContextCreateHtmlAdSessionContext, z);
                }
            } else if (creativeType.equals("audio")) {
                return new C3451z9("html_audio_ad", impressionType, adSessionContextCreateHtmlAdSessionContext, z);
            }
        } else if (creativeType.equals("unknown")) {
            Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
            return null;
        }
        Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
        return null;
    }
}
