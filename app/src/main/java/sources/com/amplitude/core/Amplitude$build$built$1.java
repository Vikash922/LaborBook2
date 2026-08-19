package com.amplitude.core;

import com.amplitude.p009id.IdentityConfiguration;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Amplitude.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
@DebugMetadata(m2734c = "com.amplitude.core.Amplitude$build$built$1", m2735f = "Amplitude.kt", m2736i = {}, m2737l = {114}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class Amplitude$build$built$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ Amplitude $amplitude;
    int label;
    final /* synthetic */ Amplitude this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Amplitude$build$built$1(Amplitude amplitude, Amplitude amplitude2, Continuation<? super Amplitude$build$built$1> continuation) {
        super(2, continuation);
        this.this$0 = amplitude;
        this.$amplitude = amplitude2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Amplitude$build$built$1(this.this$0, this.$amplitude, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((Amplitude$build$built$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Amplitude amplitude = this.this$0;
            amplitude.storage = StorageProvider.getStorage$default(amplitude.getConfiguration().getStorageProvider(), this.$amplitude, null, 2, null);
            Amplitude amplitude2 = this.this$0;
            amplitude2.identifyInterceptStorage = amplitude2.getConfiguration().getIdentifyInterceptStorageProvider().getStorage(this.$amplitude, "amplitude-identify-intercept");
            IdentityConfiguration identityConfigurationCreateIdentityConfiguration = this.this$0.createIdentityConfiguration();
            Amplitude amplitude3 = this.this$0;
            amplitude3.identityStorage = amplitude3.getConfiguration().getIdentityStorageProvider().getIdentityStorage(identityConfigurationCreateIdentityConfiguration);
            this.label = 1;
            if (this.$amplitude.buildInternal(identityConfigurationCreateIdentityConfiguration, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(true);
    }
}
