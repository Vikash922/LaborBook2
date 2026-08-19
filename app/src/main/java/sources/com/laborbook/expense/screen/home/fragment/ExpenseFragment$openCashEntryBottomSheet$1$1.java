package com.laborbook.expense.screen.home.fragment;

import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.screen.transactionstatus.fragment.TransactionStatusFragment;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: ExpenseFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.expense.screen.home.fragment.ExpenseFragment$openCashEntryBottomSheet$1$1", m2735f = "ExpenseFragment.kt", m2736i = {}, m2737l = {368}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class ExpenseFragment$openCashEntryBottomSheet$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Transaction $expense;
    final /* synthetic */ boolean $isUpdate;
    int label;
    final /* synthetic */ ExpenseFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExpenseFragment$openCashEntryBottomSheet$1$1(ExpenseFragment expenseFragment, Transaction transaction, boolean z, Continuation<? super ExpenseFragment$openCashEntryBottomSheet$1$1> continuation) {
        super(2, continuation);
        this.this$0 = expenseFragment;
        this.$expense = transaction;
        this.$isUpdate = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ExpenseFragment$openCashEntryBottomSheet$1$1(this.this$0, this.$expense, this.$isUpdate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ExpenseFragment$openCashEntryBottomSheet$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (DelayKt.delay(500L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.getFragmentNavigator().start(TransactionStatusFragment.INSTANCE.newInstance(this.$expense.getType(), String.valueOf(this.$expense.getAmount()), this.$isUpdate));
        return Unit.INSTANCE;
    }
}
