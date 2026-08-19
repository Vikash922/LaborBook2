package com.laborbook.keep.screen.profile.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.model.NetworkResultStatus;
import com.laborbook.base.BaseViewModel;
import com.laborbook.keep.model.GetUserResponse;
import com.laborbook.keep.model.UpdateUserNameRequestBody;
import com.laborbook.keep.screen.profile.uistate.UserUiState;
import com.laborbook.keep.usecase.KeepUseCase;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: UserProfileViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m2722d2 = {"Lcom/laborbook/keep/screen/profile/viewmodel/UserProfileViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/keep/screen/profile/uistate/UserUiState;", "keepUseCase", "Lcom/laborbook/keep/usecase/KeepUseCase;", "<init>", "(Lcom/laborbook/keep/usecase/KeepUseCase;)V", "getKeepUseCase", "()Lcom/laborbook/keep/usecase/KeepUseCase;", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "updateUserName", "Lkotlinx/coroutines/Job;", "id", "", "updateUserNameRequestBody", "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;", "getUser", "triggerUpdateUserNameUiState", "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class UserProfileViewModel extends BaseViewModel<UserUiState> {
    private final CoroutineExceptionHandler exceptionHandler;
    private final KeepUseCase keepUseCase;

    public UserProfileViewModel(KeepUseCase keepUseCase) {
        Intrinsics.checkNotNullParameter(keepUseCase, "keepUseCase");
        this.keepUseCase = keepUseCase;
        this.exceptionHandler = new C3854xe41916cc(CoroutineExceptionHandler.INSTANCE, this);
    }

    public final KeepUseCase getKeepUseCase() {
        return this.keepUseCase;
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$updateUserName$1 */
    /* JADX INFO: compiled from: UserProfileViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$updateUserName$1", m2735f = "UserProfileViewModel.kt", m2736i = {}, m2737l = {23, 23}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38551 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ UpdateUserNameRequestBody $updateUserNameRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38551(String str, UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super C38551> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$updateUserNameRequestBody = updateUserNameRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UserProfileViewModel.this.new C38551(this.$id, this.$updateUserNameRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = UserProfileViewModel.this.getKeepUseCase().updateUserName(this.$id, this.$updateUserNameRequestBody, this);
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
            final UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel.updateUserName.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$updateUserName$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: UserProfileViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$updateUserName$1$1$1", m2735f = "UserProfileViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49631 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<GetUserResponse> $it;
                    int label;
                    final /* synthetic */ UserProfileViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$updateUserName$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: UserProfileViewModel.kt */
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
                    C49631(NetworkResult<GetUserResponse> networkResult, UserProfileViewModel userProfileViewModel, Continuation<? super C49631> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = userProfileViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49631(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49631) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        String str;
                        String name;
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        str = "";
                        if (i == 1) {
                            MutableLiveData uiState = this.this$0.getUiState();
                            GetUserResponse data = this.$it.getData();
                            if (data != null && (name = data.getName()) != null) {
                                str = name;
                            }
                            uiState.setValue(new UserUiState.UpdateUserNameSuccess(str));
                        } else if (i == 2) {
                            MutableLiveData uiState2 = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            uiState2.setValue(new UserUiState.Error(message != null ? message : ""));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(UserUiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<GetUserResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<GetUserResponse> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49631(networkResult, userProfileViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job updateUserName(String id, UpdateUserNameRequestBody updateUserNameRequestBody) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(updateUserNameRequestBody, "updateUserNameRequestBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C38551(id, updateUserNameRequestBody, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$getUser$1 */
    /* JADX INFO: compiled from: UserProfileViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$getUser$1", m2735f = "UserProfileViewModel.kt", m2736i = {}, m2737l = {43, 43}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38531 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38531(String str, Continuation<? super C38531> continuation) {
            super(2, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return UserProfileViewModel.this.new C38531(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38531) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = UserProfileViewModel.this.getKeepUseCase().getUser(this.$id, this);
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
            final UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel.getUser.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$getUser$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: UserProfileViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$getUser$1$1$1", m2735f = "UserProfileViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49621 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<GetUserResponse> $it;
                    int label;
                    final /* synthetic */ UserProfileViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.UserProfileViewModel$getUser$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: UserProfileViewModel.kt */
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
                    C49621(NetworkResult<GetUserResponse> networkResult, UserProfileViewModel userProfileViewModel, Continuation<? super C49621> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = userProfileViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49621(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49621) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        String str;
                        String name;
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        str = "";
                        if (i == 1) {
                            MutableLiveData uiState = this.this$0.getUiState();
                            GetUserResponse data = this.$it.getData();
                            if (data != null && (name = data.getName()) != null) {
                                str = name;
                            }
                            uiState.setValue(new UserUiState.GetUserNameSucess(str));
                        } else if (i == 2) {
                            MutableLiveData uiState2 = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            uiState2.setValue(new UserUiState.Error(message != null ? message : ""));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(UserUiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<GetUserResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<GetUserResponse> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49621(networkResult, userProfileViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job getUser(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C38531(id, null), 2, null);
    }

    public final void triggerUpdateUserNameUiState() {
        getUiState().setValue(UserUiState.RefreshUserNameSuccess.INSTANCE);
    }
}
