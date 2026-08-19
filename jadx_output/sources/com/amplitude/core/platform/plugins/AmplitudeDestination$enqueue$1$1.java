package com.amplitude.core.platform.plugins;

import com.amplitude.core.events.BaseEvent;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AmplitudeDestination.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
@DebugMetadata(m2734c = "com.amplitude.core.platform.plugins.AmplitudeDestination$enqueue$1$1", m2735f = "AmplitudeDestination.kt", m2736i = {}, m2737l = {51}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class AmplitudeDestination$enqueue$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BaseEvent $event;
    int label;
    final /* synthetic */ AmplitudeDestination this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AmplitudeDestination$enqueue$1$1(AmplitudeDestination amplitudeDestination, BaseEvent baseEvent, Continuation<? super AmplitudeDestination$enqueue$1$1> continuation) {
        super(2, continuation);
        this.this$0 = amplitudeDestination;
        this.$event = baseEvent;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AmplitudeDestination$enqueue$1$1(this.this$0, this.$event, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AmplitudeDestination$enqueue$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            IdentifyInterceptor identifyInterceptor = this.this$0.identifyInterceptor;
            if (identifyInterceptor == null) {
                Intrinsics.throwUninitializedPropertyAccessException("identifyInterceptor");
                identifyInterceptor = null;
            }
            this.label = 1;
            obj = identifyInterceptor.intercept(this.$event, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        BaseEvent baseEvent = (BaseEvent) obj;
        if (baseEvent != null) {
            this.this$0.enqueuePipeline(baseEvent);
        }
        return Unit.INSTANCE;
    }
}
