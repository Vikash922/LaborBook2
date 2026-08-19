package com.rebuilt.app.keep.screen.deletestaff.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.model.NetworkResultStatus;
import com.rebuilt.app.base.BaseViewModel;
import com.rebuilt.app.keep.screen.deletestaff.uistate.DeleteStaffUiState;
import com.rebuilt.app.keep.usecase.KeepUseCase;
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

/* JADX INFO: compiled from: DeleteStaffViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/keep/screen/deletestaff/viewmodel/DeleteStaffViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/keep/screen/deletestaff/uistate/DeleteStaffUiState;", "keepUseCase", "Lcom/laborbook/keep/usecase/KeepUseCase;", "<init>", "(Lcom/laborbook/keep/usecase/KeepUseCase;)V", "getKeepUseCase", "()Lcom/laborbook/keep/usecase/KeepUseCase;", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "deleteStaffUser", "Lkotlinx/coroutines/Job;", "id", "", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class DeleteStaffViewModel extends BaseViewModel<DeleteStaffUiState> {
    private final CoroutineExceptionHandler exceptionHandler;
    private final KeepUseCase keepUseCase;

    public DeleteStaffViewModel(KeepUseCase keepUseCase) {
        Intrinsics.checkNotNullParameter(keepUseCase, "keepUseCase");
        this.keepUseCase = keepUseCase;
        this.exceptionHandler = new C3778xb3b11423(CoroutineExceptionHandler.INSTANCE, this);
    }

    public final KeepUseCase getKeepUseCase() {
        return this.keepUseCase;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel$deleteStaffUser$1 */
    /* JADX INFO: compiled from: DeleteStaffViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel$deleteStaffUser$1", m2735f = "DeleteStaffViewModel.kt", m2736i = {}, m2737l = {22, 22}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37771 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37771(String str, Continuation<? super C37771> continuation) {
            super(2, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DeleteStaffViewModel.this.new C37771(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37771) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = DeleteStaffViewModel.this.getKeepUseCase().deleteStaffUser(this.$id, this);
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
            final DeleteStaffViewModel deleteStaffViewModel = DeleteStaffViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel.deleteStaffUser.1.1

                /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel$deleteStaffUser$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: DeleteStaffViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel$deleteStaffUser$1$1$1", m2735f = "DeleteStaffViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49571 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<String> $it;
                    int label;
                    final /* synthetic */ DeleteStaffViewModel this$0;

                    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.deletestaff.viewmodel.DeleteStaffViewModel$deleteStaffUser$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: DeleteStaffViewModel.kt */
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
                    C49571(NetworkResult<String> networkResult, DeleteStaffViewModel deleteStaffViewModel, Continuation<? super C49571> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = deleteStaffViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49571(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49571) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                            MutableLiveData uiState = this.this$0.getUiState();
                            String data = this.$it.getData();
                            uiState.setValue(data != null ? new DeleteStaffUiState.Success(data) : null);
                        } else if (i == 2) {
                            MutableLiveData uiState2 = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            uiState2.setValue(new DeleteStaffUiState.Error(message));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(DeleteStaffUiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<String>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<String> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49571(networkResult, deleteStaffViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job deleteStaffUser(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C37771(id, null), 2, null);
    }
}
