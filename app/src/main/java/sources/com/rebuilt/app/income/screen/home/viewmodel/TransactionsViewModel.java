package com.rebuilt.app.income.screen.home.viewmodel;

import androidx.lifecycle.ViewModelKt;
import com.rebuilt.app.base.BaseViewModel;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.income.model.TransactionsResponseModel;
import com.rebuilt.app.income.screen.home.uistate.TransactionUiState;
import com.rebuilt.app.income.usecase.GetTransactionsUseCase;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TransactionsViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m2722d2 = {"Lcom/laborbook/income/screen/home/viewmodel/TransactionsViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/income/screen/home/uistate/TransactionUiState;", "Lcom/laborbook/income/model/TransactionsResponseModel;", "getTransactionsUseCase", "Lcom/laborbook/income/usecase/GetTransactionsUseCase;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "<init>", "(Lcom/laborbook/income/usecase/GetTransactionsUseCase;Lcom/laborbook/base/datastore/DataStoreManager;)V", "getTransactions", "", "month", "", "year", "pageNo", "", "clearState", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionsViewModel extends BaseViewModel<TransactionUiState<? extends TransactionsResponseModel>> {
    private final DataStoreManager dataStoreManager;
    private final GetTransactionsUseCase getTransactionsUseCase;

    public TransactionsViewModel(GetTransactionsUseCase getTransactionsUseCase, DataStoreManager dataStoreManager) {
        Intrinsics.checkNotNullParameter(getTransactionsUseCase, "getTransactionsUseCase");
        Intrinsics.checkNotNullParameter(dataStoreManager, "dataStoreManager");
        this.getTransactionsUseCase = getTransactionsUseCase;
        this.dataStoreManager = dataStoreManager;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel$getTransactions$1 */
    /* JADX INFO: compiled from: TransactionsViewModel.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel$getTransactions$1", m2735f = "TransactionsViewModel.kt", m2736i = {}, m2737l = {18, 18, 18}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36461 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $month;
        final /* synthetic */ int $pageNo;
        final /* synthetic */ String $year;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36461(String str, String str2, int i, Continuation<? super C36461> continuation) {
            super(2, continuation);
            this.$month = str;
            this.$year = str2;
            this.$pageNo = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionsViewModel.this.new C36461(this.$month, this.$year, this.$pageNo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36461) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0081 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L29
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r11)
                goto L82
            L15:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L1d:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L6b
            L21:
                java.lang.Object r1 = r10.L$0
                com.rebuilt.app.income.usecase.GetTransactionsUseCase r1 = (com.rebuilt.app.income.usecase.GetTransactionsUseCase) r1
                kotlin.ResultKt.throwOnFailure(r11)
                goto L52
            L29:
                kotlin.ResultKt.throwOnFailure(r11)
                com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel r11 = com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel.this
                com.rebuilt.app.income.usecase.GetTransactionsUseCase r1 = com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel.access$getGetTransactionsUseCase$p(r11)
                com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel r11 = com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel.this
                com.rebuilt.app.base.datastore.DataStoreManager r11 = com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel.access$getDataStoreManager$p(r11)
                com.rebuilt.app.base.datastore.DataStoreManager$Companion r5 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r5 = r5.getUSER_ID()
                java.lang.String r6 = ""
                kotlinx.coroutines.flow.Flow r11 = r11.read(r5, r6)
                r5 = r10
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r10.L$0 = r1
                r10.label = r4
                java.lang.Object r11 = kotlinx.coroutines.flow.FlowKt.first(r11, r5)
                if (r11 != r0) goto L52
                return r0
            L52:
                r4 = r1
                r5 = r11
                java.lang.String r5 = (java.lang.String) r5
                java.lang.String r6 = r10.$month
                java.lang.String r7 = r10.$year
                int r8 = r10.$pageNo
                r9 = r10
                kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
                r11 = 0
                r10.L$0 = r11
                r10.label = r3
                java.lang.Object r11 = r4.invoke(r5, r6, r7, r8, r9)
                if (r11 != r0) goto L6b
                return r0
            L6b:
                kotlinx.coroutines.flow.Flow r11 = (kotlinx.coroutines.flow.Flow) r11
                com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel$getTransactions$1$1 r1 = new com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel$getTransactions$1$1
                com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel r3 = com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel.this
                r1.<init>()
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                r3 = r10
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r10.label = r2
                java.lang.Object r11 = r11.collect(r1, r3)
                if (r11 != r0) goto L82
                return r0
            L82:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.income.screen.home.viewmodel.TransactionsViewModel.C36461.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void getTransactions(String month, String year, int pageNo) {
        Intrinsics.checkNotNullParameter(month, "month");
        Intrinsics.checkNotNullParameter(year, "year");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C36461(month, year, pageNo, null), 3, null);
    }

    public final void clearState() {
        getUiState().setValue(TransactionUiState.LOADING.INSTANCE);
    }
}
