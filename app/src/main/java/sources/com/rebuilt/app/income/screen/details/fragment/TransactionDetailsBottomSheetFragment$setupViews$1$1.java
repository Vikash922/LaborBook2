package com.rebuilt.app.income.screen.details.fragment;

import androidx.core.content.ContextCompat;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.income.C3621R;
import com.rebuilt.app.income.databinding.FragmentTransactionDetailsBinding;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: TransactionDetailsBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$setupViews$1$1", m2735f = "TransactionDetailsBottomSheetFragment.kt", m2736i = {}, m2737l = {98}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class TransactionDetailsBottomSheetFragment$setupViews$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FragmentTransactionDetailsBinding $this_apply;
    int label;
    final /* synthetic */ TransactionDetailsBottomSheetFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransactionDetailsBottomSheetFragment$setupViews$1$1(TransactionDetailsBottomSheetFragment transactionDetailsBottomSheetFragment, FragmentTransactionDetailsBinding fragmentTransactionDetailsBinding, Continuation<? super TransactionDetailsBottomSheetFragment$setupViews$1$1> continuation) {
        super(2, continuation);
        this.this$0 = transactionDetailsBottomSheetFragment;
        this.$this_apply = fragmentTransactionDetailsBinding;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransactionDetailsBottomSheetFragment$setupViews$1$1(this.this$0, this.$this_apply, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TransactionDetailsBottomSheetFragment$setupViews$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRIVACY_MODE_ENABLED(), Boxing.boxBoolean(false)), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.$this_apply.tvAmount.setVisibility(8);
            this.$this_apply.ivSecretAmount.setVisibility(0);
            this.$this_apply.tvEdit.setAlpha(0.5f);
        } else {
            this.$this_apply.tvAmount.setVisibility(0);
            this.$this_apply.ivSecretAmount.setVisibility(8);
            this.$this_apply.tvAmount.setText(this.this$0.getString(C3621R.string.rupee) + ' ' + this.this$0.amount);
            this.$this_apply.tvAmount.setTextColor(ContextCompat.getColor(this.this$0.requireContext(), C3621R.color.button_green_color));
            this.$this_apply.tvEdit.setAlpha(1.0f);
        }
        return Unit.INSTANCE;
    }
}
