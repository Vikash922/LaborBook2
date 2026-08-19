package com.rebuilt.app.keep.screen.home.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.model.NetworkResultStatus;
import com.rebuilt.app.base.BaseViewModel;
import com.rebuilt.app.keep.model.StaffUser;
import com.rebuilt.app.keep.model.StaffUserResponseModel;
import com.rebuilt.app.keep.screen.home.uistate.StaffsUiState;
import com.rebuilt.app.keep.usecase.KeepUseCase;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* JADX INFO: compiled from: StaffsViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m2722d2 = {"Lcom/laborbook/keep/screen/home/viewmodel/StaffsViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/keep/screen/home/uistate/StaffsUiState;", "Lorg/koin/core/component/KoinComponent;", "keepUseCase", "Lcom/laborbook/keep/usecase/KeepUseCase;", "<init>", "(Lcom/laborbook/keep/usecase/KeepUseCase;)V", "getKeepUseCase", "()Lcom/laborbook/keep/usecase/KeepUseCase;", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "cachedStaffList", "", "Lcom/laborbook/keep/model/StaffUser;", "getUsers", "Lkotlinx/coroutines/Job;", "id", "", "getStaffCount", "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class StaffsViewModel extends BaseViewModel<StaffsUiState> implements KoinComponent {
    private List<StaffUser> cachedStaffList;
    private final CoroutineExceptionHandler exceptionHandler;
    private final KeepUseCase keepUseCase;

    public StaffsViewModel(KeepUseCase keepUseCase) {
        Intrinsics.checkNotNullParameter(keepUseCase, "keepUseCase");
        this.keepUseCase = keepUseCase;
        this.exceptionHandler = new StaffsViewModel$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
        this.cachedStaffList = CollectionsKt.emptyList();
    }

    public final KeepUseCase getKeepUseCase() {
        return this.keepUseCase;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.viewmodel.StaffsViewModel$getUsers$1 */
    /* JADX INFO: compiled from: StaffsViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.viewmodel.StaffsViewModel$getUsers$1", m2735f = "StaffsViewModel.kt", m2736i = {}, m2737l = {30, 30}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38041 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38041(String str, Continuation<? super C38041> continuation) {
            super(2, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return StaffsViewModel.this.new C38041(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38041) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = StaffsViewModel.this.getKeepUseCase().getStaffs(this.$id, this);
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
            final StaffsViewModel staffsViewModel = StaffsViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.rebuilt.app.keep.screen.home.viewmodel.StaffsViewModel.getUsers.1.1

                /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.viewmodel.StaffsViewModel$getUsers$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: StaffsViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.viewmodel.StaffsViewModel$getUsers$1$1$1", m2735f = "StaffsViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49581 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<StaffUserResponseModel> $it;
                    int label;
                    final /* synthetic */ StaffsViewModel this$0;

                    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.home.viewmodel.StaffsViewModel$getUsers$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: StaffsViewModel.kt */
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
                    C49581(NetworkResult<StaffUserResponseModel> networkResult, StaffsViewModel staffsViewModel, Continuation<? super C49581> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = staffsViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49581(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49581) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        List<StaffUser> users;
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$it.getStatus().ordinal()];
                        if (i == 1) {
                            StaffUserResponseModel data = this.$it.getData();
                            if (data != null && (users = data.getUsers()) != null) {
                                StaffsViewModel staffsViewModel = this.this$0;
                                staffsViewModel.cachedStaffList = users;
                                staffsViewModel.getUiState().setValue(new StaffsUiState.Success(users));
                            }
                        } else if (i == 2) {
                            MutableLiveData uiState = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            uiState.setValue(new StaffsUiState.Error(message));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(StaffsUiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<StaffUserResponseModel>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<StaffUserResponseModel> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49581(networkResult, staffsViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job getUsers(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C38041(id, null), 2, null);
    }

    public final int getStaffCount() {
        return this.cachedStaffList.size();
    }
}
