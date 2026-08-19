package com.rebuilt.app.keep.screen.calendar.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.model.NetworkResultStatus;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.repository.KeepRepository;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: OvertimeViewModel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J.\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0010J\u001e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001d\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;", "Landroidx/lifecycle/ViewModel;", "Lorg/koin/core/component/KoinComponent;", "repository", "Lcom/laborbook/keep/repository/KeepRepository;", "<init>", "(Lcom/laborbook/keep/repository/KeepRepository;)V", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "Lkotlin/Lazy;", "otResult", "Landroidx/lifecycle/MutableLiveData;", "Lkotlin/Result;", "", "getOtResult", "()Landroidx/lifecycle/MutableLiveData;", "addOvertime", "", "userId", "date", "otMinutes", "", "otPerHour", "managerId", "deleteOvertime", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class OvertimeViewModel extends ViewModel implements KoinComponent {

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;
    private final MutableLiveData<Result<String>> otResult;
    private final KeepRepository repository;

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OvertimeViewModel(KeepRepository repository) {
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.repository = repository;
        final OvertimeViewModel overtimeViewModel = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = overtimeViewModel;
                Qualifier qualifier2 = qualifier;
                Function0<? extends DefinitionParameters> function0 = objArr;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), qualifier2, function0);
            }
        });
        this.otResult = new MutableLiveData<>();
    }

    private final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    public final MutableLiveData<Result<String>> getOtResult() {
        return this.otResult;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel$addOvertime$1 */
    /* JADX INFO: compiled from: OvertimeViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel$addOvertime$1", m2735f = "OvertimeViewModel.kt", m2736i = {}, m2737l = {31, 31}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37731 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $date;
        final /* synthetic */ String $managerId;
        final /* synthetic */ double $otMinutes;
        final /* synthetic */ double $otPerHour;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37731(String str, String str2, double d, double d2, String str3, Continuation<? super C37731> continuation) {
            super(2, continuation);
            this.$userId = str;
            this.$date = str2;
            this.$otMinutes = d;
            this.$otPerHour = d2;
            this.$managerId = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OvertimeViewModel.this.new C37731(this.$userId, this.$date, this.$otMinutes, this.$otPerHour, this.$managerId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37731) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                MutableLiveData<Result<String>> otResult = OvertimeViewModel.this.getOtResult();
                Result.Companion companion = Result.INSTANCE;
                otResult.postValue(Result.m3324boximpl(Result.m3325constructorimpl(ResultKt.createFailure(e))));
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = OvertimeViewModel.this.repository.addOvertime(this.$userId, this.$date, this.$otMinutes, this.$otPerHour, this.$managerId, this);
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
            final OvertimeViewModel overtimeViewModel = OvertimeViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel.addOvertime.1.1

                /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel$addOvertime$1$1$WhenMappings */
                /* JADX INFO: compiled from: OvertimeViewModel.kt */
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
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<String>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<String> networkResult, Continuation<? super Unit> continuation) {
                    int i2 = WhenMappings.$EnumSwitchMapping$0[networkResult.getStatus().ordinal()];
                    if (i2 == 1) {
                        MutableLiveData<Result<String>> otResult2 = overtimeViewModel.getOtResult();
                        Result.Companion companion2 = Result.INSTANCE;
                        String data = networkResult.getData();
                        if (data == null) {
                            data = "OT added successfully";
                        }
                        otResult2.postValue(Result.m3324boximpl(Result.m3325constructorimpl(data)));
                    } else if (i2 == 2) {
                        MutableLiveData<Result<String>> otResult3 = overtimeViewModel.getOtResult();
                        Result.Companion companion3 = Result.INSTANCE;
                        String message = networkResult.getMessage();
                        if (message == null) {
                            message = "Unknown error";
                        }
                        otResult3.postValue(Result.m3324boximpl(Result.m3325constructorimpl(ResultKt.createFailure(new Throwable(message)))));
                    }
                    return Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final void addOvertime(String userId, String date, double otMinutes, double otPerHour, String managerId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(managerId, "managerId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C37731(userId, date, otMinutes, otPerHour, managerId, null), 3, null);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel$deleteOvertime$1 */
    /* JADX INFO: compiled from: OvertimeViewModel.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel$deleteOvertime$1", m2735f = "OvertimeViewModel.kt", m2736i = {}, m2737l = {51, 51}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37741 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $date;
        final /* synthetic */ String $managerId;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37741(String str, String str2, String str3, Continuation<? super C37741> continuation) {
            super(2, continuation);
            this.$userId = str;
            this.$date = str2;
            this.$managerId = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OvertimeViewModel.this.new C37741(this.$userId, this.$date, this.$managerId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37741) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                MutableLiveData<Result<String>> otResult = OvertimeViewModel.this.getOtResult();
                Result.Companion companion = Result.INSTANCE;
                otResult.postValue(Result.m3324boximpl(Result.m3325constructorimpl(ResultKt.createFailure(e))));
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = OvertimeViewModel.this.repository.deleteOvertime(this.$userId, this.$date, this.$managerId, this);
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
            final OvertimeViewModel overtimeViewModel = OvertimeViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel.deleteOvertime.1.1

                /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.calendar.viewmodel.OvertimeViewModel$deleteOvertime$1$1$WhenMappings */
                /* JADX INFO: compiled from: OvertimeViewModel.kt */
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
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<String>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<String> networkResult, Continuation<? super Unit> continuation) {
                    int i2 = WhenMappings.$EnumSwitchMapping$0[networkResult.getStatus().ordinal()];
                    if (i2 == 1) {
                        MutableLiveData<Result<String>> otResult2 = overtimeViewModel.getOtResult();
                        Result.Companion companion2 = Result.INSTANCE;
                        String data = networkResult.getData();
                        if (data == null) {
                            data = "OT removed successfully";
                        }
                        otResult2.postValue(Result.m3324boximpl(Result.m3325constructorimpl(data)));
                    } else if (i2 == 2) {
                        MutableLiveData<Result<String>> otResult3 = overtimeViewModel.getOtResult();
                        Result.Companion companion3 = Result.INSTANCE;
                        String message = networkResult.getMessage();
                        if (message == null) {
                            message = "Unknown error";
                        }
                        otResult3.postValue(Result.m3324boximpl(Result.m3325constructorimpl(ResultKt.createFailure(new Throwable(message)))));
                    }
                    return Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final void deleteOvertime(String userId, String date, String managerId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(managerId, "managerId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C37741(userId, date, managerId, null), 3, null);
    }
}
