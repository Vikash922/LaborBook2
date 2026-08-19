package com.laborbook.expense.network;

import com.boilerplate.network.model.DataResponse;
import com.laborbook.expense.model.DeleteTransactionResponseModel;
import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.model.TransactionRequest;
import com.laborbook.expense.model.TransactionSummaryResponseModel;
import com.laborbook.expense.model.TransactionsResponseModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: compiled from: TransactionApi.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cJL\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\rJB\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\t\u001a\u00020\u00072\b\b\u0001\u0010\f\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u0010J.\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\u0013\u001a\u00020\u0014H§@¢\u0006\u0002\u0010\u0015J8\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\u0017\u001a\u00020\u00072\b\b\u0001\u0010\u0013\u001a\u00020\u0014H§@¢\u0006\u0002\u0010\u0018J.\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\u0017\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u001b¨\u0006\u001d"}, m2722d2 = {"Lcom/laborbook/expense/network/TransactionApi;", "", "getTransactions", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/expense/model/TransactionsResponseModel;", "userId", "", "month", "year", "pageNo", "", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransactionSummary", "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createTransaction", "Lcom/laborbook/expense/model/Transaction;", "transactionRequest", "Lcom/laborbook/expense/model/TransactionRequest;", "(Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateTransaction", "id", "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteTransaction", "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface TransactionApi {
    public static final String API_VERSION = "api/v1";
    public static final String CREATE_TRANSACTION = "/users/{user_id}/transactions";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String DELETE_TRANSACTION = "/users/{user_id}/transactions/{id}";
    public static final String TRANSACTIONS = "/users/{user_id}/transactions";
    public static final String TRANSACTION_SUMMARY = "/users/{user_id}/transactions/summary";
    public static final String UPDATE_TRANSACTION = "/users/{user_id}/transactions/{id}";

    @POST("api/v1/users/{user_id}/transactions")
    Object createTransaction(@Path("user_id") String str, @Body TransactionRequest transactionRequest, Continuation<? super Response<DataResponse<Transaction>>> continuation);

    @DELETE("api/v1/users/{user_id}/transactions/{id}")
    Object deleteTransaction(@Path("user_id") String str, @Path("id") String str2, Continuation<? super Response<DataResponse<DeleteTransactionResponseModel>>> continuation);

    @GET("api/v1/users/{user_id}/transactions/summary")
    Object getTransactionSummary(@Path("user_id") String str, @Query("month") String str2, @Query("year") String str3, @Query("type") String str4, Continuation<? super Response<DataResponse<TransactionSummaryResponseModel>>> continuation);

    @GET("api/v1/users/{user_id}/transactions")
    Object getTransactions(@Path("user_id") String str, @Query("month") String str2, @Query("year") String str3, @Query("page_no") int i, @Query("type") String str4, Continuation<? super Response<DataResponse<TransactionsResponseModel>>> continuation);

    @PUT("api/v1/users/{user_id}/transactions/{id}")
    Object updateTransaction(@Path("user_id") String str, @Path("id") String str2, @Body TransactionRequest transactionRequest, Continuation<? super Response<DataResponse<Transaction>>> continuation);

    /* JADX INFO: compiled from: TransactionApi.kt */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m2722d2 = {"Lcom/laborbook/expense/network/TransactionApi$Companion;", "", "<init>", "()V", "API_VERSION", "", "TRANSACTIONS", "TRANSACTION_SUMMARY", "CREATE_TRANSACTION", "UPDATE_TRANSACTION", "DELETE_TRANSACTION", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String API_VERSION = "api/v1";
        public static final String CREATE_TRANSACTION = "/users/{user_id}/transactions";
        public static final String DELETE_TRANSACTION = "/users/{user_id}/transactions/{id}";
        public static final String TRANSACTIONS = "/users/{user_id}/transactions";
        public static final String TRANSACTION_SUMMARY = "/users/{user_id}/transactions/summary";
        public static final String UPDATE_TRANSACTION = "/users/{user_id}/transactions/{id}";

        private Companion() {
        }
    }
}
