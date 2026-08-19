package com.laborbook.auth.screen.login.view;

import android.content.Context;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.laborbook.auth.screen.login.uistate.UiState;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.analytics.FacebookPaymentEvents;
import com.laborbook.base.navigator.ActivitiesNameEnum;
import com.laborbook.base.navigator.ModuleNavigator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LoginFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.auth.screen.login.view.LoginFragment$viewModelObserver$1$1", m2735f = "LoginFragment.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_SAMPLESPERPIXEL}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class LoginFragment$viewModelObserver$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ UiState $it;
    int label;
    final /* synthetic */ LoginFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginFragment$viewModelObserver$1$1(LoginFragment loginFragment, UiState uiState, Continuation<? super LoginFragment$viewModelObserver$1$1> continuation) {
        super(2, continuation);
        this.this$0 = loginFragment;
        this.$it = uiState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LoginFragment$viewModelObserver$1$1(this.this$0, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LoginFragment$viewModelObserver$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            BaseFragment.triggerSystemEvent$default(this.this$0, ConstantEventNames.TRUECALLER_LOGIN_SUCCESS, null, 2, null);
            BaseFragment.triggerSystemEvent$default(this.this$0, ConstantEventNames.MOBILE_OTP_TRUECALLER, null, 2, null);
            FacebookPaymentEvents facebookPaymentEvents = FacebookPaymentEvents.INSTANCE;
            Context contextRequireContext = this.this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            FacebookPaymentEvents.logCompletedRegistration$default(facebookPaymentEvents, contextRequireContext, "truecaller", null, 4, null);
            this.label = 1;
            if (this.this$0.storeUserDetails(((UiState.TrueCallerLoginSuccess) this.$it).getAuthResponse(), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        ModuleNavigator moduleNavigator = this.this$0.getModuleNavigator();
        Context contextRequireContext2 = this.this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        moduleNavigator.startActivity(contextRequireContext2, ActivitiesNameEnum.BookKeepActivityEnum);
        this.this$0.requireActivity().finish();
        return Unit.INSTANCE;
    }
}
