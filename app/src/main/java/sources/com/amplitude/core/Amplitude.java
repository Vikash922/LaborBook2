package com.amplitude.core;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.common.Logger;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.EventOptions;
import com.amplitude.core.events.GroupIdentifyEvent;
import com.amplitude.core.events.Identify;
import com.amplitude.core.events.IdentifyEvent;
import com.amplitude.core.events.Revenue;
import com.amplitude.core.events.RevenueEvent;
import com.amplitude.core.platform.EventPlugin;
import com.amplitude.core.platform.ObservePlugin;
import com.amplitude.core.platform.Plugin;
import com.amplitude.core.platform.Timeline;
import com.amplitude.core.platform.plugins.AmplitudeDestination;
import com.amplitude.core.platform.plugins.ContextPlugin;
import com.amplitude.core.platform.plugins.GetAmpliExtrasPlugin;
import com.amplitude.core.utilities.AnalyticsEventReceiver;
import com.amplitude.core.utilities.AnalyticsIdentityListener;
import com.amplitude.core.utilities.Diagnostics;
import com.amplitude.eventbridge.EventBridgeContainer;
import com.amplitude.eventbridge.EventChannel;
import com.amplitude.p009id.IdentityConfiguration;
import com.amplitude.p009id.IdentityContainer;
import com.amplitude.p009id.IdentityStorage;
import com.amplitude.p009id.IdentityUpdateType;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: Amplitude.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004BI\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0002\u0010\u000eJ\u000e\u00109\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010<\u001a\b\u0012\u0004\u0012\u00020(0'H\u0014J\u0019\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0094@ø\u0001\u0000¢\u0006\u0002\u0010AJ \u0010B\u001a\u00020C2\u0016\u0010D\u001a\u0012\u0012\u0004\u0012\u00020F\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010EH\u0002J\b\u0010G\u001a\u00020@H\u0014J\u0010\u0010H\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0004J\b\u0010I\u001a\u000206H\u0016J\u0006\u0010J\u001a\u00020>J\b\u0010K\u001a\u0004\u0018\u00010FJ\b\u0010L\u001a\u0004\u0018\u00010FJ,\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020F2\u0006\u0010O\u001a\u00020F2\u0006\u0010P\u001a\u00020C2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J<\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020F2\u0006\u0010O\u001a\u00020F2\u0016\u0010S\u001a\u0012\u0012\u0004\u0012\u00020F\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010E2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u001c\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020C2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J,\u0010P\u001a\u00020\u00002\u0016\u0010D\u001a\u0012\u0012\u0004\u0012\u00020F\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010E2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020VH\u0007J\u0010\u0010W\u001a\u00020\u00002\u0006\u0010X\u001a\u00020YH\u0007J\u0010\u0010Z\u001a\u00020>2\u0006\u0010U\u001a\u00020VH\u0002J\u000e\u0010[\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\b\u0010\\\u001a\u00020\u0000H\u0016J\u001c\u0010X\u001a\u00020\u00002\u0006\u0010X\u001a\u00020Y2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u000e\u0010X\u001a\u00020\u00002\u0006\u0010U\u001a\u00020]J\u000e\u0010^\u001a\u00020\u00002\u0006\u0010_\u001a\u00020FJ\u0010\u0010`\u001a\u00020>2\u0006\u0010_\u001a\u00020FH\u0004J/\u0010a\u001a\u00020\u00002\u0006\u0010N\u001a\u00020F2\f\u0010O\u001a\b\u0012\u0004\u0012\u00020F0b2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007¢\u0006\u0002\u0010cJ$\u0010a\u001a\u00020\u00002\u0006\u0010N\u001a\u00020F2\u0006\u0010O\u001a\u00020F2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u0010\u0010d\u001a\u00020\u00002\b\u0010e\u001a\u0004\u0018\u00010FJd\u0010f\u001a\u00020\u00002\u0006\u0010U\u001a\u00020V2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010R2F\b\u0002\u0010g\u001a@\u0012\u0004\u0012\u00020V\u0012\u0013\u0012\u00110i¢\u0006\f\bj\u0012\b\bk\u0012\u0004\b\b(l\u0012\u0013\u0012\u00110F¢\u0006\f\bj\u0012\b\bk\u0012\u0004\b\b(m\u0012\u0004\u0012\u00020>\u0018\u00010hj\u0004\u0018\u0001`nH\u0007J6\u0010f\u001a\u00020\u00002\u0006\u0010o\u001a\u00020F2\u0018\b\u0002\u0010p\u001a\u0012\u0012\u0004\u0012\u00020F\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010E2\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010RH\u0007R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001a@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001e@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001e\u0010#\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\"@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0017\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'¢\u0006\b\n\u0000\u001a\u0004\b&\u0010)R\u0011\u0010*\u001a\u00020+¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u0010R\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u0010R\u001e\u00100\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001e@BX\u0086.¢\u0006\b\n\u0000\u001a\u0004\b1\u0010!R\u0011\u0010\f\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0011\u00105\u001a\u000206¢\u0006\b\n\u0000\u001a\u0004\b7\u00108\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006q"}, m2722d2 = {"Lcom/amplitude/core/Amplitude;", "", "configuration", "Lcom/amplitude/core/Configuration;", "(Lcom/amplitude/core/Configuration;)V", DatabaseConstants.STORE_TABLE_NAME, "Lcom/amplitude/core/State;", "amplitudeScope", "Lkotlinx/coroutines/CoroutineScope;", "amplitudeDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "networkIODispatcher", "storageIODispatcher", "retryDispatcher", "(Lcom/amplitude/core/Configuration;Lcom/amplitude/core/State;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V", "getAmplitudeDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getAmplitudeScope", "()Lkotlinx/coroutines/CoroutineScope;", "getConfiguration", "()Lcom/amplitude/core/Configuration;", "diagnostics", "Lcom/amplitude/core/utilities/Diagnostics;", "getDiagnostics", "()Lcom/amplitude/core/utilities/Diagnostics;", "<set-?>", "Lcom/amplitude/id/IdentityContainer;", "idContainer", "getIdContainer", "()Lcom/amplitude/id/IdentityContainer;", "Lcom/amplitude/core/Storage;", "identifyInterceptStorage", "getIdentifyInterceptStorage", "()Lcom/amplitude/core/Storage;", "Lcom/amplitude/id/IdentityStorage;", "identityStorage", "getIdentityStorage", "()Lcom/amplitude/id/IdentityStorage;", "isBuilt", "Lkotlinx/coroutines/Deferred;", "", "()Lkotlinx/coroutines/Deferred;", "logger", "Lcom/amplitude/common/Logger;", "getLogger", "()Lcom/amplitude/common/Logger;", "getNetworkIODispatcher", "getRetryDispatcher", "storage", "getStorage", "getStorageIODispatcher", "getStore", "()Lcom/amplitude/core/State;", "timeline", "Lcom/amplitude/core/platform/Timeline;", "getTimeline", "()Lcom/amplitude/core/platform/Timeline;", "add", "plugin", "Lcom/amplitude/core/platform/Plugin;", InAppPurchaseConstants.METHOD_BUILD, "buildInternal", "", "identityConfiguration", "Lcom/amplitude/id/IdentityConfiguration;", "(Lcom/amplitude/id/IdentityConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "convertPropertiesToIdentify", "Lcom/amplitude/core/events/Identify;", "userProperties", "", "", "createIdentityConfiguration", "createIdentityContainer", "createTimeline", "flush", "getDeviceId", "getUserId", "groupIdentify", "groupType", "groupName", "identify", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lcom/amplitude/core/events/EventOptions;", "groupProperties", "logEvent", "event", "Lcom/amplitude/core/events/BaseEvent;", "logRevenue", "revenue", "Lcom/amplitude/core/events/Revenue;", "process", "remove", "reset", "Lcom/amplitude/core/events/RevenueEvent;", "setDeviceId", "deviceId", "setDeviceIdInternal", "setGroup", "", "(Ljava/lang/String;[Ljava/lang/String;Lcom/amplitude/core/events/EventOptions;)Lcom/amplitude/core/Amplitude;", "setUserId", "userId", "track", "callback", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "status", "message", "Lcom/amplitude/core/EventCallBack;", "eventType", "eventProperties", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Amplitude {
    private final CoroutineDispatcher amplitudeDispatcher;
    private final CoroutineScope amplitudeScope;
    private final Configuration configuration;
    private final Diagnostics diagnostics;
    private IdentityContainer idContainer;
    private Storage identifyInterceptStorage;
    private IdentityStorage identityStorage;
    private final Deferred<Boolean> isBuilt;
    private final Logger logger;
    private final CoroutineDispatcher networkIODispatcher;
    private final CoroutineDispatcher retryDispatcher;
    private Storage storage;
    private final CoroutineDispatcher storageIODispatcher;
    private final State store;
    private final Timeline timeline;

    protected Object buildInternal(IdentityConfiguration identityConfiguration, Continuation<? super Unit> continuation) {
        return buildInternal$suspendImpl(this, identityConfiguration, continuation);
    }

    public final Amplitude groupIdentify(String groupType, String groupName, Identify identify) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        Intrinsics.checkNotNullParameter(identify, "identify");
        return groupIdentify$default(this, groupType, groupName, identify, (EventOptions) null, 8, (Object) null);
    }

    public final Amplitude groupIdentify(String groupType, String groupName, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        return groupIdentify$default(this, groupType, groupName, map, (EventOptions) null, 8, (Object) null);
    }

    public final Amplitude identify(Identify identify) {
        Intrinsics.checkNotNullParameter(identify, "identify");
        return identify$default(this, identify, (EventOptions) null, 2, (Object) null);
    }

    public final Amplitude identify(Map<String, ? extends Object> map) {
        return identify$default(this, map, (EventOptions) null, 2, (Object) null);
    }

    public final Amplitude revenue(Revenue revenue) {
        Intrinsics.checkNotNullParameter(revenue, "revenue");
        return revenue$default(this, revenue, null, 2, null);
    }

    public final Amplitude setGroup(String groupType, String groupName) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        return setGroup$default(this, groupType, groupName, (EventOptions) null, 4, (Object) null);
    }

    public final Amplitude setGroup(String groupType, String[] groupName) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        return setGroup$default(this, groupType, groupName, (EventOptions) null, 4, (Object) null);
    }

    public final Amplitude track(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return track$default(this, event, (EventOptions) null, (Function3) null, 6, (Object) null);
    }

    public final Amplitude track(BaseEvent event, EventOptions eventOptions) {
        Intrinsics.checkNotNullParameter(event, "event");
        return track$default(this, event, eventOptions, (Function3) null, 4, (Object) null);
    }

    public final Amplitude track(String eventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return track$default(this, eventType, (Map) null, (EventOptions) null, 6, (Object) null);
    }

    public final Amplitude track(String eventType, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return track$default(this, eventType, map, (EventOptions) null, 4, (Object) null);
    }

    public Amplitude(Configuration configuration, State store, CoroutineScope amplitudeScope, CoroutineDispatcher amplitudeDispatcher, CoroutineDispatcher networkIODispatcher, CoroutineDispatcher storageIODispatcher, CoroutineDispatcher retryDispatcher) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(amplitudeScope, "amplitudeScope");
        Intrinsics.checkNotNullParameter(amplitudeDispatcher, "amplitudeDispatcher");
        Intrinsics.checkNotNullParameter(networkIODispatcher, "networkIODispatcher");
        Intrinsics.checkNotNullParameter(storageIODispatcher, "storageIODispatcher");
        Intrinsics.checkNotNullParameter(retryDispatcher, "retryDispatcher");
        this.configuration = configuration;
        this.store = store;
        this.amplitudeScope = amplitudeScope;
        this.amplitudeDispatcher = amplitudeDispatcher;
        this.networkIODispatcher = networkIODispatcher;
        this.storageIODispatcher = storageIODispatcher;
        this.retryDispatcher = retryDispatcher;
        this.diagnostics = new Diagnostics();
        if (!configuration.isValid()) {
            throw new IllegalArgumentException("invalid configuration".toString());
        }
        this.timeline = createTimeline();
        this.logger = configuration.getLoggerProvider().getLogger(this);
        Deferred<Boolean> deferredBuild = build();
        this.isBuilt = deferredBuild;
        deferredBuild.start();
    }

    public final Configuration getConfiguration() {
        return this.configuration;
    }

    public final State getStore() {
        return this.store;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Amplitude(Configuration configuration, State state, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, CoroutineDispatcher coroutineDispatcher2, CoroutineDispatcher coroutineDispatcher3, CoroutineDispatcher coroutineDispatcher4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        CoroutineDispatcher coroutineDispatcherFrom;
        CoroutineDispatcher coroutineDispatcherFrom2;
        CoroutineDispatcher coroutineDispatcherFrom3;
        CoroutineDispatcher coroutineDispatcherFrom4;
        CoroutineScope CoroutineScope = (i & 4) != 0 ? CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)) : coroutineScope;
        if ((i & 8) != 0) {
            ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
            Intrinsics.checkNotNullExpressionValue(executorServiceNewCachedThreadPool, "newCachedThreadPool()");
            coroutineDispatcherFrom = ExecutorsKt.from(executorServiceNewCachedThreadPool);
        } else {
            coroutineDispatcherFrom = coroutineDispatcher;
        }
        if ((i & 16) != 0) {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor()");
            coroutineDispatcherFrom2 = ExecutorsKt.from(executorServiceNewSingleThreadExecutor);
        } else {
            coroutineDispatcherFrom2 = coroutineDispatcher2;
        }
        if ((i & 32) != 0) {
            ExecutorService executorServiceNewSingleThreadExecutor2 = Executors.newSingleThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor2, "newSingleThreadExecutor()");
            coroutineDispatcherFrom3 = ExecutorsKt.from(executorServiceNewSingleThreadExecutor2);
        } else {
            coroutineDispatcherFrom3 = coroutineDispatcher3;
        }
        if ((i & 64) != 0) {
            ExecutorService executorServiceNewSingleThreadExecutor3 = Executors.newSingleThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor3, "newSingleThreadExecutor()");
            coroutineDispatcherFrom4 = ExecutorsKt.from(executorServiceNewSingleThreadExecutor3);
        } else {
            coroutineDispatcherFrom4 = coroutineDispatcher4;
        }
        this(configuration, state, CoroutineScope, coroutineDispatcherFrom, coroutineDispatcherFrom2, coroutineDispatcherFrom3, coroutineDispatcherFrom4);
    }

    public final CoroutineScope getAmplitudeScope() {
        return this.amplitudeScope;
    }

    public final CoroutineDispatcher getAmplitudeDispatcher() {
        return this.amplitudeDispatcher;
    }

    public final CoroutineDispatcher getNetworkIODispatcher() {
        return this.networkIODispatcher;
    }

    public final CoroutineDispatcher getStorageIODispatcher() {
        return this.storageIODispatcher;
    }

    public final CoroutineDispatcher getRetryDispatcher() {
        return this.retryDispatcher;
    }

    public final Timeline getTimeline() {
        return this.timeline;
    }

    public final Storage getStorage() {
        Storage storage = this.storage;
        if (storage != null) {
            return storage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("storage");
        return null;
    }

    public final Storage getIdentifyInterceptStorage() {
        Storage storage = this.identifyInterceptStorage;
        if (storage != null) {
            return storage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("identifyInterceptStorage");
        return null;
    }

    public final IdentityStorage getIdentityStorage() {
        IdentityStorage identityStorage = this.identityStorage;
        if (identityStorage != null) {
            return identityStorage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("identityStorage");
        return null;
    }

    public final Logger getLogger() {
        return this.logger;
    }

    public final IdentityContainer getIdContainer() {
        IdentityContainer identityContainer = this.idContainer;
        if (identityContainer != null) {
            return identityContainer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("idContainer");
        return null;
    }

    public final Deferred<Boolean> isBuilt() {
        return this.isBuilt;
    }

    public final Diagnostics getDiagnostics() {
        return this.diagnostics;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Amplitude(Configuration configuration) {
        this(configuration, new State(), null, null, null, null, null, 124, null);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
    }

    public Timeline createTimeline() {
        Timeline timeline = new Timeline();
        timeline.setAmplitude(this);
        return timeline;
    }

    protected IdentityConfiguration createIdentityConfiguration() {
        return new IdentityConfiguration(this.configuration.getInstanceName(), this.configuration.getApiKey(), null, this.configuration.getIdentityStorageProvider(), null, this.logger, 20, null);
    }

    protected final void createIdentityContainer(IdentityConfiguration identityConfiguration) {
        Intrinsics.checkNotNullParameter(identityConfiguration, "identityConfiguration");
        this.idContainer = IdentityContainer.INSTANCE.getInstance(identityConfiguration);
        AnalyticsIdentityListener analyticsIdentityListener = new AnalyticsIdentityListener(this.store);
        getIdContainer().getIdentityManager().addIdentityListener(analyticsIdentityListener);
        if (getIdContainer().getIdentityManager().getInitialized()) {
            analyticsIdentityListener.onIdentityChanged(getIdContainer().getIdentityManager().getIdentity(), IdentityUpdateType.Initialized);
        }
    }

    protected Deferred<Boolean> build() {
        return BuildersKt.async(this.amplitudeScope, this.amplitudeDispatcher, CoroutineStart.LAZY, new Amplitude$build$built$1(this, this, null));
    }

    static /* synthetic */ Object buildInternal$suspendImpl(Amplitude amplitude, IdentityConfiguration identityConfiguration, Continuation continuation) {
        amplitude.createIdentityContainer(identityConfiguration);
        EventBridgeContainer.INSTANCE.getInstance(amplitude.getConfiguration().getInstanceName()).getEventBridge().setEventReceiver(EventChannel.EVENT, new AnalyticsEventReceiver(amplitude));
        amplitude.add(new ContextPlugin() { // from class: com.amplitude.core.Amplitude.buildInternal.2
            @Override // com.amplitude.core.platform.plugins.ContextPlugin
            protected void setDeviceId(String deviceId) {
                Intrinsics.checkNotNullParameter(deviceId, "deviceId");
                Amplitude.this.setDeviceIdInternal(deviceId);
            }
        });
        amplitude.add(new GetAmpliExtrasPlugin());
        Amplitude amplitudeAdd = amplitude.add(new AmplitudeDestination());
        return amplitudeAdd == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? amplitudeAdd : Unit.INSTANCE;
    }

    @Deprecated(message = "Please use 'track' instead.", replaceWith = @ReplaceWith(expression = "track", imports = {}))
    public final Amplitude logEvent(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return track$default(this, event, (EventOptions) null, (Function3) null, 6, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Amplitude track$default(Amplitude amplitude, BaseEvent baseEvent, EventOptions eventOptions, Function3 function3, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: track");
        }
        if ((i & 2) != 0) {
            eventOptions = null;
        }
        if ((i & 4) != 0) {
            function3 = null;
        }
        return amplitude.track(baseEvent, eventOptions, (Function3<? super BaseEvent, ? super Integer, ? super String, Unit>) function3);
    }

    public final Amplitude track(BaseEvent event, EventOptions options, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> callback) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (options != null) {
            event.mergeEventOptions(options);
        }
        if (callback != null) {
            event.setCallback(callback);
        }
        process(event);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Amplitude track$default(Amplitude amplitude, String str, Map map, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: track");
        }
        if ((i & 2) != 0) {
            map = null;
        }
        if ((i & 4) != 0) {
            eventOptions = null;
        }
        return amplitude.track(str, (Map<String, ? extends Object>) map, eventOptions);
    }

    public final Amplitude track(String eventType, Map<String, ? extends Object> eventProperties, EventOptions options) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        BaseEvent baseEvent = new BaseEvent();
        baseEvent.setEventType(eventType);
        baseEvent.setEventProperties(eventProperties == null ? null : MapsKt.toMutableMap(eventProperties));
        if (options != null) {
            baseEvent.mergeEventOptions(options);
        }
        process(baseEvent);
        return this;
    }

    public static /* synthetic */ Amplitude identify$default(Amplitude amplitude, Map map, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: identify");
        }
        if ((i & 2) != 0) {
            eventOptions = null;
        }
        return amplitude.identify((Map<String, ? extends Object>) map, eventOptions);
    }

    public final Amplitude identify(Map<String, ? extends Object> userProperties, EventOptions options) {
        return identify(convertPropertiesToIdentify(userProperties), options);
    }

    public static /* synthetic */ Amplitude identify$default(Amplitude amplitude, Identify identify, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: identify");
        }
        if ((i & 2) != 0) {
            eventOptions = null;
        }
        return amplitude.identify(identify, eventOptions);
    }

    public final Amplitude identify(Identify identify, EventOptions options) {
        Intrinsics.checkNotNullParameter(identify, "identify");
        IdentifyEvent identifyEvent = new IdentifyEvent();
        identifyEvent.setUserProperties(identify.getProperties());
        if (options != null) {
            identifyEvent.mergeEventOptions(options);
            String userId = options.getUserId();
            if (userId != null) {
                setUserId(userId);
            }
            String deviceId = options.getDeviceId();
            if (deviceId != null) {
                setDeviceId(deviceId);
            }
        }
        process(identifyEvent);
        return this;
    }

    /* JADX INFO: renamed from: com.amplitude.core.Amplitude$setUserId$1 */
    /* JADX INFO: compiled from: Amplitude.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.Amplitude$setUserId$1", m2735f = "Amplitude.kt", m2736i = {}, m2737l = {240}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10571 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10571(String str, Continuation<? super C10571> continuation) {
            super(2, continuation);
            this.$userId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Amplitude.this.new C10571(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10571) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = Amplitude.this.isBuilt().await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                Amplitude.this.getIdContainer().getIdentityManager().editIdentity().setUserId(this.$userId).commit();
            }
            return Unit.INSTANCE;
        }
    }

    public final Amplitude setUserId(String userId) {
        BuildersKt__Builders_commonKt.launch$default(this.amplitudeScope, this.amplitudeDispatcher, null, new C10571(userId, null), 2, null);
        return this;
    }

    public final String getUserId() {
        if (this.idContainer != null) {
            return getIdContainer().getIdentityManager().getIdentity().getUserId();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setDeviceIdInternal(String deviceId) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        getIdContainer().getIdentityManager().editIdentity().setDeviceId(deviceId).commit();
    }

    /* JADX INFO: renamed from: com.amplitude.core.Amplitude$setDeviceId$1 */
    /* JADX INFO: compiled from: Amplitude.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.Amplitude$setDeviceId$1", m2735f = "Amplitude.kt", m2736i = {}, m2737l = {275}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10561 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $deviceId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10561(String str, Continuation<? super C10561> continuation) {
            super(2, continuation);
            this.$deviceId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return Amplitude.this.new C10561(this.$deviceId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10561) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (Amplitude.this.isBuilt().await(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Amplitude.this.setDeviceIdInternal(this.$deviceId);
            return Unit.INSTANCE;
        }
    }

    public final Amplitude setDeviceId(String deviceId) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        BuildersKt__Builders_commonKt.launch$default(this.amplitudeScope, this.amplitudeDispatcher, null, new C10561(deviceId, null), 2, null);
        return this;
    }

    public final String getDeviceId() {
        if (this.idContainer != null) {
            return getIdContainer().getIdentityManager().getIdentity().getDeviceId();
        }
        return null;
    }

    public Amplitude reset() {
        setUserId(null);
        setDeviceId(Intrinsics.stringPlus(UUID.randomUUID().toString(), SvgConstants.Attributes.PATH_DATA_CATMULL_CURVE));
        return this;
    }

    public static /* synthetic */ Amplitude groupIdentify$default(Amplitude amplitude, String str, String str2, Map map, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: groupIdentify");
        }
        if ((i & 8) != 0) {
            eventOptions = null;
        }
        return amplitude.groupIdentify(str, str2, (Map<String, ? extends Object>) map, eventOptions);
    }

    public final Amplitude groupIdentify(String groupType, String groupName, Map<String, ? extends Object> groupProperties, EventOptions options) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        return groupIdentify(groupType, groupName, convertPropertiesToIdentify(groupProperties), options);
    }

    public static /* synthetic */ Amplitude groupIdentify$default(Amplitude amplitude, String str, String str2, Identify identify, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: groupIdentify");
        }
        if ((i & 8) != 0) {
            eventOptions = null;
        }
        return amplitude.groupIdentify(str, str2, identify, eventOptions);
    }

    public final Amplitude groupIdentify(String groupType, String groupName, Identify identify, EventOptions options) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        Intrinsics.checkNotNullParameter(identify, "identify");
        GroupIdentifyEvent groupIdentifyEvent = new GroupIdentifyEvent();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(groupType, groupName);
        groupIdentifyEvent.setGroups(linkedHashMap);
        groupIdentifyEvent.setGroupProperties(identify.getProperties());
        if (options != null) {
            groupIdentifyEvent.mergeEventOptions(options);
        }
        process(groupIdentifyEvent);
        return this;
    }

    public static /* synthetic */ Amplitude setGroup$default(Amplitude amplitude, String str, String str2, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setGroup");
        }
        if ((i & 4) != 0) {
            eventOptions = null;
        }
        return amplitude.setGroup(str, str2, eventOptions);
    }

    public final Amplitude setGroup(String groupType, String groupName, EventOptions options) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        Identify identify = new Identify().set(groupType, groupName);
        IdentifyEvent identifyEvent = new IdentifyEvent();
        identifyEvent.setGroups(MapsKt.mutableMapOf(TuplesKt.m2729to(groupType, groupName)));
        identifyEvent.setUserProperties(identify.getProperties());
        track$default(this, identifyEvent, options, (Function3) null, 4, (Object) null);
        return this;
    }

    public static /* synthetic */ Amplitude setGroup$default(Amplitude amplitude, String str, String[] strArr, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setGroup");
        }
        if ((i & 4) != 0) {
            eventOptions = null;
        }
        return amplitude.setGroup(str, strArr, eventOptions);
    }

    public final Amplitude setGroup(String groupType, String[] groupName, EventOptions options) {
        Intrinsics.checkNotNullParameter(groupType, "groupType");
        Intrinsics.checkNotNullParameter(groupName, "groupName");
        Identify identify = new Identify().set(groupType, groupName);
        IdentifyEvent identifyEvent = new IdentifyEvent();
        identifyEvent.setGroups(MapsKt.mutableMapOf(TuplesKt.m2729to(groupType, groupName)));
        identifyEvent.setUserProperties(identify.getProperties());
        track$default(this, identifyEvent, options, (Function3) null, 4, (Object) null);
        return this;
    }

    @Deprecated(message = "Please use 'revenue' instead.", replaceWith = @ReplaceWith(expression = "revenue", imports = {}))
    public final Amplitude logRevenue(Revenue revenue) {
        Intrinsics.checkNotNullParameter(revenue, "revenue");
        revenue$default(this, revenue, null, 2, null);
        return this;
    }

    public static /* synthetic */ Amplitude revenue$default(Amplitude amplitude, Revenue revenue, EventOptions eventOptions, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: revenue");
        }
        if ((i & 2) != 0) {
            eventOptions = null;
        }
        return amplitude.revenue(revenue, eventOptions);
    }

    public final Amplitude revenue(Revenue revenue, EventOptions options) {
        Intrinsics.checkNotNullParameter(revenue, "revenue");
        if (!revenue.isValid()) {
            this.logger.warn("Invalid revenue object, missing required fields");
            return this;
        }
        RevenueEvent revenueEvent = revenue.toRevenueEvent();
        if (options != null) {
            revenueEvent.mergeEventOptions(options);
        }
        revenue(revenueEvent);
        return this;
    }

    public final Amplitude revenue(RevenueEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        process(event);
        return this;
    }

    private final void process(BaseEvent event) {
        if (this.configuration.getOptOut()) {
            this.logger.info("Skip event for opt out config.");
            return;
        }
        if (event.getTimestamp() == null) {
            event.setTimestamp(Long.valueOf(System.currentTimeMillis()));
        }
        this.logger.debug(Intrinsics.stringPlus("Logged event with type: ", event.getEventType()));
        this.timeline.process(event);
    }

    public final Amplitude add(Plugin plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        if (plugin instanceof ObservePlugin) {
            this.store.add((ObservePlugin) plugin, this);
        } else {
            this.timeline.add(plugin);
        }
        return this;
    }

    public final Amplitude remove(Plugin plugin) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        if (plugin instanceof ObservePlugin) {
            this.store.remove((ObservePlugin) plugin);
        } else {
            this.timeline.remove(plugin);
        }
        return this;
    }

    public final void flush() {
        this.timeline.applyClosure(new Function1<Plugin, Unit>() { // from class: com.amplitude.core.Amplitude.flush.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Plugin plugin) {
                invoke2(plugin);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Plugin it) {
                Intrinsics.checkNotNullParameter(it, "it");
                EventPlugin eventPlugin = it instanceof EventPlugin ? (EventPlugin) it : null;
                if (eventPlugin == null) {
                    return;
                }
                eventPlugin.flush();
            }
        });
    }

    private final Identify convertPropertiesToIdentify(Map<String, ? extends Object> userProperties) {
        Identify identify = new Identify();
        if (userProperties != null) {
            for (Map.Entry<String, ? extends Object> entry : userProperties.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    identify.set(entry.getKey(), value);
                }
            }
        }
        return identify;
    }
}
