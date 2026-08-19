package io.reactivex.rxjava3.parallel;

/* JADX INFO: loaded from: classes5.dex */
@FunctionalInterface
public interface ParallelFlowableConverter<T, R> {
    R apply(ParallelFlowable<T> upstream);
}
