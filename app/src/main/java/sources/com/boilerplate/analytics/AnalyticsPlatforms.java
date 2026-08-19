package com.boilerplate.analytics;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, m2722d2 = {"Lcom/boilerplate/analytics/AnalyticsPlatforms;", "", "<init>", "()V", "CLEVERTAP", "", "MIXPANEL", "APPSFLYER", "FIREBASE", "analytics_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AnalyticsPlatforms {
    public static final String APPSFLYER = "AppsFlyer";
    public static final String CLEVERTAP = "CleverTap";
    public static final String FIREBASE = "Firebase";
    public static final AnalyticsPlatforms INSTANCE = new AnalyticsPlatforms();
    public static final String MIXPANEL = "Mixpanel";

    private AnalyticsPlatforms() {
    }
}
