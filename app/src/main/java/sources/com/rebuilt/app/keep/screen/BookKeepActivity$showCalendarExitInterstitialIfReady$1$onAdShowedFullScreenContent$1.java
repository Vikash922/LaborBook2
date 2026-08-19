package com.rebuilt.app.keep.screen;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BookKeepActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.rebuilt.app.keep.screen.BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1", f = "BookKeepActivity.kt", i = {}, l = {652}, m = "invokeSuspend", n = {}, s = {})
final class BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $today;
    int label;
    final /* synthetic */ BookKeepActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1(BookKeepActivity bookKeepActivity, int i, Continuation<? super BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1> continuation) {
        super(2, continuation);
        this.this$0 = bookKeepActivity;
        this.$today = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1(this.this$0, this.$today, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BookKeepActivity$showCalendarExitInterstitialIfReady$1$onAdShowedFullScreenContent$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (this.this$0.getDataStoreManager().recordInterstitialShown(this.$today, this) == coroutine_suspended) {
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
}
