package com.boilerplate.analytics;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: com.boilerplate.analytics.d */
/* JADX INFO: loaded from: classes3.dex */
public final class C1092d extends SuspendLambda implements Function2 {
    final /* synthetic */ Map<String, Object> $userProperties;
    final /* synthetic */ List<String> $userPropertyPlatforms;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AnalyticsManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1092d(List<String> list, AnalyticsManagerImpl analyticsManagerImpl, Map<String, ? extends Object> map, Continuation<? super C1092d> continuation) {
        super(2, continuation);
        this.$userPropertyPlatforms = list;
        this.this$0 = analyticsManagerImpl;
        this.$userProperties = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        C1092d c1092d = new C1092d(this.$userPropertyPlatforms, this.this$0, this.$userProperties, continuation);
        c1092d.L$0 = obj;
        return c1092d;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            List<String> list = this.$userPropertyPlatforms;
            AnalyticsManagerImpl analyticsManagerImpl = this.this$0;
            Map<String, Object> map = this.$userProperties;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new C1091c(analyticsManagerImpl, (String) it.next(), map, null), 3, null));
            }
            this.label = 1;
            if (AwaitKt.awaitAll(arrayList, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C1092d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
