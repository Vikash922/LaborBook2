package io.reactivex.rxjava3.core;

/* JADX INFO: loaded from: classes5.dex */
@FunctionalInterface
public interface MaybeConverter<T, R> {
    R apply(Maybe<T> upstream);
}
