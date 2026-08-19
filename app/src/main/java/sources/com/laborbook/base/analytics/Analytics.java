package com.laborbook.base.analytics;

import com.amplitude.core.Amplitude;
import com.amplitude.core.events.EventOptions;
import com.boilerplate.analytics.AnalyticsManager;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.laborbook.base.datastore.DataStoreManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: Analytics.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007JS\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00122(\b\u0002\u0010\u0013\u001a\"\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0014¢\u0006\u0002\u0010\u0016JZ\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00010\u0015j\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001`\u00142\u0006\u0010\u0010\u001a\u00020\u000f2&\u0010\u0018\u001a\"\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015j\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u0014H\u0082@¢\u0006\u0002\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001b"}, m2722d2 = {"Lcom/laborbook/base/analytics/Analytics;", "", "analyticsManager", "Lcom/boilerplate/analytics/AnalyticsManager;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "<init>", "(Lcom/boilerplate/analytics/AnalyticsManager;Lcom/laborbook/base/datastore/DataStoreManager;)V", "getAnalyticsManager", "()Lcom/boilerplate/analytics/AnalyticsManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "logEvent", "", "eventName", "", "eventType", "eventPlatforms", "", "properties", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V", "mergeSuperProperties", "hashMap", "(Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class Analytics {
    public static final String CLICK = "click";
    public static final String IMPRESSION = "impression";
    public static final String SYSTEM = "system";
    private final AnalyticsManager analyticsManager;
    private final DataStoreManager dataStoreManager;
    private static final Map<String, String> AMPLITUDE_EVENTS = MapsKt.mapOf(TuplesKt.m2729to(ConstantEventNames.LOGIN_SUCCESS, ConstantEventNames.LOGIN_SUCCESS), TuplesKt.m2729to(ConstantEventNames.ADD_LABOR_MANUAL, "added_labor"), TuplesKt.m2729to(ConstantEventNames.ADD_LABOR_FROM_CONTACTS, "added_labor"), TuplesKt.m2729to(ConstantEventNames.LABOR_REPORTS_TAP, ConstantEventNames.LABOR_REPORTS_TAP), TuplesKt.m2729to(ConstantEventNames.PREMIUM_OFFER_DIALOG, ConstantEventNames.PREMIUM_OFFER_DIALOG), TuplesKt.m2729to(ConstantEventNames.START_TRIAL_CLICK, "trial"), TuplesKt.m2729to(ConstantEventNames.SELECT_UPI_APP, ConstantEventNames.SELECT_UPI_APP), TuplesKt.m2729to(ConstantEventNames.PAYMENT_SUCCESS, ConstantEventNames.PAYMENT_SUCCESS), TuplesKt.m2729to("payment_cancelled", "payment_cancelled"), TuplesKt.m2729to(ConstantEventNames.SUBSCRIPTION_ACTIVATED, "subscribe"), TuplesKt.m2729to(ConstantEventNames.SUBSCRIPTION_ACTIVATED, "subscribe"));

    /* JADX INFO: renamed from: com.laborbook.base.analytics.Analytics$mergeSuperProperties$1 */
    /* JADX INFO: compiled from: Analytics.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.analytics.Analytics", m2735f = "Analytics.kt", m2736i = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6}, m2737l = {75, 76, 77, 78, 79, 80, 83}, m2738m = "mergeSuperProperties", m2739n = {"this", "eventType", "hashMap", "this", "eventType", "hashMap", "this", "eventType", "hashMap", "this", "eventType", "hashMap", "this", "eventType", "hashMap", "this", "eventType", "hashMap", "hashMap"}, m2740s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0"})
    static final class C35801 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        C35801(Continuation<? super C35801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Analytics.this.mergeSuperProperties(null, null, this);
        }
    }

    public Analytics(AnalyticsManager analyticsManager, DataStoreManager dataStoreManager) {
        Intrinsics.checkNotNullParameter(analyticsManager, "analyticsManager");
        Intrinsics.checkNotNullParameter(dataStoreManager, "dataStoreManager");
        this.analyticsManager = analyticsManager;
        this.dataStoreManager = dataStoreManager;
    }

    public final AnalyticsManager getAnalyticsManager() {
        return this.analyticsManager;
    }

    public final DataStoreManager getDataStoreManager() {
        return this.dataStoreManager;
    }

    /* JADX INFO: renamed from: com.laborbook.base.analytics.Analytics$logEvent$1 */
    /* JADX INFO: compiled from: Analytics.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.analytics.Analytics$logEvent$1", m2735f = "Analytics.kt", m2736i = {}, m2737l = {50}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35791 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventName;
        final /* synthetic */ List<String> $eventPlatforms;
        final /* synthetic */ String $eventType;
        final /* synthetic */ HashMap<String, Object> $properties;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35791(String str, HashMap<String, Object> map, List<String> list, String str2, Continuation<? super C35791> continuation) {
            super(2, continuation);
            this.$eventType = str;
            this.$properties = map;
            this.$eventPlatforms = list;
            this.$eventName = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Analytics.this.new C35791(this.$eventType, this.$properties, this.$eventPlatforms, this.$eventName, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35791) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = Analytics.this.mergeSuperProperties(this.$eventType, this.$properties, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                HashMap<String, Object> map = (HashMap) obj;
                List<String> listListOf = this.$eventPlatforms.contains(AnalyticsPlatforms.FIREBASE) ? CollectionsKt.listOf(AnalyticsPlatforms.FIREBASE) : CollectionsKt.emptyList();
                if (!listListOf.isEmpty()) {
                    Analytics.this.getAnalyticsManager().logEvent(this.$eventName, map, listListOf);
                }
                String str = (String) Analytics.AMPLITUDE_EVENTS.get(this.$eventName);
                if (this.$eventPlatforms.contains(AnalyticsPlatforms.MIXPANEL) && str != null) {
                    Amplitude.track$default(AmplitudeHolder.INSTANCE.getInstance(), str, new HashMap(map), (EventOptions) null, 4, (Object) null);
                }
            } catch (Exception unused) {
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void logEvent$default(Analytics analytics, String str, String str2, List list, HashMap map, int i, Object obj) {
        if ((i & 8) != 0) {
            map = null;
        }
        analytics.logEvent(str, str2, list, map);
    }

    public final void logEvent(String eventName, String eventType, List<String> eventPlatforms, HashMap<String, Object> properties) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventPlatforms, "eventPlatforms");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C35791(eventType, properties, eventPlatforms, eventName, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x017a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01d8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x020a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x023c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0281 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mergeSuperProperties(java.lang.String r18, java.util.HashMap<java.lang.String, java.lang.Object> r19, kotlin.coroutines.Continuation<? super java.util.HashMap<java.lang.String, java.lang.Object>> r20) {
        /*
            Method dump skipped, instruction units count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.base.analytics.Analytics.mergeSuperProperties(java.lang.String, java.util.HashMap, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
