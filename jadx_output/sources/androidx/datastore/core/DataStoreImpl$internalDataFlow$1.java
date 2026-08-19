package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: DataStoreImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, m2722d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "androidx.datastore.core.DataStoreImpl$internalDataFlow$1", m2735f = "DataStoreImpl.kt", m2736i = {0, 1, 1}, m2737l = {123, 125, 132}, m2738m = "invokeSuspend", m2739n = {"$this$flow", "$this$flow", "startState"}, m2740s = {"L$0", "L$0", "L$1"})
final class DataStoreImpl$internalDataFlow$1<T> extends SuspendLambda implements Function2<FlowCollector<? super T>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DataStoreImpl<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$internalDataFlow$1(DataStoreImpl<T> dataStoreImpl, Continuation<? super DataStoreImpl$internalDataFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$internalDataFlow$1 dataStoreImpl$internalDataFlow$1 = new DataStoreImpl$internalDataFlow$1(this.this$0, continuation);
        dataStoreImpl$internalDataFlow$1.L$0 = obj;
        return dataStoreImpl$internalDataFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        return ((DataStoreImpl$internalDataFlow$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector] */
    /* JADX WARN: Type inference failed for: r1v6, types: [kotlinx.coroutines.flow.FlowCollector] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v5 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$internalDataFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$internalDataFlow$1$1 */
    /* JADX INFO: compiled from: DataStoreImpl.kt */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, m2722d2 = {"<anonymous>", "", "T", "it", "Landroidx/datastore/core/State;"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.core.DataStoreImpl$internalDataFlow$1$1", m2735f = "DataStoreImpl.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C03811 extends SuspendLambda implements Function2<State<T>, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C03811(Continuation<? super C03811> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03811 c03811 = new C03811(continuation);
            c03811.L$0 = obj;
            return c03811;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(State<T> state, Continuation<? super Boolean> continuation) {
            return ((C03811) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(!(((State) this.L$0) instanceof Final));
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$internalDataFlow$1$2 */
    /* JADX INFO: compiled from: DataStoreImpl.kt */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, m2722d2 = {"<anonymous>", "", "T", "it", "Landroidx/datastore/core/State;"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.core.DataStoreImpl$internalDataFlow$1$2", m2735f = "DataStoreImpl.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C03822 extends SuspendLambda implements Function2<State<T>, Continuation<? super Boolean>, Object> {
        final /* synthetic */ State<T> $startState;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03822(State<T> state, Continuation<? super C03822> continuation) {
            super(2, continuation);
            this.$startState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C03822 c03822 = new C03822(this.$startState, continuation);
            c03822.L$0 = obj;
            return c03822;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(State<T> state, Continuation<? super Boolean> continuation) {
            return ((C03822) create(state, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            State state = (State) this.L$0;
            return Boxing.boxBoolean((state instanceof Data) && state.getVersion() <= this.$startState.getVersion());
        }
    }
}
