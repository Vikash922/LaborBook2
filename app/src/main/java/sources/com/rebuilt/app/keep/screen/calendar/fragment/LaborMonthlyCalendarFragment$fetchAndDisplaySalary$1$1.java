package com.rebuilt.app.keep.screen.calendar.fragment;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1", m2735f = "LaborMonthlyCalendarFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ LaborMonthlyCalendarFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1(LaborMonthlyCalendarFragment laborMonthlyCalendarFragment, Continuation<? super LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1> continuation) {
        super(2, continuation);
        this.this$0 = laborMonthlyCalendarFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            String str = this.this$0.staffId;
            if (str == null) {
                return Unit.INSTANCE;
            }
            this.this$0.getViewModel().fetchUserSalary(str, this.this$0.monthNumber, this.this$0.currentYear);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
