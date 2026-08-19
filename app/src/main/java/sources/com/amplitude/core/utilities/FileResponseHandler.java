package com.amplitude.core.utilities;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.common.Logger;
import com.amplitude.core.Configuration;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.EventPipeline;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
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
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: FileResponseHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ \u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u0002002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J \u00101\u001a\u00020\u001e2\u0006\u00102\u001a\u0002032\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u00104\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020$H\u0002J\b\u00105\u001a\u00020\u001eH\u0002J\u0012\u00106\u001a\u00020\u001e2\b\b\u0002\u00107\u001a\u000208H\u0002J&\u00109\u001a\u00020\u001e2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020;0:2\u0006\u0010<\u001a\u00020\u00162\u0006\u0010=\u001a\u00020$H\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0016@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0016X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, m2722d2 = {"Lcom/amplitude/core/utilities/FileResponseHandler;", "Lcom/amplitude/core/utilities/ResponseHandler;", "storage", "Lcom/amplitude/core/utilities/EventsFileStorage;", "eventPipeline", "Lcom/amplitude/core/platform/EventPipeline;", "configuration", "Lcom/amplitude/core/Configuration;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "logger", "Lcom/amplitude/common/Logger;", "(Lcom/amplitude/core/utilities/EventsFileStorage;Lcom/amplitude/core/platform/EventPipeline;Lcom/amplitude/core/Configuration;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/amplitude/common/Logger;)V", "backoff", "Ljava/util/concurrent/atomic/AtomicBoolean;", "value", "", "currentFlushInterval", "setCurrentFlushInterval", "(J)V", "", "currentFlushQueueSize", "setCurrentFlushQueueSize", "(I)V", "maxQueueSize", "retries", "Ljava/util/concurrent/atomic/AtomicInteger;", "handleBadRequestResponse", "", "badRequestResponse", "Lcom/amplitude/core/utilities/BadRequestResponse;", DatabaseConstants.EVENT_TABLE_NAME, "", "eventsString", "", "handleFailedResponse", "failedResponse", "Lcom/amplitude/core/utilities/FailedResponse;", "handlePayloadTooLargeResponse", "payloadTooLargeResponse", "Lcom/amplitude/core/utilities/PayloadTooLargeResponse;", "handleSuccessResponse", "successResponse", "Lcom/amplitude/core/utilities/SuccessResponse;", "handleTimeoutResponse", "timeoutResponse", "Lcom/amplitude/core/utilities/TimeoutResponse;", "handleTooManyRequestsResponse", "tooManyRequestsResponse", "Lcom/amplitude/core/utilities/TooManyRequestsResponse;", "removeCallbackByInsertId", "resetBackOff", "triggerBackOff", "withSizeUpdate", "", "triggerEventsCallback", "", "Lcom/amplitude/core/events/BaseEvent;", "status", "message", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class FileResponseHandler implements ResponseHandler {
    private AtomicBoolean backoff;
    private final Configuration configuration;
    private long currentFlushInterval;
    private int currentFlushQueueSize;
    private final CoroutineDispatcher dispatcher;
    private final EventPipeline eventPipeline;
    private final Logger logger;
    private final int maxQueueSize;
    private AtomicInteger retries;
    private final CoroutineScope scope;
    private final EventsFileStorage storage;

    public FileResponseHandler(EventsFileStorage storage, EventPipeline eventPipeline, Configuration configuration, CoroutineScope scope, CoroutineDispatcher dispatcher, Logger logger) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(eventPipeline, "eventPipeline");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.storage = storage;
        this.eventPipeline = eventPipeline;
        this.configuration = configuration;
        this.scope = scope;
        this.dispatcher = dispatcher;
        this.logger = logger;
        this.retries = new AtomicInteger(0);
        this.currentFlushInterval = configuration.getFlushIntervalMillis();
        this.backoff = new AtomicBoolean(false);
        this.currentFlushQueueSize = configuration.getFlushQueueSize();
        this.maxQueueSize = 50;
    }

    private final void setCurrentFlushInterval(long j) {
        this.currentFlushInterval = j;
        this.eventPipeline.setFlushInterval(j);
    }

    private final void setCurrentFlushQueueSize(int i) {
        this.currentFlushQueueSize = i;
        this.eventPipeline.setFlushQueueSize(i);
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleSuccessResponse(SuccessResponse successResponse, Object events, String eventsString) throws JSONException {
        Intrinsics.checkNotNullParameter(successResponse, "successResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        String str = (String) events;
        Logger logger = this.logger;
        if (logger != null) {
            logger.debug(Intrinsics.stringPlus("Handle response, status: ", successResponse.getStatus()));
        }
        try {
            triggerEventsCallback(JSONUtilKt.toEvents(new JSONArray(eventsString)), HttpStatus.SUCCESS.getCode(), "Event sent success.");
            BuildersKt__Builders_commonKt.launch$default(this.scope, this.dispatcher, null, new C10781(str, null), 2, null);
            resetBackOff();
        } catch (JSONException e) {
            this.storage.removeFile(str);
            removeCallbackByInsertId(eventsString);
            throw e;
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.FileResponseHandler$handleSuccessResponse$1 */
    /* JADX INFO: compiled from: FileResponseHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.FileResponseHandler$handleSuccessResponse$1", m2735f = "FileResponseHandler.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10781 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventFilePath;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10781(String str, Continuation<? super C10781> continuation) {
            super(2, continuation);
            this.$eventFilePath = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileResponseHandler.this.new C10781(this.$eventFilePath, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10781) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FileResponseHandler.this.storage.removeFile(this.$eventFilePath);
            return Unit.INSTANCE;
        }
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleBadRequestResponse(BadRequestResponse badRequestResponse, Object events, String eventsString) throws JSONException {
        Intrinsics.checkNotNullParameter(badRequestResponse, "badRequestResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        Logger logger = this.logger;
        if (logger != null) {
            logger.debug("Handle response, status: " + badRequestResponse.getStatus() + ", error: " + badRequestResponse.getError());
        }
        String str = (String) events;
        try {
            List<BaseEvent> events2 = JSONUtilKt.toEvents(new JSONArray(eventsString));
            if (events2.size() == 1) {
                triggerEventsCallback(events2, HttpStatus.BAD_REQUEST.getCode(), badRequestResponse.getError());
                this.storage.removeFile(str);
                return;
            }
            Set<Integer> eventIndicesToDrop = badRequestResponse.getEventIndicesToDrop();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            for (Object obj : events2) {
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
                this.eventPipeline.put((BaseEvent) it.next());
            }
            BuildersKt__Builders_commonKt.launch$default(this.scope, this.dispatcher, null, new C10753(str, null), 2, null);
            triggerBackOff(false);
        } catch (JSONException e) {
            this.storage.removeFile(str);
            removeCallbackByInsertId(eventsString);
            throw e;
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.FileResponseHandler$handleBadRequestResponse$3 */
    /* JADX INFO: compiled from: FileResponseHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.FileResponseHandler$handleBadRequestResponse$3", m2735f = "FileResponseHandler.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10753 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventFilePath;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10753(String str, Continuation<? super C10753> continuation) {
            super(2, continuation);
            this.$eventFilePath = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileResponseHandler.this.new C10753(this.$eventFilePath, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10753) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FileResponseHandler.this.storage.removeFile(this.$eventFilePath);
            return Unit.INSTANCE;
        }
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handlePayloadTooLargeResponse(PayloadTooLargeResponse payloadTooLargeResponse, Object events, String eventsString) throws JSONException {
        Intrinsics.checkNotNullParameter(payloadTooLargeResponse, "payloadTooLargeResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        Logger logger = this.logger;
        if (logger != null) {
            logger.debug("Handle response, status: " + payloadTooLargeResponse.getStatus() + ", error: " + payloadTooLargeResponse.getError());
        }
        String str = (String) events;
        try {
            JSONArray jSONArray = new JSONArray(eventsString);
            if (jSONArray.length() != 1) {
                BuildersKt__Builders_commonKt.launch$default(this.scope, this.dispatcher, null, new C10772(str, jSONArray, null), 2, null);
                triggerBackOff(false);
            } else {
                triggerEventsCallback(JSONUtilKt.toEvents(jSONArray), HttpStatus.PAYLOAD_TOO_LARGE.getCode(), payloadTooLargeResponse.getError());
                BuildersKt__Builders_commonKt.launch$default(this.scope, this.dispatcher, null, new C10761(str, null), 2, null);
            }
        } catch (JSONException e) {
            this.storage.removeFile(str);
            removeCallbackByInsertId(eventsString);
            throw e;
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.FileResponseHandler$handlePayloadTooLargeResponse$1 */
    /* JADX INFO: compiled from: FileResponseHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.FileResponseHandler$handlePayloadTooLargeResponse$1", m2735f = "FileResponseHandler.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10761 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventFilePath;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10761(String str, Continuation<? super C10761> continuation) {
            super(2, continuation);
            this.$eventFilePath = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileResponseHandler.this.new C10761(this.$eventFilePath, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10761) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FileResponseHandler.this.storage.removeFile(this.$eventFilePath);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.FileResponseHandler$handlePayloadTooLargeResponse$2 */
    /* JADX INFO: compiled from: FileResponseHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.FileResponseHandler$handlePayloadTooLargeResponse$2", m2735f = "FileResponseHandler.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10772 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $eventFilePath;
        final /* synthetic */ JSONArray $rawEvents;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10772(String str, JSONArray jSONArray, Continuation<? super C10772> continuation) {
            super(2, continuation);
            this.$eventFilePath = str;
            this.$rawEvents = jSONArray;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileResponseHandler.this.new C10772(this.$eventFilePath, this.$rawEvents, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10772) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FileResponseHandler.this.storage.splitEventFile(this.$eventFilePath, this.$rawEvents);
            return Unit.INSTANCE;
        }
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleTooManyRequestsResponse(TooManyRequestsResponse tooManyRequestsResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(tooManyRequestsResponse, "tooManyRequestsResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        Logger logger = this.logger;
        if (logger != null) {
            logger.debug("Handle response, status: " + tooManyRequestsResponse.getStatus() + ", error: " + tooManyRequestsResponse.getError());
        }
        this.storage.releaseFile((String) events);
        triggerBackOff(true);
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleTimeoutResponse(TimeoutResponse timeoutResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(timeoutResponse, "timeoutResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        Logger logger = this.logger;
        if (logger != null) {
            logger.debug(Intrinsics.stringPlus("Handle response, status: ", timeoutResponse.getStatus()));
        }
        this.storage.releaseFile((String) events);
        triggerBackOff(true);
    }

    @Override // com.amplitude.core.utilities.ResponseHandler
    public void handleFailedResponse(FailedResponse failedResponse, Object events, String eventsString) {
        Intrinsics.checkNotNullParameter(failedResponse, "failedResponse");
        Intrinsics.checkNotNullParameter(events, "events");
        Intrinsics.checkNotNullParameter(eventsString, "eventsString");
        Logger logger = this.logger;
        if (logger != null) {
            logger.debug("Handle response, status: " + failedResponse.getStatus() + ", error: " + failedResponse.getError());
        }
        this.storage.releaseFile((String) events);
        triggerBackOff(true);
    }

    private final void triggerEventsCallback(List<? extends BaseEvent> events, int status, String message) {
        Function3<BaseEvent, Integer, String, Unit> eventCallback;
        for (BaseEvent baseEvent : events) {
            Function3<BaseEvent, Integer, String, Unit> callback = this.configuration.getCallback();
            if (callback != null) {
                callback.invoke(baseEvent, Integer.valueOf(status), message);
            }
            String insertId = baseEvent.getInsertId();
            if (insertId != null && (eventCallback = this.storage.getEventCallback(insertId)) != null) {
                eventCallback.invoke(baseEvent, Integer.valueOf(status), message);
                this.storage.removeEventCallback(insertId);
            }
        }
    }

    private final void removeCallbackByInsertId(String eventsString) {
        Iterator it = Regex.findAll$default(new Regex("\"insert_id\":\"(.{36})\","), eventsString, 0, 2, null).iterator();
        while (it.hasNext()) {
            this.storage.removeEventCallback(((MatchResult) it.next()).getGroupValues().get(1));
        }
    }

    static /* synthetic */ void triggerBackOff$default(FileResponseHandler fileResponseHandler, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        fileResponseHandler.triggerBackOff(z);
    }

    private final void triggerBackOff(boolean withSizeUpdate) {
        Logger logger = this.logger;
        if (logger != null) {
            logger.debug("Back off to retry sending events later.");
        }
        this.backoff.set(true);
        if (this.retries.incrementAndGet() <= this.configuration.getFlushMaxRetries()) {
            setCurrentFlushInterval(this.currentFlushInterval * ((long) 2));
            if (withSizeUpdate) {
                setCurrentFlushQueueSize(RangesKt.coerceAtMost(this.currentFlushQueueSize * 2, this.maxQueueSize));
                return;
            }
            return;
        }
        this.eventPipeline.setExceededRetries(true);
        Logger logger2 = this.logger;
        if (logger2 != null) {
            logger2.debug("Max retries " + this.configuration.getFlushMaxRetries() + " exceeded, temporarily stop scheduling new events sending out.");
        }
        BuildersKt__Builders_commonKt.launch$default(this.scope, this.dispatcher, null, new C10791(null), 2, null);
    }

    /* JADX INFO: renamed from: com.amplitude.core.utilities.FileResponseHandler$triggerBackOff$1 */
    /* JADX INFO: compiled from: FileResponseHandler.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.utilities.FileResponseHandler$triggerBackOff$1", m2735f = "FileResponseHandler.kt", m2736i = {}, m2737l = {Opcodes.DRETURN}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10791 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C10791(Continuation<? super C10791> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileResponseHandler.this.new C10791(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10791) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(FileResponseHandler.this.currentFlushInterval * ((long) 2), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            FileResponseHandler.this.eventPipeline.setExceededRetries(false);
            Logger logger = FileResponseHandler.this.logger;
            if (logger != null) {
                logger.debug("Enable sending requests again.");
            }
            return Unit.INSTANCE;
        }
    }

    private final void resetBackOff() {
        if (this.backoff.get()) {
            this.backoff.set(false);
            this.retries.getAndSet(0);
            setCurrentFlushInterval(this.configuration.getFlushIntervalMillis());
            setCurrentFlushQueueSize(this.configuration.getFlushQueueSize());
            this.eventPipeline.setExceededRetries(false);
        }
    }
}
