package com.laborbook.income.screen.details.fragment;

import android.content.Context;
import android.widget.Toast;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.income.C3621R;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: TransactionDetailsBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$setupClicks$3$1", m2735f = "TransactionDetailsBottomSheetFragment.kt", m2736i = {}, m2737l = {Opcodes.IRETURN, Opcodes.ARETURN}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class TransactionDetailsBottomSheetFragment$setupClicks$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TransactionDetailsBottomSheetFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransactionDetailsBottomSheetFragment$setupClicks$3$1(TransactionDetailsBottomSheetFragment transactionDetailsBottomSheetFragment, Continuation<? super TransactionDetailsBottomSheetFragment$setupClicks$3$1> continuation) {
        super(2, continuation);
        this.this$0 = transactionDetailsBottomSheetFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TransactionDetailsBottomSheetFragment$setupClicks$3$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TransactionDetailsBottomSheetFragment$setupClicks$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            this.this$0.openEditFragment();
            return Unit.INSTANCE;
        }
        this.label = 2;
        if (BuildersKt.withContext(Dispatchers.getMain(), new C36321(this.this$0, null), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$setupClicks$3$1$1 */
    /* JADX INFO: compiled from: TransactionDetailsBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.income.screen.details.fragment.TransactionDetailsBottomSheetFragment$setupClicks$3$1$1", m2735f = "TransactionDetailsBottomSheetFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36321 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ TransactionDetailsBottomSheetFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36321(TransactionDetailsBottomSheetFragment transactionDetailsBottomSheetFragment, Continuation<? super C36321> continuation) {
            super(2, continuation);
            this.this$0 = transactionDetailsBottomSheetFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C36321(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C36321) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Context context = this.this$0.getContext();
            if (context == null) {
                context = this.this$0.requireContext();
                Intrinsics.checkNotNullExpressionValue(context, "requireContext(...)");
            }
            Toast.makeText(context, this.this$0.getString(C3621R.string.unhide_income_to_edit), 0).show();
            return Unit.INSTANCE;
        }
    }
}
