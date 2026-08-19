package com.amplitude.android;

import com.amplitude.core.Storage;
import com.amplitude.core.events.BaseEvent;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.svg.SvgConstants;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ReceiveChannel;

/* JADX INFO: compiled from: Timeline.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u001c\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0017\u001a\u00020\u0006H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0003H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0019\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u000bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\"J\u0019\u0010#\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\"J\r\u0010$\u001a\u00020\u001bH\u0000¢\u0006\u0002\b%J\u001f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001d0'2\u0006\u0010\u0019\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\"J!\u0010(\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010'2\u0006\u0010\u0019\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\"J\r\u0010)\u001a\u00020\u001bH\u0000¢\u0006\u0002\b*R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u001a\u0010\r\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0015\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, m2722d2 = {"Lcom/amplitude/android/Timeline;", "Lcom/amplitude/core/platform/Timeline;", "initialSessionId", "", "(Ljava/lang/Long;)V", "_foreground", "", "_sessionId", "Ljava/util/concurrent/atomic/AtomicLong;", "eventMessageChannel", "Lkotlinx/coroutines/channels/Channel;", "Lcom/amplitude/android/EventQueueMessage;", "Ljava/lang/Long;", "lastEventId", "getLastEventId$android_release", "()J", "setLastEventId$android_release", "(J)V", "lastEventTime", "getLastEventTime", "setLastEventTime", "sessionId", "getSessionId", "inSession", "isWithinMinTimeBetweenSessions", SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, "process", "", "incomingEvent", "Lcom/amplitude/core/events/BaseEvent;", "processEventMessage", "message", "(Lcom/amplitude/android/EventQueueMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshSessionTime", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setSessionId", "start", "start$android_release", "startNewSession", "", "startNewSessionIfNeeded", SvgConstants.Tags.STOP, "stop$android_release", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Timeline extends com.amplitude.core.platform.Timeline {
    private boolean _foreground;
    private final AtomicLong _sessionId;
    private final Channel<EventQueueMessage> eventMessageChannel;
    private final Long initialSessionId;
    private long lastEventId;
    private long lastEventTime;

    /* JADX INFO: renamed from: com.amplitude.android.Timeline$processEventMessage$1 */
    /* JADX INFO: compiled from: Timeline.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.Timeline", m2735f = "Timeline.kt", m2736i = {0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6}, m2737l = {65, 66, 71, 75, 79, 81, 110}, m2738m = "processEventMessage", m2739n = {"this", "event", "eventTimestamp", "skipEvent", "this", "event", "skipEvent", "this", "event", "skipEvent", "this", "event", "skipEvent", "this", "event", "skipEvent", "this", "event", "skipEvent", "this", "event", "sessionEvents", "skipEvent"}, m2740s = {"L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "L$2", "I$0"})
    static final class C10301 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C10301(Continuation<? super C10301> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Timeline.this.processEventMessage(null, this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.Timeline$startNewSession$1 */
    /* JADX INFO: compiled from: Timeline.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.Timeline", m2735f = "Timeline.kt", m2736i = {0, 0, 0, 0, 1, 1, 1, 1}, m2737l = {154, 155}, m2738m = "startNewSession", m2739n = {"this", "sessionEvents", SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, "trackingSessionEvents", "this", "sessionEvents", SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, "trackingSessionEvents"}, m2740s = {"L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "J$0", "I$0"})
    static final class C10311 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C10311(Continuation<? super C10311> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Timeline.this.startNewSession(0L, this);
        }
    }

    /* JADX INFO: renamed from: com.amplitude.android.Timeline$startNewSessionIfNeeded$1 */
    /* JADX INFO: compiled from: Timeline.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.android.Timeline", m2735f = "Timeline.kt", m2736i = {}, m2737l = {126, 129}, m2738m = "startNewSessionIfNeeded", m2739n = {}, m2740s = {})
    static final class C10321 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C10321(Continuation<? super C10321> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Timeline.this.startNewSessionIfNeeded(0L, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Timeline() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ Timeline(Long l, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : l);
    }

    public Timeline(Long l) {
        this.initialSessionId = l;
        this.eventMessageChannel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        this._sessionId = new AtomicLong(l == null ? -1L : l.longValue());
        this.lastEventTime = -1L;
    }

    public final long getSessionId() {
        return this._sessionId.get();
    }

    /* JADX INFO: renamed from: getLastEventId$android_release, reason: from getter */
    public final long getLastEventId() {
        return this.lastEventId;
    }

    public final void setLastEventId$android_release(long j) {
        this.lastEventId = j;
    }

    public final long getLastEventTime() {
        return this.lastEventTime;
    }

    public final void setLastEventTime(long j) {
        this.lastEventTime = j;
    }

    public final void start$android_release() {
        BuildersKt__Builders_commonKt.launch$default(getAmplitude().getAmplitudeScope(), getAmplitude().getStorageIODispatcher(), null, new Timeline$start$1(this, null), 2, null);
    }

    public final void stop$android_release() {
        ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) this.eventMessageChannel, (CancellationException) null, 1, (Object) null);
    }

    @Override // com.amplitude.core.platform.Timeline
    public void process(BaseEvent incomingEvent) {
        Intrinsics.checkNotNullParameter(incomingEvent, "incomingEvent");
        if (incomingEvent.getTimestamp() == null) {
            incomingEvent.setTimestamp(Long.valueOf(System.currentTimeMillis()));
        }
        this.eventMessageChannel.mo4818trySendJP2dKIU(new EventQueueMessage(incomingEvent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0230  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processEventMessage(com.amplitude.android.EventQueueMessage r18, kotlin.coroutines.Continuation<? super kotlin.Unit> r19) {
        /*
            Method dump skipped, instruction units count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.Timeline.processEventMessage(com.amplitude.android.EventQueueMessage, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startNewSessionIfNeeded(long r6, kotlin.coroutines.Continuation<? super java.lang.Iterable<? extends com.amplitude.core.events.BaseEvent>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.amplitude.android.Timeline.C10321
            if (r0 == 0) goto L14
            r0 = r8
            com.amplitude.android.Timeline$startNewSessionIfNeeded$1 r0 = (com.amplitude.android.Timeline.C10321) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.amplitude.android.Timeline$startNewSessionIfNeeded$1 r0 = new com.amplitude.android.Timeline$startNewSessionIfNeeded$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5c
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L51
        L39:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r8 = r5.inSession()
            if (r8 == 0) goto L53
            boolean r8 = r5.isWithinMinTimeBetweenSessions(r6)
            if (r8 == 0) goto L53
            r0.label = r4
            java.lang.Object r6 = r5.refreshSessionTime(r6, r0)
            if (r6 != r1) goto L51
            return r1
        L51:
            r6 = 0
            return r6
        L53:
            r0.label = r3
            java.lang.Object r8 = r5.startNewSession(r6, r0)
            if (r8 != r1) goto L5c
            return r1
        L5c:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.Timeline.startNewSessionIfNeeded(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setSessionId(long j, Continuation<? super Unit> continuation) {
        this._sessionId.set(j);
        Object objWrite = getAmplitude().getStorage().write(Storage.Constants.PREVIOUS_SESSION_ID, String.valueOf(getSessionId()), continuation);
        return objWrite == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWrite : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startNewSession(long r13, kotlin.coroutines.Continuation<? super java.lang.Iterable<? extends com.amplitude.core.events.BaseEvent>> r15) {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amplitude.android.Timeline.startNewSession(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object refreshSessionTime(long j, Continuation<? super Unit> continuation) {
        if (!inSession()) {
            return Unit.INSTANCE;
        }
        setLastEventTime(j);
        Object objWrite = getAmplitude().getStorage().write(Storage.Constants.LAST_EVENT_TIME, String.valueOf(getLastEventTime()), continuation);
        return objWrite == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWrite : Unit.INSTANCE;
    }

    private final boolean isWithinMinTimeBetweenSessions(long timestamp) {
        return timestamp - this.lastEventTime < ((Configuration) getAmplitude().getConfiguration()).getMinTimeBetweenSessionsMillis();
    }

    private final boolean inSession() {
        return getSessionId() >= 0;
    }
}
