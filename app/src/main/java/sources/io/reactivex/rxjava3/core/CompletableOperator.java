package io.reactivex.rxjava3.core;

/* JADX INFO: loaded from: classes5.dex */
@FunctionalInterface
public interface CompletableOperator {
    CompletableObserver apply(CompletableObserver observer) throws Throwable;
}
