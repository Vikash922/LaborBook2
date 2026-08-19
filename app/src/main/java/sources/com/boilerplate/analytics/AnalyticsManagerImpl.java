package com.boilerplate.analytics;

import android.content.Context;
import android.util.Log;
import com.amplitude.android.TrackingOptions;
import com.appsflyer.AppsFlyerLib;
import com.clevertap.android.sdk.CleverTapAPI;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\b\u0018\u0000 *2\u00020\u0001:\u0001*B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\rH\u0016J\u0016\u0010\u0017\u001a\u00020\u00122\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018H\u0016JG\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00102\"\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0\u001ej\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d`\u001c2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018H\u0016¢\u0006\u0002\u0010 J*\u0010!\u001a\u00020\u00122\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0#2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018H\u0016J,\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0#H\u0002J\u0018\u0010'\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J$\u0010(\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00102\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001d0#H\u0002J\u0010\u0010)\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, m2722d2 = {"Lcom/boilerplate/analytics/AnalyticsManagerImpl;", "Lcom/boilerplate/analytics/AnalyticsManager;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "cleverTapAPI", "Lcom/clevertap/android/sdk/CleverTapAPI;", "mixpanelAPI", "Lcom/mixpanel/android/mpmetrics/MixpanelAPI;", "appsFlyerLib", "Lcom/appsflyer/AppsFlyerLib;", "firebaseAnalytics", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "enabledPlatforms", "", "", "setCleverTapInstance", "", "instance", "setMixpanelInstance", "setAppsFlyerInstance", "setFirebaseAnalyticsInstance", "configurePlatforms", "", "logEvent", "eventName", "properties", "Lkotlin/collections/HashMap;", "", "Ljava/util/HashMap;", "eventPlatforms", "(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V", "setUserProperties", "userProperties", "", "userPropertyPlatforms", "logEventSuccess", TrackingOptions.AMP_TRACKING_OPTION_PLATFORM, "logEventFailure", "logUserPropertiesSuccess", "logUserPropertiesFailure", "Companion", "analytics_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AnalyticsManagerImpl implements AnalyticsManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile AnalyticsManagerImpl INSTANCE;
    private AppsFlyerLib appsFlyerLib;
    private CleverTapAPI cleverTapAPI;
    private final Context context;
    private final Set<String> enabledPlatforms;
    private FirebaseAnalytics firebaseAnalytics;
    private MixpanelAPI mixpanelAPI;

    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, m2722d2 = {"Lcom/boilerplate/analytics/AnalyticsManagerImpl$Companion;", "", "<init>", "()V", "INSTANCE", "Lcom/boilerplate/analytics/AnalyticsManagerImpl;", "getInstance", "context", "Landroid/content/Context;", "analytics_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public final AnalyticsManagerImpl getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AnalyticsManagerImpl analyticsManagerImpl = AnalyticsManagerImpl.INSTANCE;
            if (analyticsManagerImpl == null) {
                synchronized (this) {
                    analyticsManagerImpl = AnalyticsManagerImpl.INSTANCE;
                    if (analyticsManagerImpl == null) {
                        analyticsManagerImpl = new AnalyticsManagerImpl(context, null);
                        AnalyticsManagerImpl.INSTANCE = analyticsManagerImpl;
                    }
                }
            }
            return analyticsManagerImpl;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ AnalyticsManagerImpl(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logEventFailure(String platform, String eventName) {
        Log.w("AnalyticsManager", platform + " instance not set or platform not enabled, skipping event " + eventName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logEventSuccess(String platform, String eventName, Map<String, ? extends Object> properties) {
        Log.d("AnalyticsManager", "Event " + eventName + " successfully sent to " + platform + " with properties: " + properties);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logUserPropertiesFailure(String platform) {
        Log.w("AnalyticsManager", platform + " instance not set or platform not enabled, skipping user properties update");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logUserPropertiesSuccess(String platform, Map<String, ? extends Object> userProperties) {
        Log.d("AnalyticsManager", "User properties successfully sent to " + platform + " with properties: " + userProperties);
    }

    @Override // com.boilerplate.analytics.AnalyticsManager
    public void configurePlatforms(List<String> enabledPlatforms) {
        Intrinsics.checkNotNullParameter(enabledPlatforms, "enabledPlatforms");
        this.enabledPlatforms.clear();
        this.enabledPlatforms.addAll(enabledPlatforms);
    }

    @Override // com.boilerplate.analytics.AnalyticsManager
    public void logEvent(String eventName, HashMap<String, Object> properties, List<String> eventPlatforms) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(eventPlatforms, "eventPlatforms");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C1090b(eventPlatforms, this, eventName, properties, null), 3, null);
    }

    @Override // com.boilerplate.analytics.AnalyticsManager
    public void setAppsFlyerInstance(AppsFlyerLib instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.appsFlyerLib = instance;
    }

    @Override // com.boilerplate.analytics.AnalyticsManager
    public void setCleverTapInstance(CleverTapAPI instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.cleverTapAPI = instance;
    }

    @Override // com.boilerplate.analytics.AnalyticsManager
    public void setFirebaseAnalyticsInstance(FirebaseAnalytics instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.firebaseAnalytics = instance;
    }

    @Override // com.boilerplate.analytics.AnalyticsManager
    public void setMixpanelInstance(MixpanelAPI instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.mixpanelAPI = instance;
    }

    @Override // com.boilerplate.analytics.AnalyticsManager
    public void setUserProperties(Map<String, ? extends Object> userProperties, List<String> userPropertyPlatforms) {
        Intrinsics.checkNotNullParameter(userProperties, "userProperties");
        Intrinsics.checkNotNullParameter(userPropertyPlatforms, "userPropertyPlatforms");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C1092d(userPropertyPlatforms, this, userProperties, null), 3, null);
    }

    private AnalyticsManagerImpl(Context context) {
        this.context = context;
        this.enabledPlatforms = new LinkedHashSet();
    }
}
