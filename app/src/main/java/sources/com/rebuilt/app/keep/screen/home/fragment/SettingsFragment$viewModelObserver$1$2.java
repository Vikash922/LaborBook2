package com.rebuilt.app.keep.screen.home.fragment;

import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.databinding.FragmentSettingsBinding;
import com.rebuilt.app.keep.screen.profile.uistate.UserUiState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SettingsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$viewModelObserver$1$2", m2735f = "SettingsFragment.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_MAKE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class SettingsFragment$viewModelObserver$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ UserUiState $it;
    int label;
    final /* synthetic */ SettingsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SettingsFragment$viewModelObserver$1$2(SettingsFragment settingsFragment, UserUiState userUiState, Continuation<? super SettingsFragment$viewModelObserver$1$2> continuation) {
        super(2, continuation);
        this.this$0 = settingsFragment;
        this.$it = userUiState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SettingsFragment$viewModelObserver$1$2(this.this$0, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SettingsFragment$viewModelObserver$1$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TextViewRegular14 textViewRegular14;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FragmentSettingsBinding binding = this.this$0.getBinding();
            if (binding != null && (textViewRegular14 = binding.tvName) != null) {
                textViewRegular14.setText(((UserUiState.GetUserNameSucess) this.$it).getName());
            }
            this.label = 1;
            if (this.this$0.getDataStoreManager().write(DataStoreManager.INSTANCE.getUSER_NAME(), ((UserUiState.GetUserNameSucess) this.$it).getName(), this) == coroutine_suspended) {
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
