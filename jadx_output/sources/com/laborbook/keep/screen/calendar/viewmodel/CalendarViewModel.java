package com.laborbook.keep.screen.calendar.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.model.NetworkResultStatus;
import com.laborbook.base.BaseViewModel;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.model.AttendanceItem;
import com.laborbook.keep.model.CurrentSalaryResponse;
import com.laborbook.keep.model.MarkBulkAttendanceRequestBody;
import com.laborbook.keep.model.MarkSingleAttendanceRequestBody;
import com.laborbook.keep.model.SalaryData;
import com.laborbook.keep.model.StaffAttendanceResponse;
import com.laborbook.keep.screen.calendar.uistate.CalendarUiState;
import com.laborbook.keep.usecase.KeepUseCase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
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
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: CalendarViewModel.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001aH\u0086@¢\u0006\u0002\u0010\u001bJ\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\fH\u0086@¢\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#J\u0006\u0010&\u001a\u00020'J\u000e\u0010(\u001a\u00020\u00182\u0006\u0010)\u001a\u00020\fJ\u0016\u0010*\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010+\u001a\u00020\u001aJ\u0016\u0010,\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010+\u001a\u00020\u001dJ\u001e\u0010-\u001a\u00020!2\u0006\u0010.\u001a\u00020#2\u0006\u0010$\u001a\u00020/2\u0006\u0010%\u001a\u00020/J\u0006\u00100\u001a\u00020\u0018J\u0006\u00101\u001a\u00020\u0018J\u000e\u00102\u001a\u00020!2\u0006\u0010.\u001a\u00020#R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00063"}, m2722d2 = {"Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;", "Lcom/laborbook/base/BaseViewModel;", "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;", "Lorg/koin/core/component/KoinComponent;", "keepUseCase", "Lcom/laborbook/keep/usecase/KeepUseCase;", "<init>", "(Lcom/laborbook/keep/usecase/KeepUseCase;)V", "getKeepUseCase", "()Lcom/laborbook/keep/usecase/KeepUseCase;", "attendanceItems", "", "Lcom/laborbook/keep/model/AttendanceItem;", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "Lkotlin/Lazy;", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "getAttendanceItems", "", "cleaAttendanceItems", "", "createMarkAttendanceRequestBody", "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createMarkSingleAttendanceRequestBody", "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "attendance", "(Lcom/laborbook/keep/model/AttendanceItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getStaffAttendances", "Lkotlinx/coroutines/Job;", "id", "", "month", "year", "isAttendancesMarked", "", "markAttendance", "attendanceItem", "markBulkAttendance", "markAttendanceBody", "markSingleAttendance", "fetchUserSalary", "userId", "", "startReportLoading", "stopReportLoading", "getCurrentSalary", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CalendarViewModel extends BaseViewModel<CalendarUiState> implements KoinComponent {
    private final List<AttendanceItem> attendanceItems;

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;
    private final CoroutineExceptionHandler exceptionHandler;
    private final KeepUseCase keepUseCase;

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkAttendanceRequestBody$1 */
    /* JADX INFO: compiled from: CalendarViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {44}, m2738m = "createMarkAttendanceRequestBody", m2739n = {}, m2740s = {})
    static final class C37661 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C37661(Continuation<? super C37661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CalendarViewModel.this.createMarkAttendanceRequestBody(this);
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkSingleAttendanceRequestBody$1 */
    /* JADX INFO: compiled from: CalendarViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {49}, m2738m = "createMarkSingleAttendanceRequestBody", m2739n = {}, m2740s = {})
    static final class C37671 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C37671(Continuation<? super C37671> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CalendarViewModel.this.createMarkSingleAttendanceRequestBody(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CalendarViewModel(KeepUseCase keepUseCase) {
        Intrinsics.checkNotNullParameter(keepUseCase, "keepUseCase");
        this.keepUseCase = keepUseCase;
        this.attendanceItems = new ArrayList();
        final CalendarViewModel calendarViewModel = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = calendarViewModel;
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
        this.exceptionHandler = new CalendarViewModel$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE, this);
    }

    public final KeepUseCase getKeepUseCase() {
        return this.keepUseCase;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    public final List<AttendanceItem> getAttendanceItems() {
        return this.attendanceItems;
    }

    public final void cleaAttendanceItems() {
        this.attendanceItems.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createMarkAttendanceRequestBody(kotlin.coroutines.Continuation<? super com.laborbook.keep.model.MarkBulkAttendanceRequestBody> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.C37661
            if (r0 == 0) goto L14
            r0 = r8
            com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkAttendanceRequestBody$1 r0 = (com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.C37661) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkAttendanceRequestBody$1 r0 = new com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkAttendanceRequestBody$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r0 = r0.L$0
            java.util.List r0 = (java.util.List) r0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L59
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L36:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.List<com.laborbook.keep.model.AttendanceItem> r8 = r7.attendanceItems
            com.laborbook.base.datastore.DataStoreManager r2 = r7.getDataStoreManager()
            com.laborbook.base.datastore.DataStoreManager$Companion r4 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r4 = r4.getUSER_ID()
            java.lang.String r5 = ""
            kotlinx.coroutines.flow.Flow r2 = r2.read(r4, r5)
            r0.L$0 = r8
            r0.label = r3
            java.lang.Object r0 = kotlinx.coroutines.flow.FlowKt.first(r2, r0)
            if (r0 != r1) goto L56
            return r1
        L56:
            r6 = r0
            r0 = r8
            r8 = r6
        L59:
            java.lang.String r8 = (java.lang.String) r8
            com.laborbook.keep.model.MarkBulkAttendanceRequestBody r1 = new com.laborbook.keep.model.MarkBulkAttendanceRequestBody
            r1.<init>(r0, r8)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.createMarkAttendanceRequestBody(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createMarkSingleAttendanceRequestBody(com.laborbook.keep.model.AttendanceItem r6, kotlin.coroutines.Continuation<? super com.laborbook.keep.model.MarkSingleAttendanceRequestBody> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.C37671
            if (r0 == 0) goto L14
            r0 = r7
            com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkSingleAttendanceRequestBody$1 r0 = (com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.C37671) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkSingleAttendanceRequestBody$1 r0 = new com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$createMarkSingleAttendanceRequestBody$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r6 = r0.L$0
            com.laborbook.keep.model.AttendanceItem r6 = (com.laborbook.keep.model.AttendanceItem) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
            com.laborbook.base.datastore.DataStoreManager r7 = r5.getDataStoreManager()
            com.laborbook.base.datastore.DataStoreManager$Companion r2 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getUSER_ID()
            java.lang.String r4 = ""
            kotlinx.coroutines.flow.Flow r7 = r7.read(r2, r4)
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r0)
            if (r7 != r1) goto L54
            return r1
        L54:
            java.lang.String r7 = (java.lang.String) r7
            com.laborbook.keep.model.MarkSingleAttendanceRequestBody r0 = new com.laborbook.keep.model.MarkSingleAttendanceRequestBody
            r0.<init>(r6, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.createMarkSingleAttendanceRequestBody(com.laborbook.keep.model.AttendanceItem, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getStaffAttendances$1 */
    /* JADX INFO: compiled from: CalendarViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getStaffAttendances$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {54, 54}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ String $month;
        final /* synthetic */ String $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37701(String str, String str2, String str3, Continuation<? super C37701> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$month = str2;
            this.$year = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CalendarViewModel.this.new C37701(this.$id, this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37701) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = CalendarViewModel.this.getKeepUseCase().getUserAttendances(this.$id, this.$month, this.$year, this);
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
            final CalendarViewModel calendarViewModel = CalendarViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.getStaffAttendances.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getStaffAttendances$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: CalendarViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getStaffAttendances$1$1$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49541 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<StaffAttendanceResponse> $it;
                    int label;
                    final /* synthetic */ CalendarViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getStaffAttendances$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: CalendarViewModel.kt */
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
                    C49541(NetworkResult<StaffAttendanceResponse> networkResult, CalendarViewModel calendarViewModel, Continuation<? super C49541> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = calendarViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49541(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49541) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                            StaffAttendanceResponse data = this.$it.getData();
                            uiState.setValue(data != null ? new CalendarUiState.GetStaffAttendanceSuccess(data) : null);
                        } else if (i == 2) {
                            MutableLiveData uiState2 = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            uiState2.setValue(new CalendarUiState.Error(message));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(CalendarUiState.Loading.INSTANCE);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<StaffAttendanceResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<StaffAttendanceResponse> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49541(networkResult, calendarViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job getStaffAttendances(String id, String month, String year) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(month, "month");
        Intrinsics.checkNotNullParameter(year, "year");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C37701(id, month, year, null), 2, null);
    }

    public final boolean isAttendancesMarked() {
        return this.attendanceItems.size() > 0;
    }

    public final void markAttendance(AttendanceItem attendanceItem) {
        Object next;
        Intrinsics.checkNotNullParameter(attendanceItem, "attendanceItem");
        Iterator<T> it = this.attendanceItems.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Intrinsics.areEqual(((AttendanceItem) next).getAttendanceDate(), attendanceItem.getAttendanceDate())) {
                    break;
                }
            }
        }
        AttendanceItem attendanceItem2 = (AttendanceItem) next;
        if (attendanceItem2 == null) {
            this.attendanceItems.add(attendanceItem);
        } else {
            if (Intrinsics.areEqual(attendanceItem2, attendanceItem)) {
                return;
            }
            List<AttendanceItem> list = this.attendanceItems;
            list.set(list.indexOf(attendanceItem2), attendanceItem);
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markBulkAttendance$1 */
    /* JADX INFO: compiled from: CalendarViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markBulkAttendance$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {94, 94}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37711 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ MarkBulkAttendanceRequestBody $markAttendanceBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37711(String str, MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super C37711> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$markAttendanceBody = markBulkAttendanceRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CalendarViewModel.this.new C37711(this.$id, this.$markAttendanceBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37711) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = CalendarViewModel.this.getKeepUseCase().markBulkAttendance(this.$id, this.$markAttendanceBody, this);
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
            final CalendarViewModel calendarViewModel = CalendarViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.markBulkAttendance.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markBulkAttendance$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: CalendarViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markBulkAttendance$1$1$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49551 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<String> $it;
                    int label;
                    final /* synthetic */ CalendarViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markBulkAttendance$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: CalendarViewModel.kt */
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
                    C49551(NetworkResult<String> networkResult, CalendarViewModel calendarViewModel, Continuation<? super C49551> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = calendarViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49551(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                            uiState.setValue(data != null ? new CalendarUiState.MarkBulkAttendanceSuccess(data) : null);
                        } else if (i == 2) {
                            MutableLiveData uiState2 = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            uiState2.setValue(new CalendarUiState.Error(message));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(CalendarUiState.Loading.INSTANCE);
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
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49551(networkResult, calendarViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job markBulkAttendance(String id, MarkBulkAttendanceRequestBody markAttendanceBody) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(markAttendanceBody, "markAttendanceBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C37711(id, markAttendanceBody, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markSingleAttendance$1 */
    /* JADX INFO: compiled from: CalendarViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markSingleAttendance$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {119, 119}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37721 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ MarkSingleAttendanceRequestBody $markAttendanceBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37721(String str, MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super C37721> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$markAttendanceBody = markSingleAttendanceRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CalendarViewModel.this.new C37721(this.$id, this.$markAttendanceBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37721) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = CalendarViewModel.this.getKeepUseCase().markSingleAttendance(this.$id, this.$markAttendanceBody, this);
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
            final CalendarViewModel calendarViewModel = CalendarViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.markSingleAttendance.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markSingleAttendance$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: CalendarViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markSingleAttendance$1$1$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49561 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<String> $it;
                    int label;
                    final /* synthetic */ CalendarViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$markSingleAttendance$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: CalendarViewModel.kt */
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
                    C49561(NetworkResult<String> networkResult, CalendarViewModel calendarViewModel, Continuation<? super C49561> continuation) {
                        super(2, continuation);
                        this.$it = networkResult;
                        this.this$0 = calendarViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49561(this.$it, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49561) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                            uiState.setValue(data != null ? new CalendarUiState.MarkBulkAttendanceSuccess(data) : null);
                        } else if (i == 2) {
                            MutableLiveData uiState2 = this.this$0.getUiState();
                            String message = this.$it.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            uiState2.setValue(new CalendarUiState.Error(message));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(CalendarUiState.Loading.INSTANCE);
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
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49561(networkResult, calendarViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job markSingleAttendance(String id, MarkSingleAttendanceRequestBody markAttendanceBody) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(markAttendanceBody, "markAttendanceBody");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C37721(id, markAttendanceBody, null), 2, null);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$fetchUserSalary$1 */
    /* JADX INFO: compiled from: CalendarViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$fetchUserSalary$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {Opcodes.I2B, Opcodes.I2B}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37681 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $month;
        final /* synthetic */ String $userId;
        final /* synthetic */ int $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37681(String str, int i, int i2, Continuation<? super C37681> continuation) {
            super(2, continuation);
            this.$userId = str;
            this.$month = i;
            this.$year = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CalendarViewModel.this.new C37681(this.$userId, this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37681) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CalendarViewModel.this.getUiState().postValue(new CalendarUiState.SalaryLoading(true));
                this.label = 1;
                obj = CalendarViewModel.this.getKeepUseCase().getUserSalary(this.$userId, this.$month, this.$year, this);
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
            final CalendarViewModel calendarViewModel = CalendarViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.fetchUserSalary.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$fetchUserSalary$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: CalendarViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$fetchUserSalary$1$1$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49521 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<SalaryData> $result;
                    int label;
                    final /* synthetic */ CalendarViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$fetchUserSalary$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: CalendarViewModel.kt */
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
                    C49521(NetworkResult<SalaryData> networkResult, CalendarViewModel calendarViewModel, Continuation<? super C49521> continuation) {
                        super(2, continuation);
                        this.$result = networkResult;
                        this.this$0 = calendarViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49521(this.$result, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49521) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        String message;
                        String message2;
                        String message3;
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$result.getStatus().ordinal()];
                        if (i == 1) {
                            SalaryData data = this.$result.getData();
                            if (data != null) {
                                this.this$0.getUiState().setValue(new CalendarUiState.GetUserSalarySuccess(data.getTotal_salary()));
                            }
                        } else if (i == 2) {
                            String message4 = this.$result.getMessage();
                            String str = "No salary data found for this month. Please add salary in the staff profile.";
                            if ((message4 == null || !StringsKt.contains((CharSequence) message4, (CharSequence) "Failed to fetch salary", true)) && (((message = this.$result.getMessage()) == null || !StringsKt.contains((CharSequence) message, (CharSequence) "Failed to calculate total salary", true)) && (((message2 = this.$result.getMessage()) == null || !StringsKt.contains((CharSequence) message2, (CharSequence) "salary", true)) && (message3 = this.$result.getMessage()) != null))) {
                                str = message3;
                            }
                            this.this$0.getUiState().setValue(new CalendarUiState.GetUserSalaryError(str));
                        } else if (i != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<SalaryData>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<SalaryData> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49521(networkResult, calendarViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job fetchUserSalary(String userId, int month, int year) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C37681(userId, month, year, null), 2, null);
    }

    public final void startReportLoading() {
        getUiState().setValue(new CalendarUiState.ReportLoading(true));
    }

    public final void stopReportLoading() {
        getUiState().setValue(new CalendarUiState.ReportLoading(false));
    }

    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getCurrentSalary$1 */
    /* JADX INFO: compiled from: CalendarViewModel.kt */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getCurrentSalary$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {Opcodes.INVOKESPECIAL, Opcodes.INVOKESPECIAL}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37691 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37691(String str, Continuation<? super C37691> continuation) {
            super(2, continuation);
            this.$userId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CalendarViewModel.this.new C37691(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C37691) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = CalendarViewModel.this.getKeepUseCase().getCurrentSalary(this.$userId, this);
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
            final CalendarViewModel calendarViewModel = CalendarViewModel.this;
            this.label = 2;
            if (((Flow) obj).collect(new FlowCollector() { // from class: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel.getCurrentSalary.1.1

                /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getCurrentSalary$1$1$1, reason: invalid class name and collision with other inner class name */
                /* JADX INFO: compiled from: CalendarViewModel.kt */
                @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getCurrentSalary$1$1$1", m2735f = "CalendarViewModel.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
                static final class C49531 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ NetworkResult<CurrentSalaryResponse> $result;
                    int label;
                    final /* synthetic */ CalendarViewModel this$0;

                    /* JADX INFO: renamed from: com.laborbook.keep.screen.calendar.viewmodel.CalendarViewModel$getCurrentSalary$1$1$1$WhenMappings */
                    /* JADX INFO: compiled from: CalendarViewModel.kt */
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
                    C49531(NetworkResult<CurrentSalaryResponse> networkResult, CalendarViewModel calendarViewModel, Continuation<? super C49531> continuation) {
                        super(2, continuation);
                        this.$result = networkResult;
                        this.this$0 = calendarViewModel;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new C49531(this.$result, this.this$0, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                        return ((C49531) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                        int i = WhenMappings.$EnumSwitchMapping$0[this.$result.getStatus().ordinal()];
                        if (i == 1) {
                            CurrentSalaryResponse data = this.$result.getData();
                            if (data != null) {
                                this.this$0.getUiState().setValue(new CalendarUiState.GetCurrentSalarySuccess(data));
                            }
                        } else if (i == 2) {
                            MutableLiveData uiState = this.this$0.getUiState();
                            String message = this.$result.getMessage();
                            if (message == null) {
                                message = "Failed to fetch current salary";
                            }
                            uiState.setValue(new CalendarUiState.GetCurrentSalaryError(message));
                        } else if (i == 3) {
                            this.this$0.getUiState().setValue(new CalendarUiState.CurrentSalaryLoading(true));
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit((NetworkResult<CurrentSalaryResponse>) obj2, (Continuation<? super Unit>) continuation);
                }

                public final Object emit(NetworkResult<CurrentSalaryResponse> networkResult, Continuation<? super Unit> continuation) throws Throwable {
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C49531(networkResult, calendarViewModel, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    public final Job getCurrentSalary(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), this.exceptionHandler.plus(Dispatchers.getIO()), null, new C37691(userId, null), 2, null);
    }
}
