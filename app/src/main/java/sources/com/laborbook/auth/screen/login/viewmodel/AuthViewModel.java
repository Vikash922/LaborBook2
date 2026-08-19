package com.laborbook.auth.screen.login.viewmodel;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.model.NetworkResultStatus;
import com.laborbook.auth.model.request.AuthRequestBody;
import com.laborbook.auth.model.request.AuthResponse;
import com.laborbook.auth.model.request.TruecallerRequestBody;
import com.laborbook.auth.screen.login.uistate.UiState;
import com.laborbook.auth.usecase.AuthUseCase;
import com.laborbook.base.BaseViewModel;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: AuthViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, m2722d2 = {"Lcom/laborbook/auth/screen/login/viewmodel/AuthViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/auth/screen/login/uistate/UiState;", "authUseCase", "Lcom/laborbook/auth/usecase/AuthUseCase;", "<init>", "(Lcom/laborbook/auth/usecase/AuthUseCase;)V", "getAuthUseCase", "()Lcom/laborbook/auth/usecase/AuthUseCase;", "PHONE_NUMBER_REQUEST", "", "getPHONE_NUMBER_REQUEST", "()I", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "generateOtp", "Lkotlinx/coroutines/Job;", "authRequestBody", "Lcom/laborbook/auth/model/request/AuthRequestBody;", "resendOtp", "verifyOtp", "truecallerLogin", "truecallerRequestBody", "Lcom/laborbook/auth/model/request/TruecallerRequestBody;", "attachPhoneNumberTextWatcher", "", "textView", "Landroid/widget/TextView;", "attachOtpTextWatcher", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AuthViewModel extends BaseViewModel<UiState> {
    private final int PHONE_NUMBER_REQUEST;
    private final AuthUseCase authUseCase;
    private final CoroutineExceptionHandler exceptionHandler;

    public AuthViewModel(AuthUseCase authUseCase) {
        Intrinsics.checkNotNullParameter(authUseCase, "authUseCase");
        this.authUseCase = authUseCase;
        this.PHONE_NUMBER_REQUEST = 12;
        this.exceptionHandler = new AuthViewModel$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
    }

    public final AuthUseCase getAuthUseCase() {
        return this.authUseCase;
    }

    public final int getPHONE_NUMBER_REQUEST() {
        return this.PHONE_NUMBER_REQUEST;
    }

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$generateOtp$1 */
    /* JADX INFO: compiled from: AuthViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$generateOtp$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {29, 29}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35641 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AuthRequestBody $authRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35641(AuthRequestBody authRequestBody, Continuation<? super C35641> continuation) {
            super(2, continuation);
            this.$authRequestBody = authRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AuthViewModel.this.new C35641(this.$authRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35641) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthViewModel.this.getAuthUseCase().generateOtp(this.$authRequestBody, this);
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
            final AuthViewModel authViewModel = AuthViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.auth.screen.login.viewmodel.AuthViewModel.generateOtp.1.1

                /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$generateOtp$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: AuthViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$generateOtp$1$1$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49461 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<Unit> $it;
                    int label;
                    final /* synthetic */ AuthViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$generateOtp$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: AuthViewModel.kt */
                    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[NetworkResultStatus.values().length];
                            try {
                                iArr[NetworkResultStatus.SUCCESS.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[NetworkResultStatus.ERROR.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[NetworkResultStatus.LOADING.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C49461(NetworkResult<Unit> networkResult, AuthViewModel authViewModel, Continuation<? super C49461> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = authViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49461(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49461) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        if (i == 1) {
                            this.this$0.getUiState().setValue(new UiState.OtpSent("Otp Sent"));
                        } else if (i == 2) {
                            this.this$0.getUiState().setValue(new UiState.Error(this.$it.getMessage()));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(UiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<Unit>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<Unit> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49461(networkResult, authViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job generateOtp(AuthRequestBody authRequestBody) {
        Intrinsics.checkNotNullParameter(authRequestBody, "authRequestBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C35641(authRequestBody, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$resendOtp$1 */
    /* JADX INFO: compiled from: AuthViewModel.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$resendOtp$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {49, 49}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35651 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AuthRequestBody $authRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35651(AuthRequestBody authRequestBody, Continuation<? super C35651> continuation) {
            super(2, continuation);
            this.$authRequestBody = authRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AuthViewModel.this.new C35651(this.$authRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35651) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthViewModel.this.getAuthUseCase().resendOtp(this.$authRequestBody, this);
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
            final AuthViewModel authViewModel = AuthViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.auth.screen.login.viewmodel.AuthViewModel.resendOtp.1.1

                /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$resendOtp$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: AuthViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$resendOtp$1$1$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49471 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<Unit> $it;
                    int label;
                    final /* synthetic */ AuthViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$resendOtp$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: AuthViewModel.kt */
                    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[NetworkResultStatus.values().length];
                            try {
                                iArr[NetworkResultStatus.SUCCESS.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[NetworkResultStatus.ERROR.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[NetworkResultStatus.LOADING.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C49471(NetworkResult<Unit> networkResult, AuthViewModel authViewModel, Continuation<? super C49471> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = authViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49471(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49471) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        if (i == 1) {
                            this.this$0.getUiState().setValue(new UiState.OtpSent("Otp Re-Sent"));
                        } else if (i == 2) {
                            this.this$0.getUiState().setValue(new UiState.Error(this.$it.getMessage()));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(UiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<Unit>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<Unit> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49471(networkResult, authViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job resendOtp(AuthRequestBody authRequestBody) {
        Intrinsics.checkNotNullParameter(authRequestBody, "authRequestBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C35651(authRequestBody, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$verifyOtp$1 */
    /* JADX INFO: compiled from: AuthViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$verifyOtp$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {69, 69}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35671 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AuthRequestBody $authRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35671(AuthRequestBody authRequestBody, Continuation<? super C35671> continuation) {
            super(2, continuation);
            this.$authRequestBody = authRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AuthViewModel.this.new C35671(this.$authRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35671) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthViewModel.this.getAuthUseCase().verifyOtp(this.$authRequestBody, this);
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
            final AuthViewModel authViewModel = AuthViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.auth.screen.login.viewmodel.AuthViewModel.verifyOtp.1.1

                /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$verifyOtp$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: AuthViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$verifyOtp$1$1$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49491 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<AuthResponse> $it;
                    int label;
                    final /* synthetic */ AuthViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$verifyOtp$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: AuthViewModel.kt */
                    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[NetworkResultStatus.values().length];
                            try {
                                iArr[NetworkResultStatus.SUCCESS.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[NetworkResultStatus.ERROR.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[NetworkResultStatus.LOADING.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C49491(NetworkResult<AuthResponse> networkResult, AuthViewModel authViewModel, Continuation<? super C49491> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = authViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49491(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49491) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        if (i == 1) {
                            this.this$0.getUiState().setValue(new UiState.OtpVerified(this.$it.getData()));
                        } else if (i == 2) {
                            this.this$0.getUiState().setValue(new UiState.Error(this.$it.getMessage()));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(UiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<AuthResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<AuthResponse> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49491(networkResult, authViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job verifyOtp(AuthRequestBody authRequestBody) {
        Intrinsics.checkNotNullParameter(authRequestBody, "authRequestBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C35671(authRequestBody, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$truecallerLogin$1 */
    /* JADX INFO: compiled from: AuthViewModel.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$truecallerLogin$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {89, 89}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35661 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ TruecallerRequestBody $truecallerRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35661(TruecallerRequestBody truecallerRequestBody, Continuation<? super C35661> continuation) {
            super(2, continuation);
            this.$truecallerRequestBody = truecallerRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AuthViewModel.this.new C35661(this.$truecallerRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35661) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthViewModel.this.getAuthUseCase().truecallerLogin(this.$truecallerRequestBody, this);
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
            final AuthViewModel authViewModel = AuthViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.auth.screen.login.viewmodel.AuthViewModel.truecallerLogin.1.1

                /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$truecallerLogin$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: AuthViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.auth.screen.login.viewmodel.AuthViewModel$truecallerLogin$1$1$1", m2735f = "AuthViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49481 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<AuthResponse> $it;
                    int label;
                    final /* synthetic */ AuthViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$truecallerLogin$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: AuthViewModel.kt */
                    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[NetworkResultStatus.values().length];
                            try {
                                iArr[NetworkResultStatus.SUCCESS.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[NetworkResultStatus.ERROR.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[NetworkResultStatus.LOADING.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C49481(NetworkResult<AuthResponse> networkResult, AuthViewModel authViewModel, Continuation<? super C49481> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = authViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49481(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49481) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        if (i == 1) {
                            this.this$0.getUiState().setValue(new UiState.TrueCallerLoginSuccess(this.$it.getData()));
                        } else if (i == 2) {
                            this.this$0.getUiState().setValue(new UiState.Error(this.$it.getMessage()));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(UiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<AuthResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<AuthResponse> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49481(networkResult, authViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job truecallerLogin(TruecallerRequestBody truecallerRequestBody) {
        Intrinsics.checkNotNullParameter(truecallerRequestBody, "truecallerRequestBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C35661(truecallerRequestBody, null), 2, null);
    }

    public final void attachPhoneNumberTextWatcher(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$attachPhoneNumberTextWatcher$textWatcher$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                this.this$0.getUiState().setValue(new UiState.NumberEntered(String.valueOf(s).length() == 10 && new Regex("^\\d+$").matches(StringsKt.trim((CharSequence) String.valueOf(s)).toString())));
            }
        });
    }

    public final void attachOtpTextWatcher(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.addTextChangedListener(new TextWatcher() { // from class: com.laborbook.auth.screen.login.viewmodel.AuthViewModel$attachOtpTextWatcher$textWatcher$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                this.this$0.getUiState().setValue(new UiState.OtpEntered(String.valueOf(s).length() == 4));
            }
        });
    }
}
