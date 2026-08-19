package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Map;

/* JADX INFO: renamed from: com.inmobi.media.x */
/* JADX INFO: loaded from: classes6.dex */
public interface InterfaceC3411x {
    /* JADX INFO: renamed from: a */
    void mo1950a();

    /* JADX INFO: renamed from: a */
    void mo1951a(byte b, Map map);

    /* JADX INFO: renamed from: b */
    void mo845b();

    /* JADX INFO: renamed from: c */
    boolean mo1966c();

    /* JADX INFO: renamed from: e */
    void mo1969e();

    AdConfig getAdConfig();

    String getAdType();

    String getCreativeId();

    Object getDataModel();

    InterfaceC3396w getFullScreenEventsListener();

    String getImpressionId();

    String getMarkupType();

    byte getPlacementType();

    View getVideoContainerView();

    AbstractC3260md getViewableAd();

    void setFullScreenActivityContext(Activity activity);
}
