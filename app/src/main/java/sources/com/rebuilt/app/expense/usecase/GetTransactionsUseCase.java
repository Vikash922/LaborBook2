package com.rebuilt.app.expense.usecase;

import com.boilerplate.network.model.NetworkResult;
import com.rebuilt.app.expense.model.TransactionsResponseModel;
import com.rebuilt.app.expense.repository.TransactionRepository;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: GetTransactionsUseCase.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J<\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@¢\u0006\u0002\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/expense/usecase/GetTransactionsUseCase;", "", "transactionRepository", "Lcom/laborbook/expense/repository/TransactionRepository;", "<init>", "(Lcom/laborbook/expense/repository/TransactionRepository;)V", "getTransactionRepository", "()Lcom/laborbook/expense/repository/TransactionRepository;", "invoke", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/expense/model/TransactionsResponseModel;", "userId", "", "month", "year", "pageNo", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class GetTransactionsUseCase {
    private final TransactionRepository transactionRepository;

    public GetTransactionsUseCase(TransactionRepository transactionRepository) {
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        this.transactionRepository = transactionRepository;
    }

    public final TransactionRepository getTransactionRepository() {
        return this.transactionRepository;
    }

    public final Object invoke(String str, String str2, String str3, int i, Continuation<? super Flow<NetworkResult<TransactionsResponseModel>>> continuation) {
        return this.transactionRepository.getTransactions(str, str2, str3, i, continuation);
    }
}
