package com.boilerplate.network;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: com.boilerplate.network.h */
/* JADX INFO: loaded from: classes.dex */
public final class C1106h extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NetworkResource<Object> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1106h(NetworkResource<Object> networkResource, Continuation<? super C1106h> continuation) {
        super(continuation);
        this.this$0 = networkResource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getDataFromResponse(null, this);
    }
}
