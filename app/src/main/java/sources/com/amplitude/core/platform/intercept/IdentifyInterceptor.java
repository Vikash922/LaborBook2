package com.amplitude.core.platform.intercept;

import com.amplitude.common.Logger;
import com.amplitude.core.Amplitude;
import com.amplitude.core.Configuration;
import com.amplitude.core.Storage;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.IdentifyOperation;
import com.amplitude.core.platform.plugins.AmplitudeDestination;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: IdentifyInterceptor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0011\u0010\u0015\u001a\u00020\u0016H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u001c\u0010\"\u001a\u00020\u001e2\b\u0010#\u001a\u0004\u0018\u00010\u000e2\b\u0010$\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019H\u0002J\u0019\u0010(\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0019H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ\b\u0010)\u001a\u00020*H\u0002J\u0011\u0010+\u001a\u00020\u0016H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, m2722d2 = {"Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;", "", "storage", "Lcom/amplitude/core/Storage;", "amplitude", "Lcom/amplitude/core/Amplitude;", "logger", "Lcom/amplitude/common/Logger;", "configuration", "Lcom/amplitude/core/Configuration;", "plugin", "Lcom/amplitude/core/platform/plugins/AmplitudeDestination;", "(Lcom/amplitude/core/Storage;Lcom/amplitude/core/Amplitude;Lcom/amplitude/common/Logger;Lcom/amplitude/core/Configuration;Lcom/amplitude/core/platform/plugins/AmplitudeDestination;)V", "deviceId", "", "identifySet", "Ljava/util/concurrent/atomic/AtomicBoolean;", "storageHandler", "Lcom/amplitude/core/platform/intercept/IdentifyInterceptStorageHandler;", "transferScheduled", "userId", "clearIdentifyIntercepts", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransferIdentifyEvent", "Lcom/amplitude/core/events/BaseEvent;", "intercept", "event", "(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isActionOnly", "", "action", "Lcom/amplitude/core/events/IdentifyOperation;", "isClearAll", "isIdUpdated", "id", "updateId", "isIdentityUpdated", "isSetGroups", "isSetOnly", "saveIdentifyProperties", "scheduleTransfer", "Lkotlinx/coroutines/Job;", "transferInterceptedIdentify", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class IdentifyInterceptor {
    private final Amplitude amplitude;
    private final Configuration configuration;
    private String deviceId;
    private final AtomicBoolean identifySet;
    private final Logger logger;
    private final AmplitudeDestination plugin;
    private final Storage storage;
    private final IdentifyInterceptStorageHandler storageHandler;
    private AtomicBoolean transferScheduled;
    private String userId;

    /* JADX INFO: renamed from: com.amplitude.core.platform.intercept.IdentifyInterceptor$intercept$1 */
    /* JADX INFO: compiled from: IdentifyInterceptor.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.intercept.IdentifyInterceptor", m2735f = "IdentifyInterceptor.kt", m2736i = {0, 0, 1, 2, 3, 4}, m2737l = {48, 55, 61, 66, 77}, m2738m = "intercept", m2739n = {"this", "event", "this", "event", "event", "event"}, m2740s = {"L$0", "L$1", "L$0", "L$0", "L$0", "L$0"})
    static final class C10651 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10651(Continuation<? super C10651> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return IdentifyInterceptor.this.intercept(null, this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.intercept.IdentifyInterceptor$saveIdentifyProperties$1 */
    /* JADX INFO: compiled from: IdentifyInterceptor.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.intercept.IdentifyInterceptor", m2735f = "IdentifyInterceptor.kt", m2736i = {0}, m2737l = {109}, m2738m = "saveIdentifyProperties", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10661 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10661(Continuation<? super C10661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return IdentifyInterceptor.this.saveIdentifyProperties(null, this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.intercept.IdentifyInterceptor$transferInterceptedIdentify$1 */
    /* JADX INFO: compiled from: IdentifyInterceptor.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.intercept.IdentifyInterceptor", m2735f = "IdentifyInterceptor.kt", m2736i = {0}, m2737l = {88}, m2738m = "transferInterceptedIdentify", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C10681 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C10681(Continuation<? super C10681> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return IdentifyInterceptor.this.transferInterceptedIdentify(this);
        }
    }

    public IdentifyInterceptor(Storage storage, Amplitude amplitude, Logger logger, Configuration configuration, AmplitudeDestination plugin) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        this.storage = storage;
        this.amplitude = amplitude;
        this.logger = logger;
        this.configuration = configuration;
        this.plugin = plugin;
        this.transferScheduled = new AtomicBoolean(false);
        this.identifySet = new AtomicBoolean(false);
        this.storageHandler = IdentifyInterceptStorageHandler.INSTANCE.getIdentifyInterceptStorageHandler(storage, logger, amplitude);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object intercept(com.amplitude.core.events.BaseEvent r10, kotlin.coroutines.Continuation<? super com.amplitude.core.events.BaseEvent> r11) {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.platform.intercept.IdentifyInterceptor.intercept(com.amplitude.core.events.BaseEvent, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object clearIdentifyIntercepts(Continuation<? super Unit> continuation) {
        IdentifyInterceptStorageHandler identifyInterceptStorageHandler = this.storageHandler;
        Intrinsics.checkNotNull(identifyInterceptStorageHandler);
        Object objClearIdentifyIntercepts = identifyInterceptStorageHandler.clearIdentifyIntercepts(continuation);
        return objClearIdentifyIntercepts == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objClearIdentifyIntercepts : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object transferInterceptedIdentify(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.amplitude.core.platform.intercept.IdentifyInterceptor.C10681
            if (r0 == 0) goto L14
            r0 = r5
            com.amplitude.core.platform.intercept.IdentifyInterceptor$transferInterceptedIdentify$1 r0 = (com.amplitude.core.platform.intercept.IdentifyInterceptor.C10681) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            com.amplitude.core.platform.intercept.IdentifyInterceptor$transferInterceptedIdentify$1 r0 = new com.amplitude.core.platform.intercept.IdentifyInterceptor$transferInterceptedIdentify$1
            r0.<init>(r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r0 = r0.L$0
            com.amplitude.core.platform.intercept.IdentifyInterceptor r0 = (com.amplitude.core.platform.intercept.IdentifyInterceptor) r0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L45
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r4.getTransferIdentifyEvent(r0)
            if (r5 != r1) goto L44
            return r1
        L44:
            r0 = r4
        L45:
            com.amplitude.core.events.BaseEvent r5 = (com.amplitude.core.events.BaseEvent) r5
            if (r5 != 0) goto L4a
            goto L4f
        L4a:
            com.amplitude.core.platform.plugins.AmplitudeDestination r0 = r0.plugin
            r0.enqueuePipeline(r5)
        L4f:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.platform.intercept.IdentifyInterceptor.transferInterceptedIdentify(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getTransferIdentifyEvent(Continuation<? super BaseEvent> continuation) {
        IdentifyInterceptStorageHandler identifyInterceptStorageHandler = this.storageHandler;
        Intrinsics.checkNotNull(identifyInterceptStorageHandler);
        return identifyInterceptStorageHandler.getTransferIdentifyEvent(continuation);
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.intercept.IdentifyInterceptor$scheduleTransfer$1 */
    /* JADX INFO: compiled from: IdentifyInterceptor.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.intercept.IdentifyInterceptor$scheduleTransfer$1", m2735f = "IdentifyInterceptor.kt", m2736i = {}, m2737l = {101, 102}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10671 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C10671(Continuation<? super C10671> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return IdentifyInterceptor.this.new C10671(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10671) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!IdentifyInterceptor.this.transferScheduled.get()) {
                    IdentifyInterceptor.this.transferScheduled.getAndSet(true);
                    this.label = 1;
                    if (DelayKt.delay(IdentifyInterceptor.this.configuration.getIdentifyBatchIntervalMillis(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    IdentifyInterceptor.this.transferScheduled.getAndSet(false);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.label = 2;
            if (IdentifyInterceptor.this.transferInterceptedIdentify(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            IdentifyInterceptor.this.transferScheduled.getAndSet(false);
            return Unit.INSTANCE;
        }
    }

    private final Job scheduleTransfer() {
        return BuildersKt__Builders_commonKt.launch$default(this.amplitude.getAmplitudeScope(), this.amplitude.getStorageIODispatcher(), null, new C10671(null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object saveIdentifyProperties(com.amplitude.core.events.BaseEvent r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.amplitude.core.platform.intercept.IdentifyInterceptor.C10661
            if (r0 == 0) goto L14
            r0 = r6
            com.amplitude.core.platform.intercept.IdentifyInterceptor$saveIdentifyProperties$1 r0 = (com.amplitude.core.platform.intercept.IdentifyInterceptor.C10661) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.amplitude.core.platform.intercept.IdentifyInterceptor$saveIdentifyProperties$1 r0 = new com.amplitude.core.platform.intercept.IdentifyInterceptor$saveIdentifyProperties$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r5 = r0.L$0
            com.amplitude.core.platform.intercept.IdentifyInterceptor r5 = (com.amplitude.core.platform.intercept.IdentifyInterceptor) r5
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Exception -> L2e
            goto L51
        L2e:
            r6 = move-exception
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            com.amplitude.core.Storage r6 = r4.storage     // Catch: java.lang.Exception -> L48
            r0.L$0 = r4     // Catch: java.lang.Exception -> L48
            r0.label = r3     // Catch: java.lang.Exception -> L48
            java.lang.Object r5 = r6.writeEvent(r5, r0)     // Catch: java.lang.Exception -> L48
            if (r5 != r1) goto L51
            return r1
        L48:
            r6 = move-exception
            r5 = r4
        L4a:
            com.amplitude.common.Logger r5 = r5.logger
            java.lang.String r0 = "Error when intercepting identifies"
            com.amplitude.core.utilities.LoggerExtensionsKt.logWithStackTrace(r6, r5, r0)
        L51:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.platform.intercept.IdentifyInterceptor.saveIdentifyProperties(com.amplitude.core.events.BaseEvent, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean isClearAll(BaseEvent event) {
        return isActionOnly(event, IdentifyOperation.CLEAR_ALL);
    }

    private final boolean isSetOnly(BaseEvent event) {
        return isActionOnly(event, IdentifyOperation.SET);
    }

    private final boolean isActionOnly(BaseEvent event, IdentifyOperation action) {
        Map<String, Object> userProperties = event.getUserProperties();
        return userProperties != null && userProperties.size() == 1 && userProperties.containsKey(action.getOperationType());
    }

    private final boolean isSetGroups(BaseEvent event) {
        if (event.getGroups() != null) {
            Map<String, Object> groups = event.getGroups();
            Intrinsics.checkNotNull(groups);
            if (!groups.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    private final boolean isIdentityUpdated(BaseEvent event) {
        boolean z;
        if (!this.identifySet.getAndSet(true)) {
            this.userId = event.getUserId();
            this.deviceId = event.getDeviceId();
            return true;
        }
        if (isIdUpdated(this.userId, event.getUserId())) {
            this.userId = event.getUserId();
            z = true;
        } else {
            z = false;
        }
        if (!isIdUpdated(this.deviceId, event.getDeviceId())) {
            return z;
        }
        this.deviceId = event.getDeviceId();
        return true;
    }

    private final boolean isIdUpdated(String id, String updateId) {
        if (id == null && updateId == null) {
            return false;
        }
        return id == null || updateId == null || !Intrinsics.areEqual(id, updateId);
    }
}
