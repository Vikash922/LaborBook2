package com.laborbook.expense.screen.cashentry.viewmodel;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import androidx.lifecycle.ViewModelKt;
import com.facebook.appevents.AppEventsConstants;
import com.laborbook.base.BaseViewModel;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.expense.model.TransactionRequest;
import com.laborbook.expense.screen.cashentry.uistate.CashInOutUiState;
import com.laborbook.expense.usecase.CreateTransactionUseCase;
import com.laborbook.expense.usecase.DeleteTransactionUseCase;
import com.laborbook.expense.usecase.UpdateTransactionUseCase;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: CashInOutViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/expense/screen/cashentry/viewmodel/CashInOutViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/expense/screen/cashentry/uistate/CashInOutUiState;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "createTransactionUseCase", "Lcom/laborbook/expense/usecase/CreateTransactionUseCase;", "updateTransactionUseCase", "Lcom/laborbook/expense/usecase/UpdateTransactionUseCase;", "deleteTransactionUseCase", "Lcom/laborbook/expense/usecase/DeleteTransactionUseCase;", "<init>", "(Lcom/laborbook/base/datastore/DataStoreManager;Lcom/laborbook/expense/usecase/CreateTransactionUseCase;Lcom/laborbook/expense/usecase/UpdateTransactionUseCase;Lcom/laborbook/expense/usecase/DeleteTransactionUseCase;)V", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "attachExpenseTextWatcher", "", "textView", "Landroid/widget/TextView;", "createExpense", "transactionRequest", "Lcom/laborbook/expense/model/TransactionRequest;", "updateExpense", "id", "", "deleteExpense", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CashInOutViewModel extends BaseViewModel<CashInOutUiState<?>> {
    private final CreateTransactionUseCase createTransactionUseCase;
    private final DataStoreManager dataStoreManager;
    private final DeleteTransactionUseCase deleteTransactionUseCase;
    private final CoroutineExceptionHandler exceptionHandler;
    private final UpdateTransactionUseCase updateTransactionUseCase;

    public CashInOutViewModel(DataStoreManager dataStoreManager, CreateTransactionUseCase createTransactionUseCase, UpdateTransactionUseCase updateTransactionUseCase, DeleteTransactionUseCase deleteTransactionUseCase) {
        Intrinsics.checkNotNullParameter(dataStoreManager, "dataStoreManager");
        Intrinsics.checkNotNullParameter(createTransactionUseCase, "createTransactionUseCase");
        Intrinsics.checkNotNullParameter(updateTransactionUseCase, "updateTransactionUseCase");
        Intrinsics.checkNotNullParameter(deleteTransactionUseCase, "deleteTransactionUseCase");
        this.dataStoreManager = dataStoreManager;
        this.createTransactionUseCase = createTransactionUseCase;
        this.updateTransactionUseCase = updateTransactionUseCase;
        this.deleteTransactionUseCase = deleteTransactionUseCase;
        this.exceptionHandler = new CashInOutViewModel$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
    }

    public final void attachExpenseTextWatcher(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$attachExpenseTextWatcher$textWatcher$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                this.this$0.getUiState().setValue(new CashInOutUiState.ExpenseEntered(!Intrinsics.areEqual(String.valueOf(s), AppEventsConstants.EVENT_PARAM_VALUE_NO) && String.valueOf(s).length() > 0));
            }
        });
    }

    /* JADX INFO: renamed from: com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$createExpense$1 */
    /* JADX INFO: compiled from: CashInOutViewModel.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$createExpense$1", m2735f = "CashInOutViewModel.kt", m2736i = {}, m2737l = {56, 56, 56}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35991 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ TransactionRequest $transactionRequest;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35991(TransactionRequest transactionRequest, Continuation<? super C35991> continuation) {
            super(2, continuation);
            this.$transactionRequest = transactionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CashInOutViewModel.this.new C35991(this.$transactionRequest, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35991) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x007b A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L29
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r8)
                goto L7c
            L15:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1d:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L65
            L21:
                java.lang.Object r1 = r7.L$0
                com.laborbook.expense.usecase.CreateTransactionUseCase r1 = (com.laborbook.expense.usecase.CreateTransactionUseCase) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L52
            L29:
                kotlin.ResultKt.throwOnFailure(r8)
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r8 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                com.laborbook.expense.usecase.CreateTransactionUseCase r1 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.access$getCreateTransactionUseCase$p(r8)
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r8 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                com.laborbook.base.datastore.DataStoreManager r8 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.access$getDataStoreManager$p(r8)
                com.laborbook.base.datastore.DataStoreManager$Companion r5 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r5 = r5.getUSER_ID()
                java.lang.String r6 = ""
                kotlinx.coroutines.flow.Flow r8 = r8.read(r5, r6)
                r5 = r7
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r7.L$0 = r1
                r7.label = r4
                java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.first(r8, r5)
                if (r8 != r0) goto L52
                return r0
            L52:
                java.lang.String r8 = (java.lang.String) r8
                com.laborbook.expense.model.TransactionRequest r4 = r7.$transactionRequest
                r5 = r7
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r6 = 0
                r7.L$0 = r6
                r7.label = r3
                java.lang.Object r8 = r1.invoke(r8, r4, r5)
                if (r8 != r0) goto L65
                return r0
            L65:
                kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$createExpense$1$1 r1 = new com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$createExpense$1$1
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r3 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                r1.<init>()
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                r3 = r7
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r7.label = r2
                java.lang.Object r8 = r8.collect(r1, r3)
                if (r8 != r0) goto L7c
                return r0
            L7c:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.C35991.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void createExpense(TransactionRequest transactionRequest) {
        Intrinsics.checkNotNullParameter(transactionRequest, "transactionRequest");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler, null, new C35991(transactionRequest, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$updateExpense$1 */
    /* JADX INFO: compiled from: CashInOutViewModel.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$updateExpense$1", m2735f = "CashInOutViewModel.kt", m2736i = {}, m2737l = {75, 75, 75}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36011 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ TransactionRequest $transactionRequest;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36011(String str, TransactionRequest transactionRequest, Continuation<? super C36011> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$transactionRequest = transactionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CashInOutViewModel.this.new C36011(this.$id, this.$transactionRequest, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36011) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                com.laborbook.expense.usecase.UpdateTransactionUseCase r1 = (com.laborbook.expense.usecase.UpdateTransactionUseCase) r1
                kotlin.ResultKt.throwOnFailure(r9)
                goto L52
            L29:
                kotlin.ResultKt.throwOnFailure(r9)
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r9 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                com.laborbook.expense.usecase.UpdateTransactionUseCase r1 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.access$getUpdateTransactionUseCase$p(r9)
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r9 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                com.laborbook.base.datastore.DataStoreManager r9 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.access$getDataStoreManager$p(r9)
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
                java.lang.String r4 = r8.$id
                com.laborbook.expense.model.TransactionRequest r5 = r8.$transactionRequest
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
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$updateExpense$1$1 r1 = new com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$updateExpense$1$1
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r3 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
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
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.C36011.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void updateExpense(String id, TransactionRequest transactionRequest) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(transactionRequest, "transactionRequest");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler, null, new C36011(id, transactionRequest, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$deleteExpense$1 */
    /* JADX INFO: compiled from: CashInOutViewModel.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$deleteExpense$1", m2735f = "CashInOutViewModel.kt", m2736i = {}, m2737l = {94, 94, 94}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36001 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36001(String str, Continuation<? super C36001> continuation) {
            super(2, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CashInOutViewModel.this.new C36001(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36001) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x007b A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L29
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r8)
                goto L7c
            L15:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1d:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L65
            L21:
                java.lang.Object r1 = r7.L$0
                com.laborbook.expense.usecase.DeleteTransactionUseCase r1 = (com.laborbook.expense.usecase.DeleteTransactionUseCase) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L52
            L29:
                kotlin.ResultKt.throwOnFailure(r8)
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r8 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                com.laborbook.expense.usecase.DeleteTransactionUseCase r1 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.access$getDeleteTransactionUseCase$p(r8)
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r8 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                com.laborbook.base.datastore.DataStoreManager r8 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.access$getDataStoreManager$p(r8)
                com.laborbook.base.datastore.DataStoreManager$Companion r5 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
                androidx.datastore.preferences.core.Preferences$Key r5 = r5.getUSER_ID()
                java.lang.String r6 = ""
                kotlinx.coroutines.flow.Flow r8 = r8.read(r5, r6)
                r5 = r7
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r7.L$0 = r1
                r7.label = r4
                java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.first(r8, r5)
                if (r8 != r0) goto L52
                return r0
            L52:
                java.lang.String r8 = (java.lang.String) r8
                java.lang.String r4 = r7.$id
                r5 = r7
                kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                r6 = 0
                r7.L$0 = r6
                r7.label = r3
                java.lang.Object r8 = r1.invoke(r8, r4, r5)
                if (r8 != r0) goto L65
                return r0
            L65:
                kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$deleteExpense$1$1 r1 = new com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel$deleteExpense$1$1
                com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel r3 = com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.this
                r1.<init>()
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                r3 = r7
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r7.label = r2
                java.lang.Object r8 = r8.collect(r1, r3)
                if (r8 != r0) goto L7c
                return r0
            L7c:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.expense.screen.cashentry.viewmodel.CashInOutViewModel.C36001.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void deleteExpense(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler, null, new C36001(id, null), 2, null);
    }
}
