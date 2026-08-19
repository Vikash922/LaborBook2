package com.boilerplate.network;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
public final class k extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ RefreshControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(RefreshControl refreshControl, Continuation<? super k> continuation) {
        super(continuation);
        this.this$0 = refreshControl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.evict(false, this);
    }
}
