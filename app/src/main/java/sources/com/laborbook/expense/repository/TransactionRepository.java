package com.laborbook.expense.repository;

import com.boilerplate.network.model.NetworkResult;
import com.laborbook.expense.model.DeleteTransactionResponseModel;
import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.model.TransactionRequest;
import com.laborbook.expense.model.TransactionSummaryResponseModel;
import com.laborbook.expense.model.TransactionsResponseModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: TransactionRepository.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J<\u0010\u0002\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH¦@¢\u0006\u0002\u0010\fJ4\u0010\r\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\u000fJ,\u0010\u0010\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H¦@¢\u0006\u0002\u0010\u0014J4\u0010\u0015\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H¦@¢\u0006\u0002\u0010\u0017J,\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\u001a¨\u0006\u001b"}, m2722d2 = {"Lcom/laborbook/expense/repository/TransactionRepository;", "", "getTransactions", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/expense/model/TransactionsResponseModel;", "userId", "", "month", "year", "pageNo", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTransactionSummary", "Lcom/laborbook/expense/model/TransactionSummaryResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createTransaction", "Lcom/laborbook/expense/model/Transaction;", "transactionRequest", "Lcom/laborbook/expense/model/TransactionRequest;", "(Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateTransaction", "id", "(Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteTransaction", "Lcom/laborbook/expense/model/DeleteTransactionResponseModel;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface TransactionRepository {
    Object createTransaction(String str, TransactionRequest transactionRequest, Continuation<? super Flow<NetworkResult<Transaction>>> continuation);

    Object deleteTransaction(String str, String str2, Continuation<? super Flow<NetworkResult<DeleteTransactionResponseModel>>> continuation);

    Object getTransactionSummary(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<TransactionSummaryResponseModel>>> continuation);

    Object getTransactions(String str, String str2, String str3, int i, Continuation<? super Flow<NetworkResult<TransactionsResponseModel>>> continuation);

    Object updateTransaction(String str, String str2, TransactionRequest transactionRequest, Continuation<? super Flow<NetworkResult<Transaction>>> continuation);
}
