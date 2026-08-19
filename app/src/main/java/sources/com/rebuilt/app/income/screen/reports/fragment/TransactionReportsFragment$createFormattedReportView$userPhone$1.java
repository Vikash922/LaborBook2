package com.rebuilt.app.income.screen.reports.fragment;

import com.rebuilt.app.base.datastore.DataStoreManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: TransactionReportsFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.income.screen.reports.fragment.TransactionReportsFragment$createFormattedReportView$userPhone$1", m2735f = "TransactionReportsFragment.kt", m2736i = {}, m2737l = {385}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class TransactionReportsFragment$createFormattedReportView$userPhone$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    int label;
    final /* synthetic */ TransactionReportsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransactionReportsFragment$createFormattedReportView$userPhone$1(TransactionReportsFragment transactionReportsFragment, Continuation<? super TransactionReportsFragment$createFormattedReportView$userPhone$1> continuation) {
        super(2, continuation);
        this.this$0 = transactionReportsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransactionReportsFragment$createFormattedReportView$userPhone$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((TransactionReportsFragment$createFormattedReportView$userPhone$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getMOBILE_NUMBER(), ""), this);
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
