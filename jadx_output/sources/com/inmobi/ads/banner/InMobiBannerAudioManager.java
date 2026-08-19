package com.inmobi.ads.banner;

import android.view.View;
import android.view.ViewGroup;
import com.google.firebase.perf.util.Constants;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.media.C3087b5;
import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001J)\u0010\b\u001a\u00020\u0007\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, m2722d2 = {"Lcom/inmobi/ads/banner/InMobiBannerAudioManager;", "", "Landroid/view/ViewGroup;", "T", SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, "Lcom/inmobi/ads/banner/AudioListener;", "audioListener", "", "setAudioListener", "(Landroid/view/ViewGroup;Lcom/inmobi/ads/banner/AudioListener;)V", "", Constants.ENABLE_DISABLE, "setAudioEnabled", "(Z)V", "media_release"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class InMobiBannerAudioManager {
    public static final InMobiBannerAudioManager INSTANCE = new InMobiBannerAudioManager();

    /* JADX INFO: renamed from: a */
    public static InMobiBanner m815a(ViewGroup viewGroup) {
        InMobiBanner inMobiBannerM815a;
        if (viewGroup instanceof InMobiBanner) {
            if (viewGroup.getVisibility() == 0 && viewGroup.isShown()) {
                return (InMobiBanner) viewGroup;
            }
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof ViewGroup) && (inMobiBannerM815a = m815a((ViewGroup) childAt)) != null) {
                return inMobiBannerM815a;
            }
        }
        return null;
    }

    @JvmStatic
    public static final void setAudioEnabled(boolean isEnabled) {
        C3087b5 c3087b5 = C3087b5.f1875c;
        C3087b5.f1876d.set(isEnabled);
    }

    @JvmStatic
    public static final <T extends ViewGroup> void setAudioListener(T t, AudioListener audioListener) {
        Intrinsics.checkNotNullParameter(t, "t");
        Intrinsics.checkNotNullParameter(audioListener, "audioListener");
        INSTANCE.getClass();
        InMobiBanner inMobiBannerM815a = m815a(t);
        if (inMobiBannerM815a == null || !inMobiBannerM815a.isAudioAd()) {
            return;
        }
        inMobiBannerM815a.setAudioListener(audioListener);
    }
}
