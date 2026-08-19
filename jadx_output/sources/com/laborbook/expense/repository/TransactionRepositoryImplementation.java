package com.laborbook.expense.repository;

import com.boilerplate.network.model.NetworkResult;
import com.laborbook.expense.model.DeleteTransactionResponseModel;
import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.model.TransactionRequest;
import com.laborbook.expense.model.TransactionSummaryResponseModel;
import com.laborbook.expense.model.TransactionsResponseModel;
import com.laborbook.expense.network.TransactionNetworkModule;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: TransactionRepositoryImplementation.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J<\u0010\u0006\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@¢\u0006\u0002\u0010\u0010J4\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0096@¢\u0006\u0002\u0010\u0013J,\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@¢\u0006\u0002\u0010\u0018J4\u0010\u0019\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@¢\u0006\u0002\u0010\u001bJ,\u0010\u001c\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000bH\u0096@¢\u0006\u0002\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, m2722d2 = {"Lcom/laborbook/expense/repository/TransactionRepositoryImplementation;", "Lcom/laborbook/expense/repository/TransactionRepository;", "transactionNetworkModule", "Lcom/laborbook/expense/network/TransactionNetworkModule;", "<init>", "(Lcom/laborbook/expense/network/TransactionNetworkModule;)V", "getTransactions", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/expense/model/TransactionsResponseModel;", "userId", "", "month", "year", "pageNo", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransactionSummary", "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createTransaction", "Lcom/laborbook/expense/model/Transaction;", "transactionRequest", "Lcom/laborbook/expense/model/TransactionRequest;", "(Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateTransaction", "id", "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteTransaction", "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class TransactionRepositoryImplementation implements TransactionRepository {
    private final TransactionNetworkModule transactionNetworkModule;

    public TransactionRepositoryImplementation(TransactionNetworkModule transactionNetworkModule) {
        Intrinsics.checkNotNullParameter(transactionNetworkModule, "transactionNetworkModule");
        this.transactionNetworkModule = transactionNetworkModule;
    }

    @Override // com.laborbook.expense.repository.TransactionRepository
    public Object getTransactions(String str, String str2, String str3, int i, Continuation<? super Flow<NetworkResult<TransactionsResponseModel>>> continuation) {
        return this.transactionNetworkModule.getExpenses(str, str2, str3, i, continuation);
    }

    @Override // com.laborbook.expense.repository.TransactionRepository
    public Object getTransactionSummary(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<TransactionSummaryResponseModel>>> continuation) {
        return this.transactionNetworkModule.getExpenseSummary(str, str2, str3, continuation);
    }

    @Override // com.laborbook.expense.repository.TransactionRepository
    public Object createTransaction(String str, TransactionRequest transactionRequest, Continuation<? super Flow<NetworkResult<Transaction>>> continuation) {
        return this.transactionNetworkModule.createExpense(str, transactionRequest, continuation);
    }

    @Override // com.laborbook.expense.repository.TransactionRepository
    public Object updateTransaction(String str, String str2, TransactionRequest transactionRequest, Continuation<? super Flow<NetworkResult<Transaction>>> continuation) {
        return this.transactionNetworkModule.updateExpense(str, str2, transactionRequest, continuation);
    }

    @Override // com.laborbook.expense.repository.TransactionRepository
    public Object deleteTransaction(String str, String str2, Continuation<? super Flow<NetworkResult<DeleteTransactionResponseModel>>> continuation) {
        return this.transactionNetworkModule.deleteExpense(str, str2, continuation);
    }
}
