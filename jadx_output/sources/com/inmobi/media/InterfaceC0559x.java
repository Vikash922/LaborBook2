package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Map;

/* JADX INFO: renamed from: com.inmobi.media.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public interface InterfaceC0559x {
    void a();

    void a(byte b, Map map);

    void b();

    boolean c();

    void e();

    AdConfig getAdConfig();

    String getAdType();

    String getCreativeId();

    Object getDataModel();

    InterfaceC0545w getFullScreenEventsListener();

    String getImpressionId();

    String getMarkupType();

    byte getPlacementType();

    View getVideoContainerView();

    AbstractC0416md getViewableAd();

    void setFullScreenActivityContext(Activity activity);
}
