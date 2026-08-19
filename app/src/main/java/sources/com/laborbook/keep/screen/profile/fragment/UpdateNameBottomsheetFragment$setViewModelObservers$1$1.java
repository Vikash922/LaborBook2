package com.laborbook.keep.screen.profile.fragment;

import android.text.Editable;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.datastore.preferences.core.Preferences;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.C3656R;
import com.laborbook.keep.databinding.FragmentUpdateNameBottomsheetBinding;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: UpdateNameBottomsheetFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.fragment.UpdateNameBottomsheetFragment$setViewModelObservers$1$1", m2735f = "UpdateNameBottomsheetFragment.kt", m2736i = {}, m2737l = {81}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class UpdateNameBottomsheetFragment$setViewModelObservers$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ UpdateNameBottomsheetFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdateNameBottomsheetFragment$setViewModelObservers$1$1(UpdateNameBottomsheetFragment updateNameBottomsheetFragment, Continuation<? super UpdateNameBottomsheetFragment$setViewModelObservers$1$1> continuation) {
        super(2, continuation);
        this.this$0 = updateNameBottomsheetFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UpdateNameBottomsheetFragment$setViewModelObservers$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((UpdateNameBottomsheetFragment$setViewModelObservers$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        EditText editText;
        ProgressBar progressBar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DataStoreManager dataStoreManager = this.this$0.getDataStoreManager();
            Preferences.Key<String> user_name = DataStoreManager.INSTANCE.getUSER_NAME();
            FragmentUpdateNameBottomsheetBinding binding = this.this$0.getBinding();
            Editable text = (binding == null || (editText = binding.etName) == null) ? null : editText.getText();
            this.label = 1;
            if (dataStoreManager.write(user_name, String.valueOf(text), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        FragmentUpdateNameBottomsheetBinding binding2 = this.this$0.getBinding();
        if (binding2 != null && (progressBar = binding2.f3459pb) != null) {
            ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
        }
        Toast.makeText(this.this$0.requireContext(), this.this$0.getString(C3656R.string.user_name_updated_successfully), 0).show();
        this.this$0.dismiss();
        this.this$0.getViewModel().triggerUpdateUserNameUiState();
        return Unit.INSTANCE;
    }
}
