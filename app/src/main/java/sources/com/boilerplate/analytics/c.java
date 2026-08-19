package com.boilerplate.analytics;

import com.appsflyer.AppsFlyerLib;
import com.clevertap.android.sdk.CleverTapAPI;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends SuspendLambda implements Function2 {
    final /* synthetic */ String $platform;
    final /* synthetic */ Map<String, Object> $userProperties;
    int label;
    final /* synthetic */ AnalyticsManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(AnalyticsManagerImpl analyticsManagerImpl, String str, Map<String, ? extends Object> map, Continuation<? super c> continuation) {
        super(2, continuation);
        this.this$0 = analyticsManagerImpl;
        this.$platform = str;
        this.$userProperties = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new c(this.this$0, this.$platform, this.$userProperties, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (!this.this$0.enabledPlatforms.contains(this.$platform)) {
            return Unit.INSTANCE;
        }
        String str = this.$platform;
        int iHashCode = str.hashCode();
        if (iHashCode != -1002020536) {
            if (iHashCode != -498706905) {
                if (iHashCode != 82339054) {
                    if (iHashCode == 1323144444 && str.equals(AnalyticsPlatforms.CLEVERTAP)) {
                        CleverTapAPI cleverTapAPI = this.this$0.cleverTapAPI;
                        if (cleverTapAPI != null) {
                            Map<String, Object> map = this.$userProperties;
                            AnalyticsManagerImpl analyticsManagerImpl = this.this$0;
                            String str2 = this.$platform;
                            cleverTapAPI.pushProfile(map);
                            analyticsManagerImpl.logUserPropertiesSuccess(str2, map);
                        } else {
                            this.this$0.logUserPropertiesFailure(this.$platform);
                        }
                    }
                } else if (str.equals(AnalyticsPlatforms.APPSFLYER)) {
                    AppsFlyerLib appsFlyerLib = this.this$0.appsFlyerLib;
                    if (appsFlyerLib != null) {
                        Map<String, Object> map2 = this.$userProperties;
                        AnalyticsManagerImpl analyticsManagerImpl2 = this.this$0;
                        String str3 = this.$platform;
                        appsFlyerLib.setAdditionalData(map2);
                        analyticsManagerImpl2.logUserPropertiesSuccess(str3, map2);
                    } else {
                        this.this$0.logUserPropertiesFailure(this.$platform);
                    }
                }
            } else if (str.equals(AnalyticsPlatforms.FIREBASE)) {
                FirebaseAnalytics firebaseAnalytics = this.this$0.firebaseAnalytics;
                if (firebaseAnalytics != null) {
                    Map<String, Object> map3 = this.$userProperties;
                    AnalyticsManagerImpl analyticsManagerImpl3 = this.this$0;
                    String str4 = this.$platform;
                    for (Map.Entry<String, Object> entry : map3.entrySet()) {
                        firebaseAnalytics.setUserProperty(entry.getKey(), entry.getValue().toString());
                    }
                    analyticsManagerImpl3.logUserPropertiesSuccess(str4, map3);
                } else {
                    this.this$0.logUserPropertiesFailure(this.$platform);
                }
            }
        } else if (str.equals(AnalyticsPlatforms.MIXPANEL)) {
            MixpanelAPI mixpanelAPI = this.this$0.mixpanelAPI;
            if (mixpanelAPI != null) {
                Map<String, Object> map4 = this.$userProperties;
                AnalyticsManagerImpl analyticsManagerImpl4 = this.this$0;
                String str5 = this.$platform;
                Intrinsics.checkNotNull(map4, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                mixpanelAPI.getPeople().set(new JSONObject(map4));
                analyticsManagerImpl4.logUserPropertiesSuccess(str5, map4);
            } else {
                this.this$0.logUserPropertiesFailure(this.$platform);
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
