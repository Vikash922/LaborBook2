package com.laborbook.keep.screen.profile.fragment;

import android.widget.EditText;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding;
import com.laborbook.keep.model.UpdateUserNameRequestBody;
import com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: UpdateNameBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$setOnClickListeners$2$1", m2735f = "UpdateNameBottomsheetFragment.kt", m2736i = {0}, m2737l = {120}, m2738m = "invokeSuspend", m2739n = {"name"}, m2740s = {"L$0"})
final class UpdateNameBottomsheetFragment$setOnClickListeners$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ UpdateNameBottomsheetFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdateNameBottomsheetFragment$setOnClickListeners$2$1(UpdateNameBottomsheetFragment updateNameBottomsheetFragment, Continuation<? super UpdateNameBottomsheetFragment$setOnClickListeners$2$1> continuation) {
        super(2, continuation);
        this.this$0 = updateNameBottomsheetFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UpdateNameBottomsheetFragment$setOnClickListeners$2$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((UpdateNameBottomsheetFragment$setOnClickListeners$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String strValueOf;
        UserProfileViewModel userProfileViewModel;
        EditText editText;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FragmentUpdateNameBottomsheetBinding binding = this.this$0.getBinding();
            strValueOf = String.valueOf((binding == null || (editText = binding.etName) == null) ? null : editText.getText());
            UserProfileViewModel viewModel = this.this$0.getViewModel();
            this.L$0 = strValueOf;
            this.L$1 = viewModel;
            this.label = 1;
            Object objFirst = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
            if (objFirst == coroutine_suspended) {
                return coroutine_suspended;
            }
            userProfileViewModel = viewModel;
            obj = objFirst;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            userProfileViewModel = (UserProfileViewModel) this.L$1;
            strValueOf = (String) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        userProfileViewModel.updateUserName((String) obj, new UpdateUserNameRequestBody(strValueOf));
        BaseBottomsheetFragment.recordClickEvent$default(this.this$0, ConstantEventNames.EDIT_PROFILE_NAME, null, 2, null);
        return Unit.INSTANCE;
    }
}
