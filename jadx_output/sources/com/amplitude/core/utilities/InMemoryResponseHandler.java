package com.amplitude.core.utilities;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.core.Configuration;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.EventPipeline;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: InMemoryResponseHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u0000 02\u00020\u0001:\u00010B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J \u0010'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020)2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J&\u0010*\u001a\u00020\u00142\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020,0+2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u001aH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u00061"}, m2722d2 = {"Lcom/amplitude/core/utilities/InMemoryResponseHandler;", "Lcom/amplitude/core/utilities/ResponseHandler;", "eventPipeline", "Lcom/amplitude/core/platform/EventPipeline;", "configuration", "Lcom/amplitude/core/Configuration;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V", "getConfiguration", "()Lcom/amplitude/core/Configuration;", "getDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "getEventPipeline", "()Lcom/amplitude/core/platform/EventPipeline;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "handleBadRequestResponse", "", "badRequestResponse", "Lcom/amplitude/core/utilities/BadRequestResponse;", DatabaseConstants.EVENT_TABLE_NAME, "", "eventsString", "", "handleFailedResponse", "failedResponse", "Lcom/amplitude/core/utilities/FailedResponse;", "handlePayloadTooLargeResponse", "payloadTooLargeResponse", "Lcom/amplitude/core/utilities/PayloadTooLargeResponse;", "handleSuccessResponse", "successResponse", "Lcom/amplitude/core/utilities/SuccessResponse;", "handleTimeoutResponse", "timeoutResponse", "Lcom/amplitude/core/utilities/TimeoutResponse;", "handleTooManyRequestsResponse", "tooManyRequestsResponse", "Lcom/amplitude/core/utilities/TooManyRequestsResponse;", "triggerEventsCallback", "", "Lcom/amplitude/core/events/BaseEvent;", "status", "", "message", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class InMemoryResponseHandler implements ResponseHandler {
    public static final long BACK_OFF = 30000;
    private final Configuration configuration;
    private final CoroutineDispatcher dispatcher;
    private final EventPipeline eventPipeline;
    private final CoroutineScope scope;

    public InMemoryResponseHandler(EventPipeline eventPipeline, Configuration configuration, CoroutineScope scope, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(eventPipeline, "eventPipeline");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.eventPipeline = eventPipeline;
        this.configuration = configuration;
        this.scope = scope;
        this.dispatcher = dispatcher;
    }

    public final EventPipeline getEventPipeline() {
        return this.eventPipeline;
    }

    public final Configuration getConfiguration() {
        return this.configuration;
    }

    public final CoroutineScope getScope() {
        return this.scope;
    }

    public final CoroutineDispatcher getDispatcher() {
        return this.dispatcher;
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleSuccessResponse(SuccessResponse successResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(successResponse, "successResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        triggerEventsCallback((List) events, HttpStatus.SUCCESS.getCode(), "Event sent success.");
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleBadRequestResponse(BadRequestResponse badRequestResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(badRequestResponse, "badRequestResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        List<? extends BaseEvent> list = (List) events;
        if (list.size() == 1) {
            triggerEventsCallback(list, HttpStatus.BAD_REQUEST.getCode(), badRequestResponse.getError());
            return;
        }
        Set<Integer> eventIndicesToDrop = badRequestResponse.getEventIndicesToDrop();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            BaseEvent baseEvent = (BaseEvent) obj;
            if (eventIndicesToDrop.contains(Integer.valueOf(i)) || badRequestResponse.isEventSilenced(baseEvent)) {
                arrayList.add(baseEvent);
            } else {
                arrayList2.add(baseEvent);
            }
            i = i2;
        }
        triggerEventsCallback(arrayList, HttpStatus.BAD_REQUEST.getCode(), badRequestResponse.getError());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            getEventPipeline().put((BaseEvent) it.next());
        }
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handlePayloadTooLargeResponse(PayloadTooLargeResponse payloadTooLargeResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(payloadTooLargeResponse, "payloadTooLargeResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        List<? extends BaseEvent> list = (List) events;
        if (list.size() == 1) {
            triggerEventsCallback(list, HttpStatus.PAYLOAD_TOO_LARGE.getCode(), payloadTooLargeResponse.getError());
            return;
        }
        this.eventPipeline.getFlushSizeDivider().incrementAndGet();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            getEventPipeline().put((BaseEvent) it.next());
        }
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleTooManyRequestsResponse(TooManyRequestsResponse tooManyRequestsResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(tooManyRequestsResponse, "tooManyRequestsResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        for (Object obj : (List) events) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            BaseEvent baseEvent = (BaseEvent) obj;
            if (tooManyRequestsResponse.isEventExceedDailyQuota(baseEvent)) {
                arrayList.add(baseEvent);
            } else if (tooManyRequestsResponse.getThrottledEvents().contains(Integer.valueOf(i))) {
                arrayList3.add(baseEvent);
            } else {
                arrayList2.add(baseEvent);
            }
            i = i2;
        }
        triggerEventsCallback(arrayList, HttpStatus.TOO_MANY_REQUESTS.getCode(), tooManyRequestsResponse.getError());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            getEventPipeline().put((BaseEvent) it.next());
        }
        BuildersKt__Builders_commonKt.launch$default(this.scope, this.dispatcher, null, new C10833(arrayList3, this, null), 2, null);
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.InMemoryResponseHandler$handleTooManyRequestsResponse$3 */
    /* JADX INFO: compiled from: InMemoryResponseHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.InMemoryResponseHandler$handleTooManyRequestsResponse$3", m2735f = "InMemoryResponseHandler.kt", m2736i = {}, m2737l = {79}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10833 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<BaseEvent> $eventsToRetryLater;
        int label;
        final /* synthetic */ InMemoryResponseHandler this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10833(List<BaseEvent> list, InMemoryResponseHandler inMemoryResponseHandler, Continuation<? super C10833> continuation) {
            super(2, continuation);
            this.$eventsToRetryLater = list;
            this.this$0 = inMemoryResponseHandler;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10833(this.$eventsToRetryLater, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10833) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(30000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            List<BaseEvent> list = this.$eventsToRetryLater;
            InMemoryResponseHandler inMemoryResponseHandler = this.this$0;
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                inMemoryResponseHandler.getEventPipeline().put((BaseEvent) it.next());
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.InMemoryResponseHandler$handleTimeoutResponse$1 */
    /* JADX INFO: compiled from: InMemoryResponseHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.InMemoryResponseHandler$handleTimeoutResponse$1", m2735f = "InMemoryResponseHandler.kt", m2736i = {}, m2737l = {89}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10821 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<BaseEvent> $eventsList;
        int label;
        final /* synthetic */ InMemoryResponseHandler this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C10821(List<? extends BaseEvent> list, InMemoryResponseHandler inMemoryResponseHandler, Continuation<? super C10821> continuation) {
            super(2, continuation);
            this.$eventsList = list;
            this.this$0 = inMemoryResponseHandler;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10821(this.$eventsList, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10821) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(30000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            List<BaseEvent> list = this.$eventsList;
            InMemoryResponseHandler inMemoryResponseHandler = this.this$0;
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                inMemoryResponseHandler.getEventPipeline().put((BaseEvent) it.next());
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleTimeoutResponse(TimeoutResponse timeoutResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(timeoutResponse, "timeoutResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        BuildersKt__Builders_commonKt.launch$default(this.scope, this.dispatcher, null, new C10821((List) events, this, null), 2, null);
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleFailedResponse(FailedResponse failedResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(failedResponse, "failedResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (BaseEvent baseEvent : (List) events) {
            if (baseEvent.getAttempts() >= getConfiguration().getFlushMaxRetries()) {
                arrayList.add(baseEvent);
            } else {
                arrayList2.add(baseEvent);
            }
        }
        triggerEventsCallback(arrayList, HttpStatus.FAILED.getCode(), failedResponse.getError());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            getEventPipeline().put((BaseEvent) it.next());
        }
    }

    private final void triggerEventsCallback(List<? extends BaseEvent> events, int status, String message) {
        for (BaseEvent baseEvent : events) {
            Function3<BaseEvent, Integer, String, Unit> callback = getConfiguration().getCallback();
            if (callback != null) {
                callback.invoke(baseEvent, Integer.valueOf(status), message);
            }
            Function3<BaseEvent, Integer, String, Unit> callback2 = baseEvent.getCallback();
            if (callback2 != null) {
                callback2.invoke(baseEvent, Integer.valueOf(status), message);
            }
        }
    }
}
