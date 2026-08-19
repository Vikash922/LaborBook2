package com.rebuilt.app.auth.screen.login.view;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewError14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.android.gms.auth.api.phone.SmsRetrieverClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.itextpdf.kernel.xmp.XMPError;
import com.rebuilt.app.auth.C3554R;
import com.rebuilt.app.auth.common.sms.AuthOTPBroadcastReceiver;
import com.rebuilt.app.auth.common.sms.SMSListener;
import com.rebuilt.app.auth.databinding.FragmentOtpBinding;
import com.rebuilt.app.auth.model.request.AuthRequestBody;
import com.rebuilt.app.auth.screen.login.uistate.UiState;
import com.rebuilt.app.auth.screen.login.viewmodel.AuthViewModel;
import com.rebuilt.app.base.BaseConstants;
import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.mukeshsolanki.OtpView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import org.koin.androidx.viewmodel.ext.android.ViewModelStoreOwnerExtKt;
import org.koin.core.qualifier.Qualifier;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: OtpFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001a2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u001d\u001a\u00020\u000eH\u0002J\b\u0010\u001e\u001a\u00020\u000eH\u0002J\b\u0010\u001f\u001a\u00020\u000eH\u0002J\u0018\u0010 \u001a\u00020\u000e2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0082@¢\u0006\u0002\u0010#J\u0010\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020&H\u0002J\b\u0010'\u001a\u00020\u000eH\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006)"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/view/OtpFragment;", "Lcom/laborbook/base/BaseFragment;", "Lcom/laborbook/auth/databinding/FragmentOtpBinding;", "<init>", "()V", "viewModel", "Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;", "getViewModel", "()Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "mobileNumber", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "screenName", "getScreenName", "()Ljava/lang/String;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "setupViews", "registerOnClickListeners", "viewModelObserver", "storeUserDetails", "authResponse", "Lcom/laborbook/auth/model/request/AuthResponse;", "(Lcom/laborbook/auth/model/request/AuthResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "changeButtonState", "enable", "", "initSMSRetriever", "Companion", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class OtpFragment extends BaseFragment<FragmentOtpBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String mobileNumber;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: com.rebuilt.app.auth.screen.login.view.OtpFragment$storeUserDetails$1 */
    /* JADX INFO: compiled from: OtpFragment.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.auth.screen.login.view.OtpFragment", m2735f = "OtpFragment.kt", m2736i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 6, 7, 8, 9, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15}, m2737l = {Opcodes.PUTFIELD, Opcodes.INVOKEVIRTUAL, Opcodes.INVOKESPECIAL, Opcodes.INVOKESTATIC, Opcodes.INVOKEINTERFACE, Opcodes.INVOKEDYNAMIC, Opcodes.NEW, 192, Opcodes.IFNULL, XMPError.BADXMP, 207, 214, 215, 216, 217, 218}, m2738m = "storeUserDetails", m2739n = {"this", "user", "this", "user", "this", "user", "this", "user", "this", "user", "this", "this", "this", "this", "this", "this", "this", "ampIdentify", "this", "ampIdentify", "this", "ampIdentify", "this", "ampIdentify", "ampIdentify"}, m2740s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0"})
    static final class C35631 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        C35631(Continuation<? super C35631> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OtpFragment.this.storeUserDetails(null, this);
        }
    }

    @JvmStatic
    public static final OtpFragment newInstance(String str) {
        return INSTANCE.newInstance(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OtpFragment() {
        final OtpFragment otpFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.viewModel = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<AuthViewModel>() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$special$$inlined$viewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.ViewModel, com.rebuilt.app.auth.screen.login.viewmodel.AuthViewModel] */
            @Override // kotlin.jvm.functions.Function0
            public final AuthViewModel invoke() {
                return ViewModelStoreOwnerExtKt.getViewModel(otpFragment, qualifier, Reflection.getOrCreateKotlinClass(AuthViewModel.class), objArr);
            }
        });
        this.mobileNumber = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AuthViewModel getViewModel() {
        return (AuthViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.mobileNumber = arguments.getString("MOBILE_NUMBER");
        }
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public String getScreenName() {
        return "otp";
    }

    @Override // com.rebuilt.app.base.BaseFragment
    public FragmentOtpBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentOtpBinding.inflate(inflater, container, false);
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentOtpBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.rebuilt.app.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        viewModelObserver();
        setupViews();
        registerOnClickListeners();
        initSMSRetriever();
    }

    private final void setupViews() {
        OtpView otpView;
        PrimaryButton primaryButton;
        TextViewRegular14 textViewRegular14;
        String string = getString(C3554R.string.otp_has_been_sent_to);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String str = string + " +91 " + this.mobileNumber;
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(requireContext(), C3554R.color.otp_phone_number)), string.length(), str.length(), 33);
        FragmentOtpBinding binding = getBinding();
        if (binding != null && (textViewRegular14 = binding.tvOtpSentToNumber) != null) {
            textViewRegular14.setText(spannableString);
        }
        FragmentOtpBinding binding2 = getBinding();
        if (binding2 != null && (primaryButton = binding2.btnVerifyOtp) != null) {
            primaryButton.setEnabled(false);
        }
        FragmentOtpBinding binding3 = getBinding();
        if (binding3 == null || (otpView = binding3.otpView) == null) {
            return;
        }
        getViewModel().attachOtpTextWatcher(otpView);
    }

    private final void registerOnClickListeners() {
        final FragmentOtpBinding binding = getBinding();
        if (binding != null) {
            binding.btnVerifyOtp.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OtpFragment.registerOnClickListeners$lambda$6$lambda$3(this.f$0, binding, view);
                }
            });
            binding.toolbar.ivBack.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OtpFragment.registerOnClickListeners$lambda$6$lambda$4(this.f$0, view);
                }
            });
            binding.ivResendOtp.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OtpFragment.registerOnClickListeners$lambda$6$lambda$5(this.f$0, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$6$lambda$3(OtpFragment this$0, FragmentOtpBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new OtpFragment$registerOnClickListeners$1$1$1(this$0, this_apply, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$6$lambda$4(OtpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getFragmentNavigator().goBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$6$lambda$5(OtpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().resendOtp(new AuthRequestBody(BaseConstants.COUNTRY_CODE, this$0.mobileNumber, null, null, null, 28, null));
        Pair[] pairArr = new Pair[1];
        String str = this$0.mobileNumber;
        if (str == null) {
            str = "";
        }
        pairArr[0] = new Pair("mobile_number", str);
        this$0.recordClickEvent(ConstantEventNames.RESEND_OTP, MapsKt.hashMapOf(pairArr));
    }

    private final void viewModelObserver() {
        getViewModel().uiState().observe(getViewLifecycleOwner(), new OtpFragmentKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return OtpFragment.viewModelObserver$lambda$7(this.f$0, (UiState) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit viewModelObserver$lambda$7(OtpFragment this$0, UiState uiState) {
        ProgressBar progressBar;
        TextViewError14 textViewError14;
        TextViewError14 textViewError142;
        ProgressBar progressBar2;
        ProgressBar progressBar3;
        ProgressBar progressBar4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (uiState instanceof UiState.Loading) {
            FragmentOtpBinding binding = this$0.getBinding();
            if (binding != null && (progressBar4 = binding.f3413pb) != null) {
                ExtentionsKt.show$default(progressBar4, 0L, null, 3, null);
            }
        } else if (uiState instanceof UiState.OtpVerified) {
            FragmentOtpBinding binding2 = this$0.getBinding();
            if (binding2 != null && (progressBar3 = binding2.f3413pb) != null) {
                ExtentionsKt.hide$default(progressBar3, 0L, null, 3, null);
            }
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this$0), null, null, new OtpFragment$viewModelObserver$1$1(this$0, uiState, null), 3, null);
        } else if (uiState instanceof UiState.Error) {
            FragmentOtpBinding binding3 = this$0.getBinding();
            if (binding3 != null && (progressBar2 = binding3.f3413pb) != null) {
                ExtentionsKt.hide$default(progressBar2, 0L, null, 3, null);
            }
            FragmentOtpBinding binding4 = this$0.getBinding();
            if (binding4 != null && (textViewError142 = binding4.tvOtpError) != null) {
                textViewError142.setText(((UiState.Error) uiState).getMessage());
            }
            FragmentOtpBinding binding5 = this$0.getBinding();
            if (binding5 != null && (textViewError14 = binding5.tvOtpError) != null) {
                ExtentionsKt.show$default(textViewError14, 0L, null, 3, null);
            }
        } else if (uiState instanceof UiState.OtpEntered) {
            this$0.changeButtonState(((UiState.OtpEntered) uiState).isValidOtp());
        } else if (uiState instanceof UiState.OtpSent) {
            FragmentOtpBinding binding6 = this$0.getBinding();
            if (binding6 != null && (progressBar = binding6.f3413pb) != null) {
                ExtentionsKt.hide$default(progressBar, 0L, null, 3, null);
            }
            Toast.makeText(this$0.requireContext(), ((UiState.OtpSent) uiState).getMessage(), 0).show();
        }
        return Unit.INSTANCE;
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
    public final java.lang.Object storeUserDetails(com.rebuilt.app.auth.model.request.AuthResponse r19, kotlin.coroutines.Continuation<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instruction units count: 1092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.auth.screen.login.view.OtpFragment.storeUserDetails(com.rebuilt.app.auth.model.request.AuthResponse, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void changeButtonState(boolean enable) {
        FragmentOtpBinding binding = getBinding();
        if (binding != null) {
            TextViewError14 tvOtpError = binding.tvOtpError;
            Intrinsics.checkNotNullExpressionValue(tvOtpError, "tvOtpError");
            if (tvOtpError.getVisibility() == 0) {
                TextViewError14 tvOtpError2 = binding.tvOtpError;
                Intrinsics.checkNotNullExpressionValue(tvOtpError2, "tvOtpError");
                ExtentionsKt.hide$default(tvOtpError2, 0L, null, 3, null);
            }
            binding.btnVerifyOtp.setText(getString(C3554R.string.verify_otp));
            if (enable) {
                binding.btnVerifyOtp.setEnabled(true);
                binding.btnVerifyOtp.performClick();
            } else {
                binding.btnVerifyOtp.setEnabled(false);
            }
        }
    }

    private final void initSMSRetriever() {
        SmsRetrieverClient client = SmsRetriever.getClient(requireContext());
        Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
        Task<Void> taskStartSmsRetriever = client.startSmsRetriever();
        Intrinsics.checkNotNullExpressionValue(taskStartSmsRetriever, "startSmsRetriever(...)");
        final Function1 function1 = new Function1() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return OtpFragment.initSMSRetriever$lambda$11(this.f$0, (Void) obj);
            }
        };
        taskStartSmsRetriever.addOnSuccessListener(new OnSuccessListener() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                OtpFragment.initSMSRetriever$lambda$12(function1, obj);
            }
        });
        taskStartSmsRetriever.addOnFailureListener(new OnFailureListener() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                Intrinsics.checkNotNullParameter(exc, "e");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initSMSRetriever$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initSMSRetriever$lambda$11(final OtpFragment this$0, Void r2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AuthOTPBroadcastReceiver.INSTANCE.initSMSListener(new SMSListener() { // from class: com.rebuilt.app.auth.screen.login.view.OtpFragment$initSMSRetriever$1$1
            @Override // com.rebuilt.app.auth.common.sms.SMSListener
            public void onError(String message) {
            }

            @Override // com.rebuilt.app.auth.common.sms.SMSListener
            public void onSuccess(String message) {
                String strTake;
                OtpView otpView;
                OtpView otpView2;
                if (message != null) {
                    try {
                        strTake = StringsKt.take(message, 4);
                    } catch (Exception unused) {
                        return;
                    }
                } else {
                    strTake = null;
                }
                FragmentOtpBinding binding = this.this$0.getBinding();
                if (binding != null && (otpView2 = binding.otpView) != null) {
                    otpView2.setText("");
                }
                FragmentOtpBinding binding2 = this.this$0.getBinding();
                if (binding2 == null || (otpView = binding2.otpView) == null) {
                    return;
                }
                otpView.setText(strTake);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: compiled from: OtpFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/view/OtpFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/auth/screen/login/view/OtpFragment;", "mobileNumber", "", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final OtpFragment newInstance(String mobileNumber) {
            Intrinsics.checkNotNullParameter(mobileNumber, "mobileNumber");
            OtpFragment otpFragment = new OtpFragment();
            Bundle bundle = new Bundle();
            bundle.putString("MOBILE_NUMBER", mobileNumber);
            otpFragment.setArguments(bundle);
            return otpFragment;
        }
    }
}
