package com.rebuilt.app.income.network;

import com.boilerplate.network.NetworkHandler;
import com.boilerplate.network.model.DataResponse;
import com.boilerplate.network.model.NetworkResult;
import com.rebuilt.app.income.model.DeleteTransactionResponseModel;
import com.rebuilt.app.income.model.Transaction;
import com.rebuilt.app.income.model.TransactionRequest;
import com.rebuilt.app.income.model.TransactionSummaryResponseModel;
import com.rebuilt.app.income.model.TransactionsResponseModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: TransactionNetworkModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J<\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@¢\u0006\u0002\u0010\u0013J4\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\f0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010\u0016J,\u0010\u0017\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\f0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@¢\u0006\u0002\u0010\u001bJ4\u0010\u001c\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\f0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@¢\u0006\u0002\u0010\u001eJ,\u0010\u001f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010 0\f0\u000b2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0086@¢\u0006\u0002\u0010!R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, m2722d2 = {"Lcom/laborbook/income/network/TransactionNetworkModule;", "", "<init>", "()V", "baseUrl", "", "networkHandler", "Lcom/boilerplate/network/NetworkHandler;", "api", "Lcom/laborbook/income/network/TransactionApi;", "getExpenses", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/income/model/TransactionsResponseModel;", "userId", "month", "year", "pageNo", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getExpenseSummary", "Lcom/laborbook/income/model/TransactionSummaryResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createExpense", "Lcom/laborbook/income/model/Transaction;", "transactionRequest", "Lcom/laborbook/income/model/TransactionRequest;", "(Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateExpense", "id", "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/income/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteExpense", "Lcom/laborbook/income/model/DeleteTransactionResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "income_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionNetworkModule {
    private final TransactionApi api;
    private final String baseUrl = "https://api.laborbook.app/";
    private final NetworkHandler networkHandler;

    public TransactionNetworkModule() {
        NetworkHandler companion = NetworkHandler.INSTANCE.getInstance();
        this.networkHandler = companion;
        this.api = (TransactionApi) new Retrofit.Builder().baseUrl("https://api.laborbook.app/").client(companion.getOkHttpClient()).addConverterFactory(GsonConverterFactory.create()).build().create(TransactionApi.class);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.network.TransactionNetworkModule$getExpenses$2 */
    /* JADX INFO: compiled from: TransactionNetworkModule.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/income/model/TransactionsResponseModel;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.network.TransactionNetworkModule$getExpenses$2", m2735f = "TransactionNetworkModule.kt", m2736i = {}, m2737l = {23}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36252 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<TransactionsResponseModel>>>, Object> {
        final /* synthetic */ String $month;
        final /* synthetic */ int $pageNo;
        final /* synthetic */ String $userId;
        final /* synthetic */ String $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36252(String str, String str2, String str3, int i, Continuation<? super C36252> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$month = str2;
            this.$year = str3;
            this.$pageNo = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return TransactionNetworkModule.this.new C36252(this.$userId, this.$month, this.$year, this.$pageNo, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<TransactionsResponseModel>>> continuation) {
            return ((C36252) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = TransactionNetworkModule.this.api.getTransactions(this.$userId, this.$month, this.$year, this.$pageNo, "CREDIT", this);
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

    public final Object getExpenses(String str, String str2, String str3, int i, Continuation<? super Flow<NetworkResult<TransactionsResponseModel>>> continuation) {
        return this.networkHandler.getData(new C36252(str, str2, str3, i, null), continuation);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.network.TransactionNetworkModule$getExpenseSummary$2 */
    /* JADX INFO: compiled from: TransactionNetworkModule.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/income/model/TransactionSummaryResponseModel;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.network.TransactionNetworkModule$getExpenseSummary$2", m2735f = "TransactionNetworkModule.kt", m2736i = {}, m2737l = {29}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36242 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<TransactionSummaryResponseModel>>>, Object> {
        final /* synthetic */ String $month;
        final /* synthetic */ String $userId;
        final /* synthetic */ String $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36242(String str, String str2, String str3, Continuation<? super C36242> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$month = str2;
            this.$year = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return TransactionNetworkModule.this.new C36242(this.$userId, this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<TransactionSummaryResponseModel>>> continuation) {
            return ((C36242) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = TransactionNetworkModule.this.api.getTransactionSummary(this.$userId, this.$month, this.$year, "CREDIT", this);
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

    public final Object getExpenseSummary(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<TransactionSummaryResponseModel>>> continuation) {
        return this.networkHandler.getData(new C36242(str, str2, str3, null), continuation);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.network.TransactionNetworkModule$createExpense$2 */
    /* JADX INFO: compiled from: TransactionNetworkModule.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/income/model/Transaction;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.network.TransactionNetworkModule$createExpense$2", m2735f = "TransactionNetworkModule.kt", m2736i = {}, m2737l = {35}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36222 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<Transaction>>>, Object> {
        final /* synthetic */ TransactionRequest $transactionRequest;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36222(String str, TransactionRequest transactionRequest, Continuation<? super C36222> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$transactionRequest = transactionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return TransactionNetworkModule.this.new C36222(this.$userId, this.$transactionRequest, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<Transaction>>> continuation) {
            return ((C36222) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = TransactionNetworkModule.this.api.createTransaction(this.$userId, this.$transactionRequest, this);
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

    public final Object createExpense(String str, TransactionRequest transactionRequest, Continuation<? super Flow<NetworkResult<Transaction>>> continuation) {
        return this.networkHandler.getData(new C36222(str, transactionRequest, null), continuation);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.network.TransactionNetworkModule$updateExpense$2 */
    /* JADX INFO: compiled from: TransactionNetworkModule.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/income/model/Transaction;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.network.TransactionNetworkModule$updateExpense$2", m2735f = "TransactionNetworkModule.kt", m2736i = {}, m2737l = {41}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36262 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<Transaction>>>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ TransactionRequest $transactionRequest;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36262(String str, String str2, TransactionRequest transactionRequest, Continuation<? super C36262> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$id = str2;
            this.$transactionRequest = transactionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return TransactionNetworkModule.this.new C36262(this.$userId, this.$id, this.$transactionRequest, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<Transaction>>> continuation) {
            return ((C36262) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = TransactionNetworkModule.this.api.updateTransaction(this.$userId, this.$id, this.$transactionRequest, this);
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

    public final Object updateExpense(String str, String str2, TransactionRequest transactionRequest, Continuation<? super Flow<NetworkResult<Transaction>>> continuation) {
        return this.networkHandler.getData(new C36262(str, str2, transactionRequest, null), continuation);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.income.network.TransactionNetworkModule$deleteExpense$2 */
    /* JADX INFO: compiled from: TransactionNetworkModule.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/income/model/DeleteTransactionResponseModel;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.income.network.TransactionNetworkModule$deleteExpense$2", m2735f = "TransactionNetworkModule.kt", m2736i = {}, m2737l = {47}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36232 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<DeleteTransactionResponseModel>>>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36232(String str, String str2, Continuation<? super C36232> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$id = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return TransactionNetworkModule.this.new C36232(this.$userId, this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<DeleteTransactionResponseModel>>> continuation) {
            return ((C36232) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = TransactionNetworkModule.this.api.deleteTransaction(this.$userId, this.$id, this);
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

    public final Object deleteExpense(String str, String str2, Continuation<? super Flow<NetworkResult<DeleteTransactionResponseModel>>> continuation) {
        return this.networkHandler.getData(new C36232(str, str2, null), continuation);
    }
}
