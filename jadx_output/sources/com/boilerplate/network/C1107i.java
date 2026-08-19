package com.boilerplate.network;

import com.boilerplate.network.model.NetworkResult;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: com.boilerplate.network.i */
/* JADX INFO: loaded from: classes.dex */
public final class C1107i extends SuspendLambda implements Function2 {
    final /* synthetic */ NetworkResult<Object> $it1;
    int label;
    final /* synthetic */ NetworkResource<Object> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1107i(NetworkResource<Object> networkResource, NetworkResult<Object> networkResult, Continuation<? super C1107i> continuation) {
        super(2, continuation);
        this.this$0 = networkResource;
        this.$it1 = networkResult;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C1107i(this.this$0, this.$it1, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Function2 function2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            NetworkResource<Object> networkResource = this.this$0;
            this.label = 1;
            if (networkResource.cleanup(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        Object data = this.$it1.getData();
        if (data == null || (function2 = ((NetworkResource) this.this$0).localStore) == null) {
            return null;
        }
        this.label = 2;
        if (function2.invoke(data, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C1107i) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
