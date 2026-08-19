package com.inmobi.media;

import com.facebook.internal.AnalyticsEvents;
import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.ImpressionType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class C9 {
    public static C0599z9 a(String creativeType, Ya webView, boolean z, String str, byte b, String str2) {
        AdSessionContext adSessionContextCreateHtmlAdSessionContext;
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        if (webView != null) {
            H9 h9 = G9.f125a;
            h9.getClass();
            Intrinsics.checkNotNullParameter(webView, "webView");
            adSessionContextCreateHtmlAdSessionContext = AdSessionContext.createHtmlAdSessionContext(h9.b, webView, str, str2);
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
                        return new C0599z9("html_display_ad", impressionType, adSessionContextCreateHtmlAdSessionContext, false);
                    }
                } else if (creativeType.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                    return new C0599z9("html_video_ad", impressionType, adSessionContextCreateHtmlAdSessionContext, z);
                }
            } else if (creativeType.equals("audio")) {
                return new C0599z9("html_audio_ad", impressionType, adSessionContextCreateHtmlAdSessionContext, z);
            }
        } else if (creativeType.equals("unknown")) {
            Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
            return null;
        }
        Intrinsics.checkNotNullExpressionValue("D9", "access$getTAG$cp(...)");
        return null;
    }
}
