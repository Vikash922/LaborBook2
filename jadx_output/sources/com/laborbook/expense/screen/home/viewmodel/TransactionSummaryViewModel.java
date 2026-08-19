package com.laborbook.expense.screen.home.viewmodel;

import androidx.lifecycle.ViewModelKt;
import com.laborbook.base.BaseViewModel;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.expense.model.TransactionSummaryResponseModel;
import com.laborbook.expense.screen.home.uistate.TransactionUiState;
import com.laborbook.expense.usecase.GetTransactionSummaryUseCase;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TransactionSummaryViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/expense/screen/home/viewmodel/TransactionSummaryViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/expense/screen/home/uistate/TransactionUiState;", "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;", "getTransactionSummaryUseCase", "Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "<init>", "(Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V", "getTransactionSummary", "", "month", "", "year", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionSummaryViewModel extends BaseViewModel<TransactionUiState<? extends TransactionSummaryResponseModel>> {
    private final DataStoreManager dataStoreManager;
    private final GetTransactionSummaryUseCase getTransactionSummaryUseCase;

    public TransactionSummaryViewModel(GetTransactionSummaryUseCase getTransactionSummaryUseCase, DataStoreManager dataStoreManager) {
        Intrinsics.checkNotNullParameter(getTransactionSummaryUseCase, "getTransactionSummaryUseCase");
        Intrinsics.checkNotNullParameter(dataStoreManager, "dataStoreManager");
        this.getTransactionSummaryUseCase = getTransactionSummaryUseCase;
        this.dataStoreManager = dataStoreManager;
    }

    /* JADX INFO: renamed from: com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel$getTransactionSummary$1 */
    /* JADX INFO: compiled from: TransactionSummaryViewModel.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel$getTransactionSummary$1", m2735f = "TransactionSummaryViewModel.kt", m2736i = {}, m2737l = {18, 18, 18}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36101 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $month;
        final /* synthetic */ String $year;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36101(String str, String str2, Continuation<? super C36101> continuation) {
            super(2, continuation);
            this.$month = str;
            this.$year = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionSummaryViewModel.this.new C36101(this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36101) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x007d A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L29
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r9)
                goto L7e
            L15:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1d:
                kotlin.ResultKt.throwOnFailure(r9)
                goto L67
            L21:
                java.lang.Object r1 = r8.L$0
                com.laborbook.expense.usecase.GetTransactionSummaryUseCase r1 = (com.laborbook.expense.usecase.GetTransactionSummaryUseCase) r1
                kotlin.ResultKt.throwOnFailure(r9)
                goto L52
            L29:
                kotlin.ResultKt.throwOnFailure(r9)
                com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel r9 = com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel.this
                com.laborbook.expense.usecase.GetTransactionSummaryUseCase r1 = com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel.access$getGetTransactionSummaryUseCase$p(r9)
                com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel r9 = com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel.this
                com.laborbook.base.datastore.DataStoreManager r9 = com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel.access$getDataStoreManager$p(r9)
                com.laborbook.base.datastore.DataStoreManager$Companion r5 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r5 = r5.getUSER_ID()
                java.lang.String r6 = ""
                kotlinx.coroutines.flow.Flow r9 = r9.read(r5, r6)
                r5 = r8
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r8.L$0 = r1
                r8.label = r4
                java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.first(r9, r5)
                if (r9 != r0) goto L52
                return r0
            L52:
                java.lang.String r9 = (java.lang.String) r9
                java.lang.String r4 = r8.$month
                java.lang.String r5 = r8.$year
                r6 = r8
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r7 = 0
                r8.L$0 = r7
                r8.label = r3
                java.lang.Object r9 = r1.invoke(r9, r4, r5, r6)
                if (r9 != r0) goto L67
                return r0
            L67:
                kotlinx.coroutines.flow.Flow r9 = (kotlinx.coroutines.flow.Flow) r9
                com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel$getTransactionSummary$1$1 r1 = new com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel$getTransactionSummary$1$1
                com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel r3 = com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel.this
                r1.<init>()
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                r3 = r8
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r8.label = r2
                java.lang.Object r9 = r9.collect(r1, r3)
                if (r9 != r0) goto L7e
                return r0
            L7e:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.expense.screen.home.viewmodel.TransactionSummaryViewModel.C36101.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void getTransactionSummary(String month, String year) {
        Intrinsics.checkNotNullParameter(month, "month");
        Intrinsics.checkNotNullParameter(year, "year");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C36101(month, year, null), 3, null);
    }
}
