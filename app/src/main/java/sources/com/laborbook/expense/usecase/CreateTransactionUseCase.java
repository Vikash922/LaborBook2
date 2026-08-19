package com.laborbook.expense.usecase;

import com.boilerplate.network.model.NetworkResult;
import com.laborbook.expense.model.Transaction;
import com.laborbook.expense.model.TransactionRequest;
import com.laborbook.expense.repository.TransactionRepository;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: CreateTransactionUseCase.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J,\u0010\u0006\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086B¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/expense/usecase/CreateTransactionUseCase;", "", "transactionRepository", "Lcom/laborbook/expense/repository/TransactionRepository;", "<init>", "(Lcom/laborbook/expense/repository/TransactionRepository;)V", "invoke", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/expense/model/Transaction;", "userId", "", "transactionRequest", "Lcom/laborbook/expense/model/TransactionRequest;", "(Ljava/lang/String;Lcom/laborbook/expense/model/TransactionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "expense_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CreateTransactionUseCase {
    private final TransactionRepository transactionRepository;

    public CreateTransactionUseCase(TransactionRepository transactionRepository) {
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        this.transactionRepository = transactionRepository;
    }

    public final Object invoke(String str, TransactionRequest transactionRequest, Continuation<? super Flow<NetworkResult<Transaction>>> continuation) {
        return this.transactionRepository.createTransaction(str, transactionRequest, continuation);
    }
}
