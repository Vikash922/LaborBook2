package com.laborbook.keep.screen.calendar.fragment;

import android.content.Context;
import com.laborbook.base.analytics.FacebookPaymentEvents;
import com.laborbook.base.datastore.DataStoreManager;
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
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$viewModelObserver$1$4", m2735f = "LaborMonthlyCalendarFragment.kt", m2736i = {}, m2737l = {456, 460}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class LaborMonthlyCalendarFragment$viewModelObserver$1$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ LaborMonthlyCalendarFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LaborMonthlyCalendarFragment$viewModelObserver$1$4(LaborMonthlyCalendarFragment laborMonthlyCalendarFragment, Continuation<? super LaborMonthlyCalendarFragment$viewModelObserver$1$4> continuation) {
        super(2, continuation);
        this.this$0 = laborMonthlyCalendarFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LaborMonthlyCalendarFragment$viewModelObserver$1$4(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LaborMonthlyCalendarFragment$viewModelObserver$1$4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getINTERACTED_WITH_APP_FEATURES(), Boxing.boxBoolean(false)), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
            Context contextRequireContext = this.this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            FacebookPaymentEvents.logFirstAttendanceMarked$default(facebookPaymentEvents, contextRequireContext, null, 2, null);
        }
        this.label = 2;
        if (this.this$0.getDataStoreManager().write(DataStoreManager.INSTANCE.getINTERACTED_WITH_APP_FEATURES(), Boxing.boxBoolean(true), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
