package com.boilerplate.analytics;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
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

/* JADX INFO: loaded from: classes.dex */
public final class b extends SuspendLambda implements Function2 {
    final /* synthetic */ String $eventName;
    final /* synthetic */ List<String> $eventPlatforms;
    final /* synthetic */ HashMap<String, Object> $properties;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AnalyticsManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(List<String> list, AnalyticsManagerImpl analyticsManagerImpl, String str, HashMap<String, Object> map, Continuation<? super b> continuation) {
        super(2, continuation);
        this.$eventPlatforms = list;
        this.this$0 = analyticsManagerImpl;
        this.$eventName = str;
        this.$properties = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        b bVar = new b(this.$eventPlatforms, this.this$0, this.$eventName, this.$properties, continuation);
        bVar.L$0 = obj;
        return bVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            List<String> list = this.$eventPlatforms;
            AnalyticsManagerImpl analyticsManagerImpl = this.this$0;
            String str = this.$eventName;
            HashMap<String, Object> map = this.$properties;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new a(analyticsManagerImpl, (String) it.next(), str, map, null), 3, null));
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
        return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
