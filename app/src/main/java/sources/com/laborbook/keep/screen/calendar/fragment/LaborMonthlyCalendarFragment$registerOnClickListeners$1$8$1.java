package com.laborbook.keep.screen.calendar.fragment;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.laborbook.keep.databinding.FragmentLaborMonthlyCalendarBinding;
import com.laborbook.keep.utils.CoachMarkManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LaborMonthlyCalendarFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1", m2735f = "LaborMonthlyCalendarFragment.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_GROUP3OPTIONS}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ LaborMonthlyCalendarFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1(LaborMonthlyCalendarFragment laborMonthlyCalendarFragment, Continuation<? super LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1> continuation) {
        super(2, continuation);
        this.this$0 = laborMonthlyCalendarFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TextViewBold12 textViewBold12;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.this$0.isAdded() && this.this$0.getContext() != null) {
                    CoachMarkManager coachMarkManager = this.this$0.getCoachMarkManager();
                    Context contextRequireContext = this.this$0.requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    this.label = 1;
                    if (coachMarkManager.resetCoachMark(contextRequireContext, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    return Unit.INSTANCE;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Toast.makeText(this.this$0.requireContext(), "Coach mark reset for testing", 0).show();
            FragmentLaborMonthlyCalendarBinding binding = this.this$0.getBinding();
            if (binding != null && (textViewBold12 = binding.tvEdit) != null) {
                final LaborMonthlyCalendarFragment laborMonthlyCalendarFragment = this.this$0;
                CoachMarkManager coachMarkManager2 = laborMonthlyCalendarFragment.getCoachMarkManager();
                FragmentActivity fragmentActivityRequireActivity = laborMonthlyCalendarFragment.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                coachMarkManager2.showEditButtonCoachMark(fragmentActivityRequireActivity, textViewBold12, new Function0() { // from class: com.laborbook.keep.screen.calendar.fragment.LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1.invokeSuspend$lambda$1$lambda$0(laborMonthlyCalendarFragment);
                    }
                });
            }
        } catch (Exception e) {
            Log.e("LaborMonthlyCalendarFragment", "Long press: Error resetting coach mark", e);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$1$lambda$0(LaborMonthlyCalendarFragment laborMonthlyCalendarFragment) {
        LifecycleOwner viewLifecycleOwner = laborMonthlyCalendarFragment.getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C3757x4c032587(laborMonthlyCalendarFragment, null), 3, null);
        return Unit.INSTANCE;
    }
}
