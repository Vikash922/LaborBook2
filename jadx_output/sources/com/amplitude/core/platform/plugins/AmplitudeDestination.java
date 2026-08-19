package com.amplitude.core.platform.plugins;

import com.amplitude.core.Amplitude;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.GroupIdentifyEvent;
import com.amplitude.core.events.IdentifyEvent;
import com.amplitude.core.events.RevenueEvent;
import com.amplitude.core.platform.DestinationPlugin;
import com.amplitude.core.platform.EventPipeline;
import com.amplitude.core.platform.intercept.IdentifyInterceptor;
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

/* JADX INFO: compiled from: AmplitudeDestination.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\nJ\b\u0010\r\u001a\u00020\bH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\t\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m2722d2 = {"Lcom/amplitude/core/platform/plugins/AmplitudeDestination;", "Lcom/amplitude/core/platform/DestinationPlugin;", "()V", "identifyInterceptor", "Lcom/amplitude/core/platform/intercept/IdentifyInterceptor;", "pipeline", "Lcom/amplitude/core/platform/EventPipeline;", "enqueue", "", "payload", "Lcom/amplitude/core/events/BaseEvent;", "enqueuePipeline", "event", "flush", "groupIdentify", "Lcom/amplitude/core/events/GroupIdentifyEvent;", "identify", "Lcom/amplitude/core/events/IdentifyEvent;", "revenue", "Lcom/amplitude/core/events/RevenueEvent;", "setup", "amplitude", "Lcom/amplitude/core/Amplitude;", "track", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AmplitudeDestination extends DestinationPlugin {
    private IdentifyInterceptor identifyInterceptor;
    private EventPipeline pipeline;

    @Override // com.amplitude.core.platform.EventPlugin
    public BaseEvent track(BaseEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        enqueue(payload);
        return payload;
    }

    @Override // com.amplitude.core.platform.EventPlugin
    public IdentifyEvent identify(IdentifyEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        enqueue(payload);
        return payload;
    }

    @Override // com.amplitude.core.platform.EventPlugin
    public GroupIdentifyEvent groupIdentify(GroupIdentifyEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        enqueue(payload);
        return payload;
    }

    @Override // com.amplitude.core.platform.EventPlugin
    public RevenueEvent revenue(RevenueEvent payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        enqueue(payload);
        return payload;
    }

    /* JADX INFO: renamed from: com.amplitude.core.platform.plugins.AmplitudeDestination$flush$1 */
    /* JADX INFO: compiled from: AmplitudeDestination.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.amplitude.core.platform.plugins.AmplitudeDestination$flush$1", m2735f = "AmplitudeDestination.kt", m2736i = {}, m2737l = {39}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C10691 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C10691(Continuation<? super C10691> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AmplitudeDestination.this.new C10691(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C10691) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            EventPipeline eventPipeline = null;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                IdentifyInterceptor identifyInterceptor = AmplitudeDestination.this.identifyInterceptor;
                if (identifyInterceptor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("identifyInterceptor");
                    identifyInterceptor = null;
                }
                this.label = 1;
                if (identifyInterceptor.transferInterceptedIdentify(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            EventPipeline eventPipeline2 = AmplitudeDestination.this.pipeline;
            if (eventPipeline2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pipeline");
            } else {
                eventPipeline = eventPipeline2;
            }
            eventPipeline.flush();
            return Unit.INSTANCE;
        }
    }

    @Override // com.amplitude.core.platform.EventPlugin
    public void flush() {
        BuildersKt__Builders_commonKt.launch$default(getAmplitude().getAmplitudeScope(), getAmplitude().getStorageIODispatcher(), null, new C10691(null), 2, null);
    }

    private final void enqueue(BaseEvent payload) {
        if (payload == null) {
            return;
        }
        if (payload.isValid()) {
            BuildersKt__Builders_commonKt.launch$default(getAmplitude().getAmplitudeScope(), getAmplitude().getStorageIODispatcher(), null, new AmplitudeDestination$enqueue$1$1(this, payload, null), 2, null);
        } else {
            getAmplitude().getLogger().warn(Intrinsics.stringPlus("Event is invalid for missing information like userId and deviceId. Dropping event: ", payload.getEventType()));
        }
    }

    public final void enqueuePipeline(BaseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventPipeline eventPipeline = this.pipeline;
        if (eventPipeline == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pipeline");
            eventPipeline = null;
        }
        eventPipeline.put(event);
    }

    @Override // com.amplitude.core.platform.DestinationPlugin, com.amplitude.core.platform.Plugin
    public void setup(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        super.setup(amplitude);
        EventPipeline eventPipeline = new EventPipeline(amplitude);
        this.pipeline = eventPipeline;
        eventPipeline.start();
        this.identifyInterceptor = new IdentifyInterceptor(amplitude.getIdentifyInterceptStorage(), amplitude, amplitude.getLogger(), amplitude.getConfiguration(), this);
        add(new IdentityEventSender());
    }
}
