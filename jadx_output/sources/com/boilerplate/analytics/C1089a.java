package com.boilerplate.analytics;

import android.os.Bundle;
import com.appsflyer.AppsFlyerLib;
import com.clevertap.android.sdk.CleverTapAPI;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import java.util.HashMap;
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

/* JADX INFO: renamed from: com.boilerplate.analytics.a */
/* JADX INFO: loaded from: classes.dex */
public final class C1089a extends SuspendLambda implements Function2 {
    final /* synthetic */ String $eventName;
    final /* synthetic */ String $platform;
    final /* synthetic */ HashMap<String, Object> $properties;
    int label;
    final /* synthetic */ AnalyticsManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1089a(AnalyticsManagerImpl analyticsManagerImpl, String str, String str2, HashMap<String, Object> map, Continuation<? super C1089a> continuation) {
        super(2, continuation);
        this.this$0 = analyticsManagerImpl;
        this.$platform = str;
        this.$eventName = str2;
        this.$properties = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C1089a(this.this$0, this.$platform, this.$eventName, this.$properties, continuation);
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
                            String str2 = this.$eventName;
                            HashMap<String, Object> map = this.$properties;
                            AnalyticsManagerImpl analyticsManagerImpl = this.this$0;
                            String str3 = this.$platform;
                            cleverTapAPI.pushEvent(str2, map);
                            analyticsManagerImpl.logEventSuccess(str3, str2, map);
                        } else {
                            this.this$0.logEventFailure(this.$platform, this.$eventName);
                        }
                    }
                } else if (str.equals(AnalyticsPlatforms.APPSFLYER)) {
                    AppsFlyerLib appsFlyerLib = this.this$0.appsFlyerLib;
                    if (appsFlyerLib != null) {
                        AnalyticsManagerImpl analyticsManagerImpl2 = this.this$0;
                        String str4 = this.$eventName;
                        HashMap<String, Object> map2 = this.$properties;
                        String str5 = this.$platform;
                        appsFlyerLib.logEvent(analyticsManagerImpl2.context, str4, map2);
                        analyticsManagerImpl2.logEventSuccess(str5, str4, map2);
                    } else {
                        this.this$0.logEventFailure(this.$platform, this.$eventName);
                    }
                }
            } else if (str.equals(AnalyticsPlatforms.FIREBASE)) {
                FirebaseAnalytics firebaseAnalytics = this.this$0.firebaseAnalytics;
                if (firebaseAnalytics != null) {
                    String str6 = this.$eventName;
                    AnalyticsManagerImpl analyticsManagerImpl3 = this.this$0;
                    String str7 = this.$platform;
                    HashMap<String, Object> map3 = this.$properties;
                    Bundle bundle = new Bundle();
                    for (Map.Entry<String, Object> entry : map3.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value instanceof String) {
                            bundle.putString(key, (String) value);
                        } else if (value instanceof Integer) {
                            bundle.putInt(key, ((Number) value).intValue());
                        } else if (value instanceof Double) {
                            bundle.putDouble(key, ((Number) value).doubleValue());
                        } else if (value instanceof Boolean) {
                            bundle.putBoolean(key, ((Boolean) value).booleanValue());
                        } else if (value instanceof Bundle) {
                            bundle.putBundle(key, (Bundle) value);
                        }
                    }
                    firebaseAnalytics.logEvent(str6, bundle);
                    analyticsManagerImpl3.logEventSuccess(str7, str6, map3);
                } else {
                    this.this$0.logEventFailure(this.$platform, this.$eventName);
                }
            }
        } else if (str.equals(AnalyticsPlatforms.MIXPANEL)) {
            MixpanelAPI mixpanelAPI = this.this$0.mixpanelAPI;
            if (mixpanelAPI != null) {
                HashMap<String, Object> map4 = this.$properties;
                String str8 = this.$eventName;
                AnalyticsManagerImpl analyticsManagerImpl4 = this.this$0;
                String str9 = this.$platform;
                Intrinsics.checkNotNull(map4, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
                mixpanelAPI.track(str8, new JSONObject(map4));
                analyticsManagerImpl4.logEventSuccess(str9, str8, map4);
            } else {
                this.this$0.logEventFailure(this.$platform, this.$eventName);
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C1089a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
