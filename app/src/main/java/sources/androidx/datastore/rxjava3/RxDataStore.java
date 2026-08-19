package androidx.datastore.rxjava3;

import androidx.datastore.core.DataStore;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.rx3.RxAwaitKt;
import kotlinx.coroutines.rx3.RxConvertKt;

/* JADX INFO: compiled from: RxDataStore.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u0015*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u0015B\u001d\b\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0007J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u0010J(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00120\u0014H\u0007R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, m2722d2 = {"Landroidx/datastore/rxjava3/RxDataStore;", "T", "", "Lio/reactivex/rxjava3/disposables/Disposable;", "delegateDs", "Landroidx/datastore/core/DataStore;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroidx/datastore/core/DataStore;Lkotlinx/coroutines/CoroutineScope;)V", "data", "Lio/reactivex/rxjava3/core/Flowable;", "dispose", "", "isDisposed", "", "shutdownComplete", "Lio/reactivex/rxjava3/core/Completable;", "updateDataAsync", "Lio/reactivex/rxjava3/core/Single;", "transform", "Lio/reactivex/rxjava3/functions/Function;", "Companion", "datastore-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxDataStore<T> implements Disposable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final DataStore<T> delegateDs;
    private final CoroutineScope scope;

    public /* synthetic */ RxDataStore(DataStore dataStore, CoroutineScope coroutineScope, DefaultConstructorMarker defaultConstructorMarker) {
        this(dataStore, coroutineScope);
    }

    private RxDataStore(DataStore<T> dataStore, CoroutineScope coroutineScope) {
        this.delegateDs = dataStore;
        this.scope = coroutineScope;
    }

    /* JADX INFO: compiled from: RxDataStore.kt */
    @Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\b\b\u0001\u0010\u0005*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, m2722d2 = {"Landroidx/datastore/rxjava3/RxDataStore$Companion;", "", "()V", "create", "Landroidx/datastore/rxjava3/RxDataStore;", "T", "delegateDs", "Landroidx/datastore/core/DataStore;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "datastore-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <T> RxDataStore<T> create(DataStore<T> delegateDs, CoroutineScope scope) {
            Intrinsics.checkNotNullParameter(delegateDs, "delegateDs");
            Intrinsics.checkNotNullParameter(scope, "scope");
            return new RxDataStore<>(delegateDs, scope, null);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        Job.DefaultImpls.cancel$default(JobKt.getJob(this.scope.getCoroutineContext()), (CancellationException) null, 1, (Object) null);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return !JobKt.getJob(this.scope.getCoroutineContext()).isActive();
    }

    public final Completable shutdownComplete() {
        return RxConvertKt.asCompletable(JobKt.getJob(this.scope.getCoroutineContext()), this.scope.getCoroutineContext().minusKey(Job.INSTANCE));
    }

    public final Flowable<T> data() {
        return RxConvertKt.asFlowable(this.delegateDs.getData(), this.scope.getCoroutineContext());
    }

    /* JADX INFO: renamed from: androidx.datastore.rxjava3.RxDataStore$updateDataAsync$1 */
    /* JADX INFO: compiled from: RxDataStore.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u0003H\u008a@"}, m2722d2 = {"<anonymous>", "T", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.rxjava3.RxDataStore$updateDataAsync$1", m2735f = "RxDataStore.kt", m2736i = {}, m2737l = {124}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C05141 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function<T, Single<T>> $transform;
        int label;
        final /* synthetic */ RxDataStore<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05141(RxDataStore<T> rxDataStore, Function<T, Single<T>> function, Continuation<? super C05141> continuation) {
            super(2, continuation);
            this.this$0 = rxDataStore;
            this.$transform = function;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C05141(this.this$0, this.$transform, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((C05141) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.datastore.rxjava3.RxDataStore$updateDataAsync$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: RxDataStore.kt */
        @Metadata(m2721d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u0002H\u0001H\u008a@"}, m2722d2 = {"<anonymous>", "T", "", "it"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
        @DebugMetadata(m2734c = "androidx.datastore.rxjava3.RxDataStore$updateDataAsync$1$1", m2735f = "RxDataStore.kt", m2736i = {}, m2737l = {125}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<T, Continuation<? super T>, Object> {
            final /* synthetic */ Function<T, Single<T>> $transform;
            /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Function<T, Single<T>> function, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$transform = function;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(T t, Continuation<? super T> continuation) {
                return ((AnonymousClass1) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Single<T> singleApply = this.$transform.apply((T) this.L$0);
                    Intrinsics.checkNotNullExpressionValue(singleApply, "transform.apply(it)");
                    this.label = 1;
                    obj = RxAwaitKt.await(singleApply, this);
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

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = ((RxDataStore) this.this$0).delegateDs.updateData(new AnonymousClass1(this.$transform, null), this);
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

    public final Single<T> updateDataAsync(Function<T, Single<T>> transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        return RxConvertKt.asSingle(BuildersKt__Builders_commonKt.async$default(this.scope, SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null), null, new C05141(this, transform, null), 2, null), this.scope.getCoroutineContext().minusKey(Job.INSTANCE));
    }
}
