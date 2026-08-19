package com.boilerplate.analytics;

import com.appsflyer.AppsFlyerLib;
import com.clevertap.android.sdk.CleverTapAPI;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&JG\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00062\"\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u000bj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001`\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&¢\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0014H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0016H&J*\u0010\u0017\u001a\u00020\u00032\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&¨\u0006\u001b"}, m2722d2 = {"Lcom/boilerplate/analytics/AnalyticsManager;", "", "configurePlatforms", "", "enabledPlatforms", "", "", "logEvent", "eventName", "properties", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "eventPlatforms", "(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V", "setCleverTapInstance", "instance", "Lcom/clevertap/android/sdk/CleverTapAPI;", "setMixpanelInstance", "Lcom/mixpanel/android/mpmetrics/MixpanelAPI;", "setAppsFlyerInstance", "Lcom/appsflyer/AppsFlyerLib;", "setFirebaseAnalyticsInstance", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "setUserProperties", "userProperties", "", "userPropertyPlatforms", "analytics_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface AnalyticsManager {
    void configurePlatforms(List<String> enabledPlatforms);

    void logEvent(String eventName, HashMap<String, Object> properties, List<String> eventPlatforms);

    void setAppsFlyerInstance(AppsFlyerLib instance);

    void setCleverTapInstance(CleverTapAPI instance);

    void setFirebaseAnalyticsInstance(FirebaseAnalytics instance);

    void setMixpanelInstance(MixpanelAPI instance);

    void setUserProperties(Map<String, ? extends Object> userProperties, List<String> userPropertyPlatforms);
}
