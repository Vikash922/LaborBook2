package io.reactivex.rxjava3.core;

/* JADX INFO: loaded from: classes5.dex */
@FunctionalInterface
public interface ObservableOperator<Downstream, Upstream> {
    Observer<? super Upstream> apply(Observer<? super Downstream> observer) throws Throwable;
}
