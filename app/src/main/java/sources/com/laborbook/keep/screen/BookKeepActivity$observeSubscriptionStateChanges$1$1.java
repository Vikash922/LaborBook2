package com.laborbook.keep.screen;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BookKeepActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.BookKeepActivity$observeSubscriptionStateChanges$1$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {215, 219}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class BookKeepActivity$observeSubscriptionStateChanges$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BookKeepActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BookKeepActivity$observeSubscriptionStateChanges$1$1(BookKeepActivity bookKeepActivity, Continuation<? super BookKeepActivity$observeSubscriptionStateChanges$1$1> continuation) {
        super(2, continuation);
        this.this$0 = bookKeepActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BookKeepActivity$observeSubscriptionStateChanges$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BookKeepActivity$observeSubscriptionStateChanges$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r6)
            goto L5e
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L2f
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r5.label = r3
            r3 = 100
            java.lang.Object r6 = kotlinx.coroutines.DelayKt.delay(r3, r6)
            if (r6 != r0) goto L2f
            return r0
        L2f:
            com.google.firebase.ktx.Firebase r6 = com.google.firebase.ktx.Firebase.INSTANCE
            com.google.firebase.remoteconfig.FirebaseRemoteConfig r6 = com.google.firebase.remoteconfig.ktx.RemoteConfigKt.getRemoteConfig(r6)
            com.laborbook.keep.utils.SubscriptionsFeatureFlag r1 = com.laborbook.keep.utils.SubscriptionsFeatureFlag.INSTANCE
            boolean r6 = r1.isSubscriptionsEnabled(r6)
            if (r6 == 0) goto L6b
            com.laborbook.keep.screen.BookKeepActivity r6 = r5.this$0
            com.laborbook.base.datastore.DataStoreManager r6 = r6.getDataStoreManager()
            com.laborbook.base.datastore.DataStoreManager$Companion r1 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r1 = r1.getPRO_STATUS()
            r3 = 0
            java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            kotlinx.coroutines.flow.Flow r6 = r6.read(r1, r3)
            r1 = r5
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r5.label = r2
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.first(r6, r1)
            if (r6 != r0) goto L5e
            return r0
        L5e:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L6b
            com.laborbook.keep.screen.BookKeepActivity r6 = r5.this$0
            com.laborbook.keep.screen.BookKeepActivity.access$hideAllAds(r6)
        L6b:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.BookKeepActivity$observeSubscriptionStateChanges$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
