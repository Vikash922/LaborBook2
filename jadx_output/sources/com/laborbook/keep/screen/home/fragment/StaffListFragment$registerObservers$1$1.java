package com.laborbook.keep.screen.home.fragment;

import androidx.recyclerview.widget.RecyclerView;
import com.laborbook.keep.databinding.FragmentStaffListBinding;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: StaffListFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$registerObservers$1$1", m2735f = "StaffListFragment.kt", m2736i = {}, m2737l = {Opcodes.PUTFIELD}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class StaffListFragment$registerObservers$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ StaffListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StaffListFragment$registerObservers$1$1(StaffListFragment staffListFragment, Continuation<? super StaffListFragment$registerObservers$1$1> continuation) {
        super(2, continuation);
        this.this$0 = staffListFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StaffListFragment$registerObservers$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((StaffListFragment$registerObservers$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RecyclerView recyclerView;
        FragmentStaffListBinding binding;
        RecyclerView recyclerView2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(500L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            FragmentStaffListBinding binding2 = this.this$0.getBinding();
            if (binding2 != null && (recyclerView = binding2.rvStaffs) != null && recyclerView.getChildCount() != 0 && (binding = this.this$0.getBinding()) != null && (recyclerView2 = binding.rvStaffs) != null) {
                recyclerView2.smoothScrollToPosition(0);
            }
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }
}
