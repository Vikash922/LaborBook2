package com.laborbook.keep.screen.profile.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.laborbook.keep.model.AddOrUpdateSalaryRequestBody;
import com.laborbook.keep.model.GetUserResponse;
import com.laborbook.keep.model.UpdateUserNameRequestBody;
import com.laborbook.keep.repository.KeepRepository;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* JADX INFO: compiled from: EditProfileViewModel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0016\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u001e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018J7\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00132\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u001d\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f¨\u0006\u001e"}, m2722d2 = {"Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel;", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/component/KoinComponent;", "keepRepository", "Lcom/laborbook/keep/repository/KeepRepository;", "<init>", "(Lcom/laborbook/keep/repository/KeepRepository;)V", "updateResult", "Landroidx/lifecycle/MutableLiveData;", "Lkotlin/Result;", "", "getUpdateResult", "()Landroidx/lifecycle/MutableLiveData;", "nameUpdateResult", "getNameUpdateResult", "salaryUpdateResult", "getSalaryUpdateResult", "updateStaffName", "staffId", "", "newName", "updateStaffSalary", "salaryType", "salary", "", "updateStaffProfile", "salaryChanged", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V", "getCurrentDateAsString", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class EditProfileViewModel extends ViewModel implements KoinComponent {
    private final KeepRepository keepRepository;
    private final MutableLiveData<Result<Unit>> nameUpdateResult;
    private final MutableLiveData<Result<Unit>> salaryUpdateResult;
    private final MutableLiveData<Result<Unit>> updateResult;

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public EditProfileViewModel(KeepRepository keepRepository) {
        Intrinsics.checkNotNullParameter(keepRepository, "keepRepository");
        this.keepRepository = keepRepository;
        this.updateResult = new MutableLiveData<>();
        this.nameUpdateResult = new MutableLiveData<>();
        this.salaryUpdateResult = new MutableLiveData<>();
    }

    public final MutableLiveData<Result<Unit>> getUpdateResult() {
        return this.updateResult;
    }

    public final MutableLiveData<Result<Unit>> getNameUpdateResult() {
        return this.nameUpdateResult;
    }

    public final MutableLiveData<Result<Unit>> getSalaryUpdateResult() {
        return this.salaryUpdateResult;
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffName$1 */
    /* JADX INFO: compiled from: EditProfileViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffName$1", m2735f = "EditProfileViewModel.kt", m2736i = {}, m2737l = {29, 29}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38501 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $newName;
        final /* synthetic */ String $staffId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38501(String str, String str2, Continuation<? super C38501> continuation) {
            super(2, continuation);
            this.$staffId = str;
            this.$newName = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EditProfileViewModel.this.new C38501(this.$staffId, this.$newName, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38501) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                MutableLiveData<Result<Unit>> nameUpdateResult = EditProfileViewModel.this.getNameUpdateResult();
                Result.Companion companion = Result.INSTANCE;
                nameUpdateResult.postValue(Result.m3324boximpl(Result.m3325constructorimpl(ResultKt.createFailure(e))));
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = EditProfileViewModel.this.keepRepository.updateUserName(this.$staffId, new UpdateUserNameRequestBody(this.$newName), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    MutableLiveData<Result<Unit>> nameUpdateResult2 = EditProfileViewModel.this.getNameUpdateResult();
                    Result.Companion companion2 = Result.INSTANCE;
                    nameUpdateResult2.postValue(Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE)));
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel.updateStaffName.1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<GetUserResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<GetUserResponse> networkResult, Continuation<? super Unit> continuation) {
                    return Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            MutableLiveData<Result<Unit>> nameUpdateResult22 = EditProfileViewModel.this.getNameUpdateResult();
            Result.Companion companion22 = Result.INSTANCE;
            nameUpdateResult22.postValue(Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE)));
            return Unit.INSTANCE;
        }
    }

    public final void updateStaffName(String staffId, String newName) {
        Intrinsics.checkNotNullParameter(staffId, "staffId");
        Intrinsics.checkNotNullParameter(newName, "newName");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38501(staffId, newName, null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffSalary$1 */
    /* JADX INFO: compiled from: EditProfileViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffSalary$1", m2735f = "EditProfileViewModel.kt", m2736i = {}, m2737l = {48, 48}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38521 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ double $salary;
        final /* synthetic */ String $salaryType;
        final /* synthetic */ String $staffId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38521(String str, double d, String str2, Continuation<? super C38521> continuation) {
            super(2, continuation);
            this.$salaryType = str;
            this.$salary = d;
            this.$staffId = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EditProfileViewModel.this.new C38521(this.$salaryType, this.$salary, this.$staffId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38521) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                MutableLiveData<Result<Unit>> salaryUpdateResult = EditProfileViewModel.this.getSalaryUpdateResult();
                Result.Companion companion = Result.INSTANCE;
                salaryUpdateResult.postValue(Result.m3324boximpl(Result.m3325constructorimpl(ResultKt.createFailure(e))));
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody = new AddOrUpdateSalaryRequestBody(this.$salaryType, this.$salary, EditProfileViewModel.this.getCurrentDateAsString());
                this.label = 1;
                obj = EditProfileViewModel.this.keepRepository.addOrUpdateSalary(this.$staffId, addOrUpdateSalaryRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    MutableLiveData<Result<Unit>> salaryUpdateResult2 = EditProfileViewModel.this.getSalaryUpdateResult();
                    Result.Companion companion2 = Result.INSTANCE;
                    salaryUpdateResult2.postValue(Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE)));
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel.updateStaffSalary.1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<String>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<String> networkResult, Continuation<? super Unit> continuation) {
                    return Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            MutableLiveData<Result<Unit>> salaryUpdateResult22 = EditProfileViewModel.this.getSalaryUpdateResult();
            Result.Companion companion22 = Result.INSTANCE;
            salaryUpdateResult22.postValue(Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE)));
            return Unit.INSTANCE;
        }
    }

    public final void updateStaffSalary(String staffId, String salaryType, double salary) {
        Intrinsics.checkNotNullParameter(staffId, "staffId");
        Intrinsics.checkNotNullParameter(salaryType, "salaryType");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38521(salaryType, salary, staffId, null), 3, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1 */
    /* JADX INFO: compiled from: EditProfileViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1", m2735f = "EditProfileViewModel.kt", m2736i = {}, m2737l = {67}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C38511 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $newName;
        final /* synthetic */ Double $salary;
        final /* synthetic */ boolean $salaryChanged;
        final /* synthetic */ String $salaryType;
        final /* synthetic */ String $staffId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C38511(boolean z, Double d, String str, String str2, String str3, Continuation<? super C38511> continuation) {
            super(2, continuation);
            this.$salaryChanged = z;
            this.$salary = d;
            this.$salaryType = str;
            this.$staffId = str2;
            this.$newName = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EditProfileViewModel.this.new C38511(this.$salaryChanged, this.$salary, this.$salaryType, this.$staffId, this.$newName, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C38511) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (CoroutineScopeKt.coroutineScope(new AnonymousClass1(this.$salaryChanged, this.$salary, this.$salaryType, EditProfileViewModel.this, this.$staffId, this.$newName, null), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Exception e) {
                MutableLiveData<Result<Unit>> updateResult = EditProfileViewModel.this.getUpdateResult();
                Result.Companion companion = Result.INSTANCE;
                updateResult.postValue(Result.m3324boximpl(Result.m3325constructorimpl(ResultKt.createFailure(e))));
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1$1, reason: invalid class name */
        /* JADX INFO: compiled from: EditProfileViewModel.kt */
        @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
        @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1$1", m2735f = "EditProfileViewModel.kt", m2736i = {}, m2737l = {94}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $newName;
            final /* synthetic */ Double $salary;
            final /* synthetic */ boolean $salaryChanged;
            final /* synthetic */ String $salaryType;
            final /* synthetic */ String $staffId;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ EditProfileViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(boolean z, Double d, String str, EditProfileViewModel editProfileViewModel, String str2, String str3, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$salaryChanged = z;
                this.$salary = d;
                this.$salaryType = str;
                this.this$0 = editProfileViewModel;
                this.$staffId = str2;
                this.$newName = str3;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$salaryChanged, this.$salary, this.$salaryType, this.this$0, this.$staffId, this.$newName, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new C49591(this.this$0, this.$staffId, this.$newName, null), 3, null));
                    if (this.$salaryChanged && this.$salary != null && this.$salaryType != null) {
                        arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new AnonymousClass2(this.this$0, this.$staffId, new AddOrUpdateSalaryRequestBody(this.$salaryType, this.$salary.doubleValue(), this.this$0.getCurrentDateAsString()), null), 3, null));
                    }
                    this.label = 1;
                    if (AwaitKt.awaitAll(arrayList, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                MutableLiveData<Result<Unit>> updateResult = this.this$0.getUpdateResult();
                Result.Companion companion = Result.INSTANCE;
                updateResult.postValue(Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE)));
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: EditProfileViewModel.kt */
            @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
            @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1$1$1", m2735f = "EditProfileViewModel.kt", m2736i = {}, m2737l = {72, 72}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
            static final class C49591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
                final /* synthetic */ String $newName;
                final /* synthetic */ String $staffId;
                int label;
                final /* synthetic */ EditProfileViewModel this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C49591(EditProfileViewModel editProfileViewModel, String str, String str2, Continuation<? super C49591> continuation) {
                    super(2, continuation);
                    this.this$0 = editProfileViewModel;
                    this.$staffId = str;
                    this.$newName = str2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C49591(this.this$0, this.$staffId, this.$newName, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Unit>> continuation) {
                    return invoke2(coroutineScope, (Continuation<? super Result<Unit>>) continuation);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<Unit>> continuation) {
                    return ((C49591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        obj = this.this$0.keepRepository.updateUserName(this.$staffId, new UpdateUserNameRequestBody(this.$newName), this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            if (i != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                            Result.Companion companion = Result.INSTANCE;
                            return Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE));
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    this.label = 2;
                    if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel.updateStaffProfile.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                            return emit((NetworkResult<GetUserResponse>) obj2, (Continuation<? super Unit>) continuation);
                        }

                        public final Object emit(NetworkResult<GetUserResponse> networkResult, Continuation<? super Unit> continuation) {
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Result.Companion companion2 = Result.INSTANCE;
                    return Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE));
                }
            }

            /* JADX INFO: renamed from: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: EditProfileViewModel.kt */
            @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
            @DebugMetadata(m2734c = "com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel$updateStaffProfile$1$1$2", m2735f = "EditProfileViewModel.kt", m2736i = {}, m2737l = {87, 87}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
            static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
                final /* synthetic */ AddOrUpdateSalaryRequestBody $body;
                final /* synthetic */ String $staffId;
                int label;
                final /* synthetic */ EditProfileViewModel this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(EditProfileViewModel editProfileViewModel, String str, AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.this$0 = editProfileViewModel;
                    this.$staffId = str;
                    this.$body = addOrUpdateSalaryRequestBody;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass2(this.this$0, this.$staffId, this.$body, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Unit>> continuation) {
                    return invoke2(coroutineScope, (Continuation<? super Result<Unit>>) continuation);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<Unit>> continuation) {
                    return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        obj = this.this$0.keepRepository.addOrUpdateSalary(this.$staffId, this.$body, this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            if (i != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                            Result.Companion companion = Result.INSTANCE;
                            return Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE));
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    this.label = 2;
                    if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.profile.viewmodel.EditProfileViewModel.updateStaffProfile.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                            return emit((NetworkResult<String>) obj2, (Continuation<? super Unit>) continuation);
                        }

                        public final Object emit(NetworkResult<String> networkResult, Continuation<? super Unit> continuation) {
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Result.Companion companion2 = Result.INSTANCE;
                    return Result.m3324boximpl(Result.m3325constructorimpl(Unit.INSTANCE));
                }
            }
        }
    }

    public final void updateStaffProfile(String staffId, String newName, String salaryType, Double salary, boolean salaryChanged) {
        Intrinsics.checkNotNullParameter(staffId, "staffId");
        Intrinsics.checkNotNullParameter(newName, "newName");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C38511(salaryChanged, salary, salaryType, staffId, newName, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getCurrentDateAsString() {
        String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(Calendar.getInstance().getTime());
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
