package com.boilerplate.network;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class c extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NetworkResource<Object> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(NetworkResource<Object> networkResource, Continuation<? super c> continuation) {
        super(continuation);
        this.this$0 = networkResource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.fetchFromLocal(this);
    }
}
