package com.rebuilt.app.keep.screen.calendar.fragment;

import android.content.Context;
import android.util.Log;
import com.rebuilt.app.keep.utils.CoachMarkManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.rebuilt.app.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1$1$1$1", f = "LaborMonthlyCalendarFragment.kt", i = {}, l = {304}, m = "invokeSuspend", n = {}, s = {})
final class LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ LaborMonthlyCalendarFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1$1$1$1(LaborMonthlyCalendarFragment laborMonthlyCalendarFragment, Continuation<? super LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = laborMonthlyCalendarFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
        } catch (Exception e) {
            Boxing.boxInt(Log.e("LaborMonthlyCalendarFragment", "Long press: Error marking coach mark as shown", e));
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.this$0.isAdded() && this.this$0.getContext() != null) {
                CoachMarkManager coachMarkManager = this.this$0.getCoachMarkManager();
                Context contextRequireContext = this.this$0.requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                this.label = 1;
                if (coachMarkManager.markCoachMarkAsShown(contextRequireContext, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Unit.INSTANCE;
    }
}
