package com.laborbook.keep.screen.home.fragment;

import com.boilerplate.network.model.DataResponse;
import com.laborbook.expense.model.TransactionSummaryResponseModel;
import com.laborbook.expense.network.TransactionApi;
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
import retrofit2.Response;

/* JADX INFO: compiled from: CashbookFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.CashbookFragment$loadSummary$1$response$1", m2735f = "CashbookFragment.kt", m2736i = {}, m2737l = {214}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class CashbookFragment$loadSummary$1$response$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<DataResponse<TransactionSummaryResponseModel>>>, Object> {
    final /* synthetic */ String $userId;
    int label;
    final /* synthetic */ CashbookFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CashbookFragment$loadSummary$1$response$1(CashbookFragment cashbookFragment, String str, Continuation<? super CashbookFragment$loadSummary$1$response$1> continuation) {
        super(2, continuation);
        this.this$0 = cashbookFragment;
        this.$userId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CashbookFragment$loadSummary$1$response$1(this.this$0, this.$userId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Response<DataResponse<TransactionSummaryResponseModel>>> continuation) {
        return ((CashbookFragment$loadSummary$1$response$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            TransactionApi transactionApi = this.this$0.api;
            if (transactionApi == null) {
                Intrinsics.throwUninitializedPropertyAccessException("api");
                transactionApi = null;
            }
            this.label = 1;
            obj = transactionApi.getTransactionSummary(this.$userId, String.valueOf(this.this$0.monthNumber), String.valueOf(this.this$0.currentYear), "", this);
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
