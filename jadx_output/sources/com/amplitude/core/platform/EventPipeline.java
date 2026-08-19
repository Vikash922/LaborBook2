package com.amplitude.core.platform;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.core.Amplitude;
import com.amplitude.core.Storage;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.utilities.HttpClient;
import com.amplitude.core.utilities.ResponseHandler;
import com.itextpdf.svg.SvgConstants;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: EventPipeline.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 D2\u00020\u0001:\u0001DB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u00106\u001a\u000207J\b\u00108\u001a\u00020\u0014H\u0002J\b\u00109\u001a\u00020\u000eH\u0002J\u000e\u0010:\u001a\u0002072\u0006\u0010;\u001a\u00020<J\b\u0010=\u001a\u000207H\u0002J\b\u0010>\u001a\u00020?H\u0002J\u0006\u0010@\u001a\u000207J\u0006\u0010A\u001a\u000207J\b\u0010B\u001a\u00020?H\u0002J\b\u0010C\u001a\u00020?H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010 \u001a\u00020!¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u001e\u0010%\u001a\u00020\b2\u0006\u0010$\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\nR\u001e\u0010'\u001a\u00020\b2\u0006\u0010$\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\nR\u0014\u0010)\u001a\u00020*8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020.8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u00101\u001a\b\u0012\u0004\u0012\u00020302X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00104\u001a\b\u0012\u0004\u0012\u00020502X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006E"}, m2722d2 = {"Lcom/amplitude/core/platform/EventPipeline;", "", "amplitude", "Lcom/amplitude/core/Amplitude;", "(Lcom/amplitude/core/Amplitude;)V", "eventCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "exceededRetries", "", "getExceededRetries", "()Z", "setExceededRetries", "(Z)V", "flushInterval", "", "getFlushInterval", "()J", "setFlushInterval", "(J)V", "flushQueueSize", "", "getFlushQueueSize", "()I", "setFlushQueueSize", "(I)V", "flushSizeDivider", "getFlushSizeDivider", "()Ljava/util/concurrent/atomic/AtomicInteger;", "setFlushSizeDivider", "(Ljava/util/concurrent/atomic/AtomicInteger;)V", "httpClient", "Lcom/amplitude/core/utilities/HttpClient;", "responseHandler", "Lcom/amplitude/core/utilities/ResponseHandler;", "getResponseHandler", "()Lcom/amplitude/core/utilities/ResponseHandler;", "<set-?>", "running", "getRunning", "scheduled", "getScheduled", "scope", "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "storage", "Lcom/amplitude/core/Storage;", "getStorage", "()Lcom/amplitude/core/Storage;", "uploadChannel", "Lkotlinx/coroutines/channels/Channel;", "", "writeChannel", "Lcom/amplitude/core/platform/WriteQueueMessage;", "flush", "", "getFlushCount", "getFlushIntervalInMillis", "put", "event", "Lcom/amplitude/core/events/BaseEvent;", "registerShutdownHook", "schedule", "Lkotlinx/coroutines/Job;", "start", SvgConstants.Tags.STOP, "upload", "write", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class EventPipeline {
    public static final String UPLOAD_SIG = "#!upload";
    private final Amplitude amplitude;
    private final AtomicInteger eventCount;
    private boolean exceededRetries;
    private long flushInterval;
    private int flushQueueSize;
    private AtomicInteger flushSizeDivider;
    private final HttpClient httpClient;
    private final ResponseHandler responseHandler;
    private boolean running;
    private boolean scheduled;
    private final Channel<String> uploadChannel;
    private final Channel<WriteQueueMessage> writeChannel;

    public EventPipeline(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        this.amplitude = amplitude;
        this.eventCount = new AtomicInteger(0);
        this.httpClient = new HttpClient(amplitude.getConfiguration());
        this.flushInterval = amplitude.getConfiguration().getFlushIntervalMillis();
        this.flushQueueSize = amplitude.getConfiguration().getFlushQueueSize();
        this.flushSizeDivider = new AtomicInteger(1);
        this.running = false;
        this.scheduled = false;
        this.writeChannel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this.uploadChannel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        registerShutdownHook();
        this.responseHandler = getStorage().getResponseHandler(this, amplitude.getConfiguration(), getScope(), amplitude.getRetryDispatcher());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Storage getStorage() {
        return this.amplitude.getStorage();
    }

    private final CoroutineScope getScope() {
        return this.amplitude.getAmplitudeScope();
    }

    public final long getFlushInterval() {
        return this.flushInterval;
    }

    public final void setFlushInterval(long j) {
        this.flushInterval = j;
    }

    public final int getFlushQueueSize() {
        return this.flushQueueSize;
    }

    public final void setFlushQueueSize(int i) {
        this.flushQueueSize = i;
    }

    public final boolean getRunning() {
        return this.running;
    }

    public final boolean getScheduled() {
        return this.scheduled;
    }

    public final AtomicInteger getFlushSizeDivider() {
        return this.flushSizeDivider;
    }

    public final void setFlushSizeDivider(AtomicInteger atomicInteger) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<set-?>");
        this.flushSizeDivider = atomicInteger;
    }

    public final boolean getExceededRetries() {
        return this.exceededRetries;
    }

    public final void setExceededRetries(boolean z) {
        this.exceededRetries = z;
    }

    public final ResponseHandler getResponseHandler() {
        return this.responseHandler;
    }

    public final void put(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        event.setAttempts$core(event.getAttempts() + 1);
        this.writeChannel.mo4818trySendJP2dKIU(new WriteQueueMessage(WriteQueueMessageType.EVENT, event));
    }

    public final void flush() {
        this.writeChannel.mo4818trySendJP2dKIU(new WriteQueueMessage(WriteQueueMessageType.FLUSH, null));
    }

    public final void start() {
        this.running = true;
        write();
        upload();
    }

    public final void stop() {
        ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) this.uploadChannel, (CancellationException) null, 1, (Object) null);
        ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) this.writeChannel, (CancellationException) null, 1, (Object) null);
        this.running = false;
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.EventPipeline$write$1 */
    /* JADX INFO: compiled from: EventPipeline.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.EventPipeline$write$1", m2735f = "EventPipeline.kt", m2736i = {1}, m2737l = {93, 98}, m2738m = "invokeSuspend", m2739n = {"triggerFlush"}, m2740s = {"I$0"})
    static final class C10611 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int I$0;
        Object L$0;
        int label;

        C10611(Continuation<? super C10611> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EventPipeline.this.new C10611(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10611) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0048 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0085 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00e1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x006a -> B:32:0x0095). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0083 -> B:32:0x0095). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0086 -> B:32:0x0095). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                Method dump skipped, instruction units count: 228
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.platform.EventPipeline.C10611.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Job write() {
        return BuildersKt__Builders_commonKt.launch$default(getScope(), this.amplitude.getStorageIODispatcher(), null, new C10611(null), 2, null);
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.EventPipeline$upload$1 */
    /* JADX INFO: compiled from: EventPipeline.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.EventPipeline$upload$1", m2735f = "EventPipeline.kt", m2736i = {0, 1, 2, 2}, m2737l = {205, 122, 135}, m2738m = "invokeSuspend", m2739n = {"$this$consume$iv$iv", "$this$consume$iv$iv", "$this$consume$iv$iv", DatabaseConstants.EVENT_TABLE_NAME}, m2740s = {"L$1", "L$1", "L$1", "L$4"})
    static final class C10601 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        C10601(Continuation<? super C10601> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EventPipeline.this.new C10601(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10601) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x008c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0098 A[Catch: all -> 0x017d, TryCatch #6 {all -> 0x017d, blocks: (B:8:0x0024, B:35:0x00d0, B:37:0x00d6, B:38:0x00da, B:59:0x0145, B:62:0x0157, B:65:0x015e, B:24:0x007a, B:28:0x0090, B:30:0x0098, B:34:0x00c0, B:68:0x0175, B:17:0x004e, B:20:0x0061, B:23:0x0075), top: B:76:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00d6 A[Catch: all -> 0x017d, TRY_LEAVE, TryCatch #6 {all -> 0x017d, blocks: (B:8:0x0024, B:35:0x00d0, B:37:0x00d6, B:38:0x00da, B:59:0x0145, B:62:0x0157, B:65:0x015e, B:24:0x007a, B:28:0x0090, B:30:0x0098, B:34:0x00c0, B:68:0x0175, B:17:0x004e, B:20:0x0061, B:23:0x0075), top: B:76:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0104 A[Catch: all -> 0x0134, Exception -> 0x0137, FileNotFoundException -> 0x013c, TryCatch #6 {FileNotFoundException -> 0x013c, Exception -> 0x0137, all -> 0x0134, blocks: (B:42:0x00f8, B:45:0x0104, B:49:0x0124, B:48:0x0113), top: B:84:0x00f8 }] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x015d  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x015e A[Catch: all -> 0x017d, TryCatch #6 {all -> 0x017d, blocks: (B:8:0x0024, B:35:0x00d0, B:37:0x00d6, B:38:0x00da, B:59:0x0145, B:62:0x0157, B:65:0x015e, B:24:0x007a, B:28:0x0090, B:30:0x0098, B:34:0x00c0, B:68:0x0175, B:17:0x004e, B:20:0x0061, B:23:0x0075), top: B:76:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0172  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0175 A[Catch: all -> 0x017d, TRY_LEAVE, TryCatch #6 {all -> 0x017d, blocks: (B:8:0x0024, B:35:0x00d0, B:37:0x00d6, B:38:0x00da, B:59:0x0145, B:62:0x0157, B:65:0x015e, B:24:0x007a, B:28:0x0090, B:30:0x0098, B:34:0x00c0, B:68:0x0175, B:17:0x004e, B:20:0x0061, B:23:0x0075), top: B:76:0x000a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00f1 -> B:84:0x00f8). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x016f -> B:35:0x00d0). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instruction units count: 388
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amplitude.core.platform.EventPipeline.C10601.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Job upload() {
        return BuildersKt__Builders_commonKt.launch$default(getScope(), this.amplitude.getNetworkIODispatcher(), null, new C10601(null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getFlushCount() {
        Integer numValueOf = Integer.valueOf(this.flushQueueSize / this.flushSizeDivider.get());
        if (numValueOf.intValue() == 0) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            return 1;
        }
        return numValueOf.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getFlushIntervalInMillis, reason: from getter */
    public final long getFlushInterval() {
        return this.flushInterval;
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.EventPipeline$schedule$1 */
    /* JADX INFO: compiled from: EventPipeline.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.EventPipeline$schedule$1", m2735f = "EventPipeline.kt", m2736i = {}, m2737l = {Opcodes.TABLESWITCH}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C10591(Continuation<? super C10591> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10591 c10591 = EventPipeline.this.new C10591(continuation);
            c10591.L$0 = obj;
            return c10591;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (CoroutineScopeKt.isActive((CoroutineScope) this.L$0) && EventPipeline.this.getRunning() && !EventPipeline.this.getScheduled() && !EventPipeline.this.getExceededRetries()) {
                    EventPipeline.this.scheduled = true;
                    this.label = 1;
                    if (DelayKt.delay(EventPipeline.this.getFlushInterval(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            EventPipeline.this.flush();
            EventPipeline.this.scheduled = false;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Job schedule() {
        return BuildersKt__Builders_commonKt.launch$default(getScope(), this.amplitude.getStorageIODispatcher(), null, new C10591(null), 2, null);
    }

    private final void registerShutdownHook() {
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: com.amplitude.core.platform.EventPipeline.registerShutdownHook.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                EventPipeline.this.stop();
            }
        });
    }
}
