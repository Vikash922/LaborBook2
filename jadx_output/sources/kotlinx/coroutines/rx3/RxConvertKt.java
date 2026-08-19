package kotlinx.coroutines.rx3;

import androidx.lifecycle.LifecycleKt$$ExternalSyntheticBackportWithForwarding0;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.reactive.ReactiveFlowKt;

/* JADX INFO: compiled from: RxConvert.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a1\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0007\u001a1\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\t\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0007\u001a\u0012\u0010\n\u001a\u00020\u000b*\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006\u001a \u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u000e\u001a*\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u001a+\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\b\u0002H\u00020\u0011\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006ø\u0001\u0000\u001a*\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\t\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u001a(\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0015\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006\u0082\u0002\u0004\n\u0002\b9¨\u0006\u0016"}, m2722d2 = {"_asFlowable", "Lio/reactivex/rxjava3/core/Flowable;", "T", "", "Lkotlinx/coroutines/flow/Flow;", "context", "Lkotlin/coroutines/CoroutineContext;", "from", "_asObservable", "Lio/reactivex/rxjava3/core/Observable;", "asCompletable", "Lio/reactivex/rxjava3/core/Completable;", "Lkotlinx/coroutines/Job;", "asFlow", "Lio/reactivex/rxjava3/core/ObservableSource;", "asFlowable", "asMaybe", "Lio/reactivex/rxjava3/core/Maybe;", "Lkotlinx/coroutines/Deferred;", "asObservable", "asSingle", "Lio/reactivex/rxjava3/core/Single;", "kotlinx-coroutines-rx3"}, m2723k = 2, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class RxConvertKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.rx3.RxConvertKt$asCompletable$1 */
    /* JADX INFO: compiled from: RxConvert.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "kotlinx.coroutines.rx3.RxConvertKt$asCompletable$1", m2735f = "RxConvert.kt", m2736i = {}, m2737l = {26}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C43041 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Job $this_asCompletable;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C43041(Job job, Continuation<? super C43041> continuation) {
            super(2, continuation);
            this.$this_asCompletable = job;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C43041(this.$this_asCompletable, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C43041) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$this_asCompletable.join(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static final Completable asCompletable(Job job, CoroutineContext coroutineContext) {
        return RxCompletableKt.rxCompletable(coroutineContext, new C43041(job, null));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlinx.coroutines.rx3.RxConvertKt$asMaybe$1 */
    /* JADX INFO: compiled from: RxConvert.kt */
    @Metadata(m2721d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "kotlinx.coroutines.rx3.RxConvertKt$asMaybe$1", m2735f = "RxConvert.kt", m2736i = {}, m2737l = {42}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C43061<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Deferred<T> $this_asMaybe;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C43061(Deferred<? extends T> deferred, Continuation<? super C43061> continuation) {
            super(2, continuation);
            this.$this_asMaybe = deferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C43061(this.$this_asMaybe, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C43061) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$this_asMaybe.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public static final <T> Maybe<T> asMaybe(Deferred<? extends T> deferred, CoroutineContext coroutineContext) {
        return RxMaybeKt.rxMaybe(coroutineContext, new C43061(deferred, null));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlinx.coroutines.rx3.RxConvertKt$asSingle$1 */
    /* JADX INFO: compiled from: RxConvert.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u0003H\u008a@"}, m2722d2 = {"<anonymous>", "T", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "kotlinx.coroutines.rx3.RxConvertKt$asSingle$1", m2735f = "RxConvert.kt", m2736i = {}, m2737l = {58}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C43081<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Deferred<T> $this_asSingle;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C43081(Deferred<? extends T> deferred, Continuation<? super C43081> continuation) {
            super(2, continuation);
            this.$this_asSingle = deferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C43081(this.$this_asSingle, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C43081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = this.$this_asSingle.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public static final <T> Single<T> asSingle(Deferred<? extends T> deferred, CoroutineContext coroutineContext) {
        return RxSingleKt.rxSingle(coroutineContext, new C43081(deferred, null));
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlinx.coroutines.rx3.RxConvertKt$asFlow$1 */
    /* JADX INFO: compiled from: RxConvert.kt */
    @Metadata(m2721d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, m2722d2 = {"<anonymous>", "", "T", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "kotlinx.coroutines.rx3.RxConvertKt$asFlow$1", m2735f = "RxConvert.kt", m2736i = {}, m2737l = {91}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C43051<T> extends SuspendLambda implements Function2<ProducerScope<? super T>, Continuation<? super Unit>, Object> {
        final /* synthetic */ ObservableSource<T> $this_asFlow;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C43051(ObservableSource<T> observableSource, Continuation<? super C43051> continuation) {
            super(2, continuation);
            this.$this_asFlow = observableSource;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C43051 c43051 = new C43051(this.$this_asFlow, continuation);
            c43051.L$0 = obj;
            return c43051;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super T> producerScope, Continuation<? super Unit> continuation) {
            return ((C43051) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope = (ProducerScope) this.L$0;
                final AtomicReference atomicReference = new AtomicReference();
                this.$this_asFlow.subscribe(new Observer<T>() { // from class: kotlinx.coroutines.rx3.RxConvertKt$asFlow$1$observer$1
                    @Override // io.reactivex.rxjava3.core.Observer
                    public void onComplete() {
                        SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
                    }

                    @Override // io.reactivex.rxjava3.core.Observer
                    public void onSubscribe(Disposable d) {
                        if (LifecycleKt$$ExternalSyntheticBackportWithForwarding0.m60m(atomicReference, null, d)) {
                            return;
                        }
                        d.dispose();
                    }

                    @Override // io.reactivex.rxjava3.core.Observer
                    public void onNext(T t) {
                        try {
                            ChannelsKt.trySendBlocking(producerScope, t);
                        } catch (InterruptedException unused) {
                        }
                    }

                    @Override // io.reactivex.rxjava3.core.Observer
                    public void onError(Throwable e) {
                        producerScope.close(e);
                    }
                });
                this.label = 1;
                if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: kotlinx.coroutines.rx3.RxConvertKt.asFlow.1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        Disposable andSet = atomicReference.getAndSet(Disposable.disposed());
                        if (andSet != null) {
                            andSet.dispose();
                        }
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static final <T> Flow<T> asFlow(ObservableSource<T> observableSource) {
        return FlowKt.callbackFlow(new C43051(observableSource, null));
    }

    public static final <T> Observable<T> asObservable(final Flow<? extends T> flow, final CoroutineContext coroutineContext) {
        return Observable.create(new ObservableOnSubscribe() { // from class: kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                RxConvertKt.asObservable$lambda$0(coroutineContext, flow, observableEmitter);
            }
        });
    }

    public static /* synthetic */ Observable asObservable$default(Flow flow, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return asObservable(flow, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asObservable$lambda$0(CoroutineContext coroutineContext, Flow flow, ObservableEmitter observableEmitter) {
        observableEmitter.setCancellable(new RxCancellable(BuildersKt.launch(GlobalScope.INSTANCE, Dispatchers.getUnconfined().plus(coroutineContext), CoroutineStart.ATOMIC, new RxConvertKt$asObservable$1$job$1(flow, observableEmitter, null))));
    }

    public static /* synthetic */ Flowable asFlowable$default(Flow flow, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return asFlowable(flow, coroutineContext);
    }

    public static final <T> Flowable<T> asFlowable(Flow<? extends T> flow, CoroutineContext coroutineContext) {
        return Flowable.fromPublisher(ReactiveFlowKt.asPublisher(flow, coroutineContext));
    }

    public static /* synthetic */ Flowable from$default(Flow flow, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return asFlowable(flow, coroutineContext);
    }

    /* JADX INFO: renamed from: from$default, reason: collision with other method in class */
    public static /* synthetic */ Observable m4890from$default(Flow flow, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return asObservable(flow, coroutineContext);
    }
}
