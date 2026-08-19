package com.laborbook.auth.screen.login.view;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.Credentials;
import com.google.android.gms.auth.api.credentials.CredentialsClient;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.wallet.WalletConstants;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.laborbook.auth.databinding.FragmentLoginBinding;
import com.laborbook.auth.model.request.AuthRequestBody;
import com.laborbook.auth.screen.login.uistate.UiState;
import com.laborbook.auth.screen.login.viewmodel.AuthViewModel;
import com.laborbook.base.BaseConstants;
import com.laborbook.base.BaseExtensionKt;
import com.laborbook.base.BaseFragment;
import com.laborbook.base.Logger;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.base.languagemanager.LanguageBottomSheetFragment;
import com.truecaller.android.sdk.oAuth.CodeVerifierUtil;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import com.truecaller.android.sdk.oAuth.TcOAuthData;
import com.truecaller.android.sdk.oAuth.TcOAuthError;
import com.truecaller.android.sdk.oAuth.TcSdk;
import com.truecaller.android.sdk.oAuth.TcSdkOptions;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: LoginFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 C2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001CB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u001c2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010!\u001a\u00020\u0013H\u0002J\b\u0010\"\u001a\u00020\u0013H\u0002J\b\u0010#\u001a\u00020\u0013H\u0002J\b\u0010$\u001a\u00020\u0013H\u0002J\b\u0010%\u001a\u00020\u0013H\u0002J\b\u0010&\u001a\u00020\u0013H\u0002J\u0010\u0010'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020)H\u0002J\b\u0010*\u001a\u00020\u0013H\u0002J\"\u0010+\u001a\u00020\u00132\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0010\u00101\u001a\u00020)2\u0006\u00102\u001a\u000203H\u0002J\b\u00104\u001a\u00020\u0013H\u0016J\b\u00105\u001a\u00020\u0013H\u0016J\u0010\u00106\u001a\u00020\u00132\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\u00132\u0006\u0010:\u001a\u00020;H\u0016J\u0012\u0010<\u001a\u00020\u00132\b\u00107\u001a\u0004\u0018\u000108H\u0016J\b\u0010=\u001a\u00020\u0013H\u0002J\b\u0010>\u001a\u00020)H\u0002J\u0018\u0010?\u001a\u00020\u00132\b\u0010@\u001a\u0004\u0018\u00010AH\u0082@¢\u0006\u0002\u0010BR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006D"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/view/LoginFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/auth/databinding/FragmentLoginBinding;", "Lcom/truecaller/android/sdk/oAuth/TcOAuthCallback;", "<init>", "()V", "codeVerifier", "", "mobileNumber", "viewModel", "Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;", "getViewModel", "()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "screenName", "getScreenName", "()Ljava/lang/String;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "collageScrollJob", "Lkotlinx/coroutines/Job;", "onViewCreated", "view", "setupViews", "startCollageAutoScroll", "showLanguageOnFirstOpen", "registerOnClickListeners", "triggerTrueCallerLogin", "viewModelObserver", "changeButtonState", "enable", "", "showPhoneNumberHint", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "isGooglePlayServicesAvailable", "context", "Landroid/content/Context;", "onResume", "onDestroy", "onFailure", "tcOAuthError", "Lcom/truecaller/android/sdk/oAuth/TcOAuthError;", "onSuccess", "tcOAuthData", "Lcom/truecaller/android/sdk/oAuth/TcOAuthData;", "onVerificationRequired", "setupTruecaller", "isTruecallerInstalled", "storeUserDetails", "authResponse", "Lcom/laborbook/auth/model/request/AuthResponse;", "(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class LoginFragment extends BaseFragment<FragmentLoginBinding> implements TcOAuthCallback {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String codeVerifier;
    private Job collageScrollJob;
    private String mobileNumber = "";

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.view.LoginFragment$storeUserDetails$1 */
    /* JADX INFO: compiled from: LoginFragment.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.view.LoginFragment", m2735f = "LoginFragment.kt", m2736i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 6, 7, 8, 9, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15}, m2737l = {WalletConstants.ERROR_CODE_INVALID_PARAMETERS, WalletConstants.ERROR_CODE_MERCHANT_ACCOUNT_ERROR, WalletConstants.ERROR_CODE_SPENDING_LIMIT_EXCEEDED, 407, 408, WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR, WalletConstants.ERROR_CODE_INVALID_TRANSACTION, 415, 421, 426, 430, 437, 438, 439, 440, 441}, m2738m = "storeUserDetails", m2739n = {"this", "user", "this", "user", "this", "user", "this", "user", "this", "user", "this", "this", "this", "this", "this", "this", "this", "ampIdentify", "this", "ampIdentify", "this", "ampIdentify", "this", "ampIdentify", "ampIdentify"}, m2740s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0"})
    static final class C35621 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        C35621(Continuation<? super C35621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LoginFragment.this.storeUserDetails(null, this);
        }
    }

    @JvmStatic
    public static final LoginFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean startCollageAutoScroll$lambda$3(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean startCollageAutoScroll$lambda$4(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean startCollageAutoScroll$lambda$5(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // com.truecaller.android.sdk.oAuth.TcOAuthCallback
    public void onFailure(TcOAuthError tcOAuthError) {
        Intrinsics.checkNotNullParameter(tcOAuthError, "tcOAuthError");
    }

    @Override // com.truecaller.android.sdk.oAuth.TcOAuthCallback
    public void onVerificationRequired(TcOAuthError tcOAuthError) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LoginFragment() {
        final LoginFragment loginFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<AuthViewModel>() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.laborbook.auth.screen.login.viewmodel.AuthViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final AuthViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(loginFragment, qualifier, Reflection.getOrCreateKotlinClass(AuthViewModel.class), objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AuthViewModel getViewModel() {
        return (AuthViewModel) this.viewModel.getValue();
    }

    @Override // com.laborbook.base.BaseFragment
    public String getScreenName() {
        return "login";
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.laborbook.base.BaseFragment
    public FragmentLoginBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentLoginBinding.inflate(inflater, container, false);
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentLoginBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        viewModelObserver();
        setupViews();
        registerOnClickListeners();
        startCollageAutoScroll();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C35591(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.view.LoginFragment$onViewCreated$1 */
    /* JADX INFO: compiled from: LoginFragment.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.view.LoginFragment$onViewCreated$1", m2735f = "LoginFragment.kt", m2736i = {}, m2737l = {103}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C35591(Continuation<? super C35591> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LoginFragment.this.new C35591(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(LoginFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getFIRST_TIME_APP_OPEN(), Boxing.boxBoolean(false)), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                LoginFragment.this.showLanguageOnFirstOpen();
            } else {
                LoginFragment.this.setupTruecaller();
                try {
                    if (LoginFragment.this.isTruecallerInstalled()) {
                        LoginFragment.this.triggerTrueCallerLogin();
                    } else {
                        LoginFragment loginFragment = LoginFragment.this;
                        Context contextRequireContext = loginFragment.requireContext();
                        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                        if (loginFragment.isGooglePlayServicesAvailable(contextRequireContext)) {
                            LoginFragment.this.showPhoneNumberHint();
                        }
                    }
                } catch (Exception unused) {
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void setupViews() {
        MaterialButton materialButton;
        FragmentLoginBinding binding = getBinding();
        if (binding != null) {
            if (isTruecallerInstalled()) {
                TextViewRegular14 tvOrWith = binding.tvOrWith;
                Intrinsics.checkNotNullExpressionValue(tvOrWith, "tvOrWith");
                ExtentionsKt.show$default(tvOrWith, 0L, null, 3, null);
                ImageView btnTcLogin = binding.btnTcLogin;
                Intrinsics.checkNotNullExpressionValue(btnTcLogin, "btnTcLogin");
                ExtentionsKt.show$default(btnTcLogin, 0L, null, 3, null);
                BaseFragment.triggerImpressionEvent$default(this, ConstantEventNames.TRUECALLER_INSTALLED, null, 2, null);
            } else {
                TextViewRegular14 tvOrWith2 = binding.tvOrWith;
                Intrinsics.checkNotNullExpressionValue(tvOrWith2, "tvOrWith");
                ExtentionsKt.hide$default(tvOrWith2, 0L, null, 3, null);
                ImageView btnTcLogin2 = binding.btnTcLogin;
                Intrinsics.checkNotNullExpressionValue(btnTcLogin2, "btnTcLogin");
                ExtentionsKt.hide$default(btnTcLogin2, 0L, null, 3, null);
            }
            FragmentLoginBinding binding2 = getBinding();
            if (binding2 != null && (materialButton = binding2.btnLogin) != null) {
                materialButton.setEnabled(false);
            }
            TextInputEditText textInputEditText = binding.etNumber;
            AuthViewModel viewModel = getViewModel();
            Intrinsics.checkNotNull(textInputEditText);
            viewModel.attachPhoneNumberTextWatcher(textInputEditText);
            SpannableString spannableString = new SpannableString(str);
            int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, "Terms & Conditions", 0, false, 6, (Object) null);
            int i = iIndexOf$default + 18;
            int iIndexOf$default2 = StringsKt.indexOf$default((CharSequence) str, "Privacy Policy", 0, false, 6, (Object) null);
            int i2 = iIndexOf$default2 + 14;
            ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$setupViews$1$termsClickableSpan$1
                @Override // android.text.style.ClickableSpan
                public void onClick(View widget) {
                    Intrinsics.checkNotNullParameter(widget, "widget");
                    LoginFragment loginFragment = this.this$0;
                    Context contextRequireContext = loginFragment.requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    loginFragment.openUrlInCustomTab(contextRequireContext, "https://laborbook.app/terms-of-service");
                }
            };
            ClickableSpan clickableSpan2 = new ClickableSpan() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$setupViews$1$privacyClickableSpan$1
                @Override // android.text.style.ClickableSpan
                public void onClick(View widget) {
                    Intrinsics.checkNotNullParameter(widget, "widget");
                    LoginFragment loginFragment = this.this$0;
                    Context contextRequireContext = loginFragment.requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    loginFragment.openUrlInCustomTab(contextRequireContext, "https://laborbook.app/privacy-policy");
                }
            };
            int color = Color.parseColor("#3270D2");
            spannableString.setSpan(clickableSpan, iIndexOf$default, i, 33);
            spannableString.setSpan(new ForegroundColorSpan(color), iIndexOf$default, i, 33);
            spannableString.setSpan(clickableSpan2, iIndexOf$default2, i2, 33);
            spannableString.setSpan(new ForegroundColorSpan(color), iIndexOf$default2, i2, 33);
            binding.tvTermsAndConditions.setText(spannableString);
            binding.tvTermsAndConditions.setMovementMethod(LinkMovementMethod.getInstance());
            binding.tvTermsAndConditions.setHighlightColor(0);
        }
    }

    private final void startCollageAutoScroll() {
        NestedScrollView nestedScrollView;
        NestedScrollView nestedScrollView2;
        NestedScrollView nestedScrollView3;
        Job job = this.collageScrollJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        FragmentLoginBinding binding = getBinding();
        if (binding != null && (nestedScrollView3 = binding.svCol1) != null) {
            nestedScrollView3.setOnTouchListener(new View.OnTouchListener() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return LoginFragment.startCollageAutoScroll$lambda$3(view, motionEvent);
                }
            });
        }
        FragmentLoginBinding binding2 = getBinding();
        if (binding2 != null && (nestedScrollView2 = binding2.svCol2) != null) {
            nestedScrollView2.setOnTouchListener(new View.OnTouchListener() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return LoginFragment.startCollageAutoScroll$lambda$4(view, motionEvent);
                }
            });
        }
        FragmentLoginBinding binding3 = getBinding();
        if (binding3 != null && (nestedScrollView = binding3.svCol3) != null) {
            nestedScrollView.setOnTouchListener(new View.OnTouchListener() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return LoginFragment.startCollageAutoScroll$lambda$5(view, motionEvent);
                }
            });
        }
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        this.collageScrollJob = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C35614(null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.view.LoginFragment$startCollageAutoScroll$4 */
    /* JADX INFO: compiled from: LoginFragment.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.view.LoginFragment$startCollageAutoScroll$4", m2735f = "LoginFragment.kt", m2736i = {1, 1, 1, 1}, m2737l = {Opcodes.INVOKEDYNAMIC, 205}, m2738m = "invokeSuspend", m2739n = {"col1", "col2", "col3", "scrollY"}, m2740s = {"L$0", "L$1", "L$2", "I$0"})
    static final class C35614 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C35614(Continuation<? super C35614> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LoginFragment.this.new C35614(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35614) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x007c A[Catch: Exception -> 0x00f1, TryCatch #0 {Exception -> 0x00f1, blocks: (B:7:0x001d, B:33:0x0074, B:35:0x007c, B:37:0x0084, B:39:0x008c, B:41:0x0097, B:43:0x009d, B:45:0x00a8, B:47:0x00ae, B:49:0x00b9, B:11:0x002a, B:17:0x003f, B:19:0x004a, B:21:0x004e, B:23:0x0058, B:25:0x005c, B:27:0x0066, B:52:0x00ee, B:14:0x0031), top: B:57:0x0009 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x008c A[Catch: Exception -> 0x00f1, TryCatch #0 {Exception -> 0x00f1, blocks: (B:7:0x001d, B:33:0x0074, B:35:0x007c, B:37:0x0084, B:39:0x008c, B:41:0x0097, B:43:0x009d, B:45:0x00a8, B:47:0x00ae, B:49:0x00b9, B:11:0x002a, B:17:0x003f, B:19:0x004a, B:21:0x004e, B:23:0x0058, B:25:0x005c, B:27:0x0066, B:52:0x00ee, B:14:0x0031), top: B:57:0x0009 }] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x009d A[Catch: Exception -> 0x00f1, TryCatch #0 {Exception -> 0x00f1, blocks: (B:7:0x001d, B:33:0x0074, B:35:0x007c, B:37:0x0084, B:39:0x008c, B:41:0x0097, B:43:0x009d, B:45:0x00a8, B:47:0x00ae, B:49:0x00b9, B:11:0x002a, B:17:0x003f, B:19:0x004a, B:21:0x004e, B:23:0x0058, B:25:0x005c, B:27:0x0066, B:52:0x00ee, B:14:0x0031), top: B:57:0x0009 }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ae A[Catch: Exception -> 0x00f1, TryCatch #0 {Exception -> 0x00f1, blocks: (B:7:0x001d, B:33:0x0074, B:35:0x007c, B:37:0x0084, B:39:0x008c, B:41:0x0097, B:43:0x009d, B:45:0x00a8, B:47:0x00ae, B:49:0x00b9, B:11:0x002a, B:17:0x003f, B:19:0x004a, B:21:0x004e, B:23:0x0058, B:25:0x005c, B:27:0x0066, B:52:0x00ee, B:14:0x0031), top: B:57:0x0009 }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00ed A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00eb -> B:8:0x0020). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.auth.screen.login.view.LoginFragment.C35614.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.view.LoginFragment$showLanguageOnFirstOpen$1 */
    /* JADX INFO: compiled from: LoginFragment.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.view.LoginFragment$showLanguageOnFirstOpen$1", m2735f = "LoginFragment.kt", m2736i = {}, m2737l = {213, 218}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35601 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C35601(Continuation<? super C35601> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LoginFragment.this.new C35601(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35601) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(LoginFragment.this.getDataStoreManager().read(DataStoreManager.INSTANCE.getFIRST_TIME_APP_OPEN(), Boxing.boxBoolean(false)), this);
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
                LanguageBottomSheetFragment.INSTANCE.newInstance().show(LoginFragment.this.getParentFragmentManager(), "LanguageBottomSheetFragment");
                this.label = 2;
                if (LoginFragment.this.getDataStoreManager().write(DataStoreManager.INSTANCE.getFIRST_TIME_APP_OPEN(), Boxing.boxBoolean(true), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLanguageOnFirstOpen() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C35601(null), 3, null);
    }

    private final void registerOnClickListeners() {
        final FragmentLoginBinding binding = getBinding();
        if (binding != null) {
            binding.ivLanguageSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LoginFragment.registerOnClickListeners$lambda$9$lambda$6(this.f$0, view);
                }
            });
            binding.btnLogin.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LoginFragment.registerOnClickListeners$lambda$9$lambda$7(this.f$0, binding, view);
                }
            });
            binding.btnTcLogin.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LoginFragment.registerOnClickListeners$lambda$9$lambda$8(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$9$lambda$6(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            LanguageBottomSheetFragment.INSTANCE.newInstance().show(this$0.getParentFragmentManager(), "LanguageBottomSheetFragment");
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$9$lambda$7(LoginFragment this$0, FragmentLoginBinding this_apply, View view) {
        TextInputEditText textInputEditText;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        FragmentLoginBinding binding = this$0.getBinding();
        if (binding != null && (textInputEditText = binding.etNumber) != null) {
            FragmentActivity fragmentActivityRequireActivity = this$0.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            BaseExtensionKt.toggleKeyboard(textInputEditText, (Activity) fragmentActivityRequireActivity);
        }
        this$0.mobileNumber = String.valueOf(this_apply.etNumber.getText());
        this$0.getViewModel().generateOtp(new AuthRequestBody(BaseConstants.COUNTRY_CODE, this$0.mobileNumber, null, null, null, 28, null));
        this$0.recordClickEvent(ConstantEventNames.REQUEST_OTP, MapsKt.hashMapOf(new Pair("mobile_number", this$0.mobileNumber)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$9$lambda$8(LoginFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.triggerTrueCallerLogin();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void triggerTrueCallerLogin() {
        try {
            TcSdk.getInstance().getAuthorizationCode(requireActivity());
            BaseFragment.recordClickEvent$default(this, ConstantEventNames.TRUECALLER_LOGIN, null, 2, null);
        } catch (Exception unused) {
        }
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new LoginFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.laborbook.auth.screen.login.view.LoginFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LoginFragment.viewModelObserver$lambda$10(this.f$0, (UiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$10(LoginFragment this$0, UiState uiState) {
        MaterialButton materialButton;
        ProgressBar progressBar;
        MaterialButton materialButton2;
        ProgressBar progressBar2;
        MaterialButton materialButton3;
        ProgressBar progressBar3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (uiState instanceof UiState.Loading) {
            FragmentLoginBinding binding = this$0.getBinding();
            if (binding != null && (progressBar3 = binding.f3412pb) != null) {
                ExtentionsKt.show$default(progressBar3, 0L, null, 3, null);
            }
            FragmentLoginBinding binding2 = this$0.getBinding();
            if (binding2 != null && (materialButton3 = binding2.btnLogin) != null) {
                materialButton3.setEnabled(false);
            }
        } else if (uiState instanceof UiState.OtpSent) {
            FragmentLoginBinding binding3 = this$0.getBinding();
            if (binding3 != null && (progressBar2 = binding3.f3412pb) != null) {
                ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            }
            FragmentLoginBinding binding4 = this$0.getBinding();
            if (binding4 != null && (materialButton2 = binding4.btnLogin) != null) {
                materialButton2.setEnabled(true);
            }
            this$0.getFragmentNavigator().start(OtpFragment.INSTANCE.newInstance(this$0.mobileNumber));
        } else if (uiState instanceof UiState.Error) {
            FragmentLoginBinding binding5 = this$0.getBinding();
            if (binding5 != null && (progressBar = binding5.f3412pb) != null) {
                ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
            }
            FragmentLoginBinding binding6 = this$0.getBinding();
            if (binding6 != null && (materialButton = binding6.btnLogin) != null) {
                materialButton.setEnabled(true);
            }
            Toast.makeText(this$0.requireContext(), ((UiState.Error) uiState).getMessage(), 0).show();
        } else if (uiState instanceof UiState.TrueCallerLoginSuccess) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new LoginFragment$viewModelObserver$1$1(this$0, uiState, null), 3, null);
        } else if ((uiState instanceof UiState.NumberEntered) && !(this$0.getViewModel().uiState().getValue() instanceof UiState.Loading)) {
            this$0.changeButtonState(((UiState.NumberEntered) uiState).isValidNumber());
        }
        return Unit.INSTANCE;
    }

    private final void changeButtonState(boolean enable) {
        MaterialButton materialButton;
        FragmentLoginBinding binding = getBinding();
        if (binding == null || (materialButton = binding.btnLogin) == null) {
            return;
        }
        materialButton.setVisibility(enable ? 0 : 8);
        materialButton.setEnabled(enable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPhoneNumberHint() {
        HintRequest hintRequestBuild = new HintRequest.Builder().setPhoneNumberIdentifierSupported(true).build();
        Intrinsics.checkNotNullExpressionValue(hintRequestBuild, "build(...)");
        CredentialsClient client = Credentials.getClient((Activity) requireActivity());
        Intrinsics.checkNotNullExpressionValue(client, "let(...)");
        PendingIntent hintPickerIntent = client.getHintPickerIntent(hintRequestBuild);
        Intrinsics.checkNotNullExpressionValue(hintPickerIntent, "getHintPickerIntent(...)");
        try {
            startIntentSenderForResult(hintPickerIntent.getIntentSender(), getViewModel().getPHONE_NUMBER_REQUEST(), null, 0, 0, 0, new Bundle());
        } catch (IntentSender.SendIntentException unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        TextInputEditText textInputEditText;
        Editable text;
        TextInputEditText textInputEditText2;
        TextInputEditText textInputEditText3;
        String id;
        super.onActivityResult(requestCode, resultCode, data);
        if (!isAdded() || getBinding() == null) {
            return;
        }
        if (requestCode == getViewModel().getPHONE_NUMBER_REQUEST() && resultCode == -1) {
            String strSubstring = null;
            Credential credential = data != null ? (Credential) data.getParcelableExtra(Credential.EXTRA_KEY) : null;
            if (!(credential instanceof Credential)) {
                credential = null;
            }
            if (credential != null && (id = credential.getId()) != null) {
                strSubstring = id.substring(3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            }
            FragmentLoginBinding binding = getBinding();
            if (binding != null && (textInputEditText3 = binding.etNumber) != null) {
                textInputEditText3.setText(strSubstring);
            }
            FragmentLoginBinding binding2 = getBinding();
            if (binding2 != null && (textInputEditText = binding2.etNumber) != null && (text = textInputEditText.getText()) != null) {
                int length = text.length();
                FragmentLoginBinding binding3 = getBinding();
                if (binding3 != null && (textInputEditText2 = binding3.etNumber) != null) {
                    textInputEditText2.setSelection(length);
                }
            }
        }
        if (requestCode == 100) {
            TcSdk.getInstance().onActivityResultObtained(requireActivity(), requestCode, resultCode, data);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isGooglePlayServicesAvailable(Context context) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        Intrinsics.checkNotNullExpressionValue(googleApiAvailability, "getInstance(...)");
        return googleApiAvailability.isGooglePlayServicesAvailable(context) == 0;
    }

    @Override // com.laborbook.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        TcSdk.clear();
    }

    @Override // com.truecaller.android.sdk.oAuth.TcOAuthCallback
    public void onSuccess(TcOAuthData tcOAuthData) {
        Intrinsics.checkNotNullParameter(tcOAuthData, "tcOAuthData");
        String str = this.codeVerifier;
        if (str != null) {
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new LoginFragment$onSuccess$1$1(this, tcOAuthData, str, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupTruecaller() {
        try {
            TcSdk.init(new TcSdkOptions.Builder(requireContext(), this).build());
            TcSdk.getInstance().isOAuthFlowUsable();
            TcSdk.getInstance().setOAuthState(new BigInteger(130, new SecureRandom()).toString(32));
            TcSdk.getInstance().setOAuthScopes(new String[]{"profile", "phone"});
            String strGenerateRandomCodeVerifier = CodeVerifierUtil.INSTANCE.generateRandomCodeVerifier();
            this.codeVerifier = strGenerateRandomCodeVerifier;
            if (strGenerateRandomCodeVerifier != null) {
                String codeChallenge = CodeVerifierUtil.INSTANCE.getCodeChallenge(strGenerateRandomCodeVerifier);
                if (codeChallenge != null) {
                    TcSdk.getInstance().setCodeChallenge(codeChallenge);
                } else {
                    Logger.INSTANCE.m2677e("Code challenge is Null. Can’t proceed further");
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isTruecallerInstalled() {
        try {
            requireContext().getPackageManager().getPackageInfo("com.truecaller", 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0359 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0383 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0402 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01e6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0205 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0224 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x023f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x026f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02ed A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x031f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0320  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object storeUserDetails(com.laborbook.auth.model.request.AuthResponse r19, kotlin.coroutines.Continuation<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instruction units count: 1092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.auth.screen.login.view.LoginFragment.storeUserDetails(com.laborbook.auth.model.request.AuthResponse, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: compiled from: LoginFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/view/LoginFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/auth/screen/login/view/LoginFragment;", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LoginFragment newInstance() {
            return new LoginFragment();
        }
    }
}
