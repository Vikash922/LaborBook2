package tech.thdev.network.flowcalladapterfactory.internal;

import androidx.core.app.NotificationCompat;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import retrofit2.Call;
import retrofit2.CallAdapter;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: compiled from: ResponseCallAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00040\u00030\u0002B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m2722d2 = {"Ltech/thdev/network/flowcalladapterfactory/internal/ResponseCallAdapter;", "T", "Lretrofit2/CallAdapter;", "Lkotlinx/coroutines/flow/Flow;", "Lretrofit2/Response;", "responseType", "Ljava/lang/reflect/Type;", "(Ljava/lang/reflect/Type;)V", "adapt", NotificationCompat.CATEGORY_CALL, "Lretrofit2/Call;", "flow-call-adapter-factory_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ResponseCallAdapter<T> implements CallAdapter<T, Flow<? extends Response<T>>> {
    private final Type responseType;

    public ResponseCallAdapter(Type responseType) {
        Intrinsics.checkNotNullParameter(responseType, "responseType");
        this.responseType = responseType;
    }

    @Override // retrofit2.CallAdapter
    /* JADX INFO: renamed from: responseType, reason: from getter */
    public Type getResponseType() {
        return this.responseType;
    }

    /* JADX INFO: renamed from: tech.thdev.network.flowcalladapterfactory.internal.ResponseCallAdapter$adapt$1 */
    /* JADX INFO: compiled from: ResponseCallAdapter.kt */
    @Metadata(m2721d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"}, m2722d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "Lretrofit2/Response;"}, m2723k = 3, m2724mv = {1, 5, 1}, m2726xi = 48)
    @DebugMetadata(m2734c = "tech.thdev.network.flowcalladapterfactory.internal.ResponseCallAdapter$adapt$1", m2735f = "ResponseCallAdapter.kt", m2736i = {}, m2737l = {37, 22}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C49261 extends SuspendLambda implements Function2<FlowCollector<? super Response<T>>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Call<T> $call;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C49261(Call<T> call, Continuation<? super C49261> continuation) {
            super(2, continuation);
            this.$call = call;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C49261 c49261 = new C49261(this.$call, continuation);
            c49261.L$0 = obj;
            return c49261;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super Response<T>> flowCollector, Continuation<? super Unit> continuation) {
            return ((C49261) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                flowCollector = (FlowCollector) this.L$0;
                Call<T> call = this.$call;
                this.L$0 = call;
                this.L$1 = flowCollector;
                this.label = 1;
                C49261 c49261 = this;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(c49261), 1);
                cancellableContinuationImpl.initCancellability();
                final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                InternalUtilKt.registerCallback(call, cancellableContinuationImpl2, new Function1<Response<T>, Unit>() { // from class: tech.thdev.network.flowcalladapterfactory.internal.ResponseCallAdapter$adapt$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                        invoke((Response) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Response<T> response) {
                        Object objM3325constructorimpl;
                        Intrinsics.checkNotNullParameter(response, "response");
                        CancellableContinuation<Response<T>> cancellableContinuation = cancellableContinuationImpl2;
                        try {
                            Result.Companion companion = Result.INSTANCE;
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM3325constructorimpl = Result.m3325constructorimpl(ResultKt.createFailure(th));
                        }
                        if (response.isSuccessful()) {
                            objM3325constructorimpl = Result.m3325constructorimpl(response);
                            cancellableContinuation.resumeWith(objM3325constructorimpl);
                            return;
                        }
                        throw new HttpException(response);
                    }
                });
                InternalUtilKt.registerOnCancellation(call, cancellableContinuationImpl2);
                obj = cancellableContinuationImpl.getResult();
                if (obj == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(c49261);
                }
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                flowCollector = (FlowCollector) this.L$1;
                ResultKt.throwOnFailure(obj);
            }
            this.L$0 = null;
            this.L$1 = null;
            this.label = 2;
            if (flowCollector.emit(obj, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    @Override // retrofit2.CallAdapter
    public Flow<Response<T>> adapt(Call<T> call) {
        Intrinsics.checkNotNullParameter(call, "call");
        return FlowKt.flow(new C49261(call, null));
    }
}
