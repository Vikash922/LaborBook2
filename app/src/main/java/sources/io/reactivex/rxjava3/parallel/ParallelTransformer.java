package io.reactivex.rxjava3.parallel;

/* JADX INFO: loaded from: classes5.dex */
@FunctionalInterface
public interface ParallelTransformer<Upstream, Downstream> {
    ParallelFlowable<Downstream> apply(ParallelFlowable<Upstream> upstream);
}
