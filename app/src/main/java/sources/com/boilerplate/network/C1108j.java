package com.boilerplate.network;

import com.boilerplate.network.model.NetworkResult;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: renamed from: com.boilerplate.network.j */
/* JADX INFO: loaded from: classes.dex */
public final class C1108j extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $force;
    private /* synthetic */ Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    final /* synthetic */ NetworkResource<Object> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1108j(boolean z, NetworkResource<Object> networkResource, Continuation<? super C1108j> continuation) {
        super(2, continuation);
        this.$force = z;
        this.this$0 = networkResource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        C1108j c1108j = new C1108j(this.$force, this.this$0, continuation);
        c1108j.L$0 = obj;
        return c1108j;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0107 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0108  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.C1108j.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super NetworkResult<Object>> flowCollector, Continuation<? super Unit> continuation) {
        return ((C1108j) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
