package com.laborbook.keep.network;

import com.amplitude.core.events.Identify;
import com.boilerplate.network.NetworkHandler;
import com.boilerplate.network.model.DataResponse;
import com.boilerplate.network.model.NetworkResult;
import com.facebook.appevents.UserDataStore;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.laborbook.keep.database.AppDatabase;
import com.laborbook.keep.model.AddAdvanceRequestBody;
import com.laborbook.keep.model.AddOrUpdateSalaryRequestBody;
import com.laborbook.keep.model.AddStaffUserRequestBody;
import com.laborbook.keep.model.AddStaffUserResponse;
import com.laborbook.keep.model.AddStaffUsersRequestBody;
import com.laborbook.keep.model.CurrentSalaryResponse;
import com.laborbook.keep.model.GetUserResponse;
import com.laborbook.keep.model.MarkBulkAttendanceRequestBody;
import com.laborbook.keep.model.MarkSingleAttendanceRequestBody;
import com.laborbook.keep.model.OvertimeRequestBody;
import com.laborbook.keep.model.SalaryData;
import com.laborbook.keep.model.StaffAttendanceResponse;
import com.laborbook.keep.model.StaffUserResponseModel;
import com.laborbook.keep.model.UpdateUserNameRequestBody;
import com.laborbook.keep.model.subscription.CancelSubscriptionResponse;
import com.laborbook.keep.model.subscription.CreateSubscriptionRequest;
import com.laborbook.keep.model.subscription.CreateSubscriptionResponse;
import com.laborbook.keep.model.subscription.SubscriptionPlansResponse;
import com.laborbook.keep.model.subscription.UserSubscription;
import com.laborbook.keep.model.subscription.VerifySubscriptionRequest;
import com.laborbook.keep.model.subscription.VerifySubscriptionResponse;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.Flow;
import org.objectweb.asm.Opcodes;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: KeepNetworkModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000ä\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\u0013J$\u0010\u0014\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0086@¢\u0006\u0002\u0010\u0017J$\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00100\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0086@¢\u0006\u0002\u0010\u001cJ$\u0010\u001d\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\u0013J4\u0010\u001e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\"J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010 \u001a\u00020\tH\u0002J,\u0010)\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010*\u001a\u00020+H\u0086@¢\u0006\u0002\u0010,J,\u0010-\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010*\u001a\u00020.H\u0086@¢\u0006\u0002\u0010/J\u001e\u00100\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t012\b\u00102\u001a\u0004\u0018\u00010\tH\u0002J,\u00103\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001040\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u00105\u001a\u000206H\u0086@¢\u0006\u0002\u00107JD\u00108\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\t2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020<2\u0006\u0010>\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010?J4\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\t2\u0006\u0010>\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\"J$\u0010A\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001040\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\u0013J,\u0010B\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010C\u001a\u00020DH\u0086@¢\u0006\u0002\u0010EJ,\u0010F\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00100\u000f2\u0006\u00109\u001a\u00020\t2\u0006\u0010G\u001a\u00020HH\u0086@¢\u0006\u0002\u0010IJ4\u0010J\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010K0\u00100\u000f2\u0006\u00109\u001a\u00020\t2\u0006\u0010 \u001a\u00020L2\u0006\u0010!\u001a\u00020LH\u0086@¢\u0006\u0002\u0010MJ$\u0010N\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010O0\u00100\u000f2\u0006\u00109\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\u0013J$\u0010P\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010Q0\u00100\u000f2\u0006\u00109\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\u0013J$\u0010R\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010S0\u00100\u000f2\u0006\u00109\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\u0013J,\u0010T\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010U0\u00100\u000f2\u0006\u00109\u001a\u00020\t2\u0006\u0010V\u001a\u00020WH\u0086@¢\u0006\u0002\u0010XJ,\u0010Y\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010Z0\u00100\u000f2\u0006\u0010[\u001a\u00020\t2\u0006\u0010V\u001a\u00020\\H\u0086@¢\u0006\u0002\u0010]J$\u0010^\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010_0\u00100\u000f2\u0006\u0010[\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006`"}, m2722d2 = {"Lcom/laborbook/keep/network/KeepNetworkModule;", "", UserDataStore.DATE_OF_BIRTH, "Lcom/laborbook/keep/database/AppDatabase;", "<init>", "(Lcom/laborbook/keep/database/AppDatabase;)V", "getDb", "()Lcom/laborbook/keep/database/AppDatabase;", "baseUrl", "", "networkHandler", "Lcom/boilerplate/network/NetworkHandler;", "api", "Lcom/laborbook/keep/network/KeepApi;", "getStaffUsers", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Lcom/laborbook/keep/model/StaffUserResponseModel;", "id", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUsers", "staffUsers", "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUser", "Lcom/laborbook/keep/model/AddStaffUserResponse;", "staffUser", "Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteStaffUser", "getUserAttendances", "Lcom/laborbook/keep/model/StaffAttendanceResponse;", "month", "year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "buildAttendanceUserFromCalendarItems", "Lcom/laborbook/keep/model/AttendanceUser;", "cachedUser", "calendarItems", "", "Lcom/laborbook/keep/model/CalendarItem;", "markBulkAttendance", "markAttendanceBody", "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markSingleAttendance", "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "parseMonthYearFromAttendanceDate", "Lkotlin/Pair;", "attendanceDate", "updateUserName", "Lcom/laborbook/keep/model/GetUserResponse;", "updateUserNameRequestBody", "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveOvertime", "userId", "date", "otMinutes", "", "otPerHour", "managerId", "(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteOvertime", "getUser", "addAdvance", "addAdvanceRequestBody", "Lcom/laborbook/keep/model/AddAdvanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addOrUpdateSalary", SDKConstants.PARAM_A2U_BODY, "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSalary", "Lcom/laborbook/keep/model/SalaryData;", "", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCurrentSalary", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "getSubscriptionPlans", "Lcom/laborbook/keep/model/subscription/SubscriptionPlansResponse;", "getUserSubscription", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "createSubscription", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "request", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "verifySubscription", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;", "subscriptionId", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelSubscription", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class KeepNetworkModule {
    private final KeepApi api;
    private final String baseUrl;
    private final AppDatabase db;
    private final NetworkHandler networkHandler;

    public KeepNetworkModule(AppDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        this.db = db;
        this.baseUrl = "https://api.laborbook.app/";
        NetworkHandler companion = NetworkHandler.INSTANCE.getInstance();
        this.networkHandler = companion;
        this.api = (KeepApi) new Retrofit.Builder().baseUrl("https://api.laborbook.app/").client(companion.getOkHttpClient()).addConverterFactory(GsonConverterFactory.create()).build().create(KeepApi.class);
    }

    public final AppDatabase getDb() {
        return this.db;
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/StaffUserResponseModel;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {34}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36672 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<StaffUserResponseModel>>>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36672(String str, Continuation<? super C36672> continuation) {
            super(1, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36672(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<StaffUserResponseModel>>> continuation) {
            return ((C36672) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.getStaffUsers(this.$id, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object getStaffUsers(String str, Continuation<? super Flow<NetworkResult<StaffUserResponseModel>>> continuation) {
        return this.networkHandler.getCachedData(new C36672(str, null), new C36683(null), new C36694(null), new C36705(null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$3 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "", "Lcom/laborbook/keep/model/StaffUserResponseModel;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$3", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {35}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36683 extends SuspendLambda implements Function1<Continuation<? super List<? extends StaffUserResponseModel>>, Object> {
        int label;

        C36683(Continuation<? super C36683> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36683(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super List<? extends StaffUserResponseModel>> continuation) {
            return invoke2((Continuation<? super List<StaffUserResponseModel>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<? super List<StaffUserResponseModel>> continuation) {
            return ((C36683) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.getDb().staffUserDao().getAllStaffUsers(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return CollectionsKt.listOf(new StaffUserResponseModel((List) obj));
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$4 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "it", "Lcom/laborbook/keep/model/StaffUserResponseModel;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$4", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {36}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36694 extends SuspendLambda implements Function2<StaffUserResponseModel, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C36694(Continuation<? super C36694> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C36694 c36694 = KeepNetworkModule.this.new C36694(continuation);
            c36694.L$0 = obj;
            return c36694;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(StaffUserResponseModel staffUserResponseModel, Continuation<? super Unit> continuation) {
            return ((C36694) create(staffUserResponseModel, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                StaffUserResponseModel staffUserResponseModel = (StaffUserResponseModel) this.L$0;
                this.label = 1;
                if (KeepNetworkModule.this.getDb().staffUserDao().insertStaffUsers(staffUserResponseModel.getUsers(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$5 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    @Metadata(m2721d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, m2722d2 = {"<anonymous>", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getStaffUsers$5", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {37}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36705 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        C36705(Continuation<? super C36705> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36705(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C36705) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (KeepNetworkModule.this.getDb().staffUserDao().deleteAllStaffs(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$addStaffUsers$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$addStaffUsers$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {43}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36612 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ AddStaffUsersRequestBody $staffUsers;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36612(AddStaffUsersRequestBody addStaffUsersRequestBody, Continuation<? super C36612> continuation) {
            super(1, continuation);
            this.$staffUsers = addStaffUsersRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36612(this.$staffUsers, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36612) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.addStaffUsers(this.$staffUsers, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object addStaffUsers(AddStaffUsersRequestBody addStaffUsersRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.networkHandler.getData(new C36612(addStaffUsersRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$addStaffUser$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/AddStaffUserResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$addStaffUser$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {49}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36602 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<AddStaffUserResponse>>>, Object> {
        final /* synthetic */ AddStaffUserRequestBody $staffUser;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36602(AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super C36602> continuation) {
            super(1, continuation);
            this.$staffUser = addStaffUserRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36602(this.$staffUser, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<AddStaffUserResponse>>> continuation) {
            return ((C36602) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.addStaffUser(this.$staffUser, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object addStaffUser(AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super Flow<NetworkResult<AddStaffUserResponse>>> continuation) {
        return this.networkHandler.getData(new C36602(addStaffUserRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$deleteStaffUser$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$deleteStaffUser$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {55}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36652 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36652(String str, Continuation<? super C36652> continuation) {
            super(1, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36652(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36652) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.deleteStaffUser(this.$id, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object deleteStaffUser(String str, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.networkHandler.getData(new C36652(str, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/StaffAttendanceResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {65}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36732 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<StaffAttendanceResponse>>>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ String $month;
        final /* synthetic */ String $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36732(String str, String str2, String str3, Continuation<? super C36732> continuation) {
            super(1, continuation);
            this.$id = str;
            this.$month = str2;
            this.$year = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36732(this.$id, this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<StaffAttendanceResponse>>> continuation) {
            return ((C36732) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.getUserAttendance(this.$id, this.$month, this.$year, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object getUserAttendances(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<StaffAttendanceResponse>>> continuation) {
        return this.networkHandler.getCachedData(new C36732(str, str2, str3, null), new C36743(str, str2, str3, null), new C36754(str, this, str2, str3, null), new C36765(str, str2, str3, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$3 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "", "Lcom/laborbook/keep/model/StaffAttendanceResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$3", m2735f = "KeepNetworkModule.kt", m2736i = {1}, m2737l = {67, 68}, m2738m = "invokeSuspend", m2739n = {"calendarItems"}, m2740s = {"L$0"})
    static final class C36743 extends SuspendLambda implements Function1<Continuation<? super List<? extends StaffAttendanceResponse>>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ String $month;
        final /* synthetic */ String $year;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36743(String str, String str2, String str3, Continuation<? super C36743> continuation) {
            super(1, continuation);
            this.$id = str;
            this.$month = str2;
            this.$year = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36743(this.$id, this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super List<? extends StaffAttendanceResponse>> continuation) {
            return invoke2((Continuation<? super List<StaffAttendanceResponse>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<? super List<StaffAttendanceResponse>> continuation) {
            return ((C36743) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(7:0|2|(1:(1:(10:6|36|7|22|27|(1:29)|30|(1:33)|34|35)(2:11|12))(1:13))(2:14|(1:16))|17|38|18|(1:20)(8:21|22|27|(0)|30|(1:33)|34|35)) */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0067, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
        
            r0 = r9;
            r9 = r0;
         */
        /* JADX WARN: Removed duplicated region for block: B:29:0x007b  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L24
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                java.lang.Object r0 = r8.L$0
                java.util.List r0 = (java.util.List) r0
                kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L16
                goto L60
            L16:
                r9 = move-exception
                goto L6b
            L18:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L20:
                kotlin.ResultKt.throwOnFailure(r9)
                goto L43
            L24:
                kotlin.ResultKt.throwOnFailure(r9)
                com.laborbook.keep.network.KeepNetworkModule r9 = com.laborbook.keep.network.KeepNetworkModule.this
                com.laborbook.keep.database.AppDatabase r9 = r9.getDb()
                com.laborbook.keep.screen.calendar.dao.CalendarItemDao r9 = r9.calendarItemDao()
                java.lang.String r1 = r8.$id
                java.lang.String r4 = r8.$month
                java.lang.String r5 = r8.$year
                r6 = r8
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r8.label = r3
                java.lang.Object r9 = r9.getAllByIdMonthYear(r1, r4, r5, r6)
                if (r9 != r0) goto L43
                return r0
            L43:
                java.util.List r9 = (java.util.List) r9
                com.laborbook.keep.network.KeepNetworkModule r1 = com.laborbook.keep.network.KeepNetworkModule.this
                java.lang.String r3 = r8.$id
                kotlin.Result$Companion r4 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L67
                com.laborbook.keep.database.AppDatabase r1 = r1.getDb()     // Catch: java.lang.Throwable -> L67
                com.laborbook.keep.screen.calendar.dao.AttendanceUserDao r1 = r1.attendanceUserDao()     // Catch: java.lang.Throwable -> L67
                r8.L$0 = r9     // Catch: java.lang.Throwable -> L67
                r8.label = r2     // Catch: java.lang.Throwable -> L67
                java.lang.Object r1 = r1.getUserById(r3, r8)     // Catch: java.lang.Throwable -> L67
                if (r1 != r0) goto L5e
                return r0
            L5e:
                r0 = r9
                r9 = r1
            L60:
                com.laborbook.keep.model.AttendanceUser r9 = (com.laborbook.keep.model.AttendanceUser) r9     // Catch: java.lang.Throwable -> L16
                java.lang.Object r9 = kotlin.Result.m3325constructorimpl(r9)     // Catch: java.lang.Throwable -> L16
                goto L75
            L67:
                r0 = move-exception
                r7 = r0
                r0 = r9
                r9 = r7
            L6b:
                kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
                java.lang.Object r9 = kotlin.ResultKt.createFailure(r9)
                java.lang.Object r9 = kotlin.Result.m3325constructorimpl(r9)
            L75:
                boolean r1 = kotlin.Result.m3331isFailureimpl(r9)
                if (r1 == 0) goto L7c
                r9 = 0
            L7c:
                com.laborbook.keep.model.AttendanceUser r9 = (com.laborbook.keep.model.AttendanceUser) r9
                r1 = r0
                java.util.Collection r1 = (java.util.Collection) r1
                boolean r1 = r1.isEmpty()
                if (r1 != 0) goto L91
                if (r9 == 0) goto L91
                com.laborbook.keep.network.KeepNetworkModule r1 = com.laborbook.keep.network.KeepNetworkModule.this
                java.lang.String r2 = r8.$month
                com.laborbook.keep.model.AttendanceUser r9 = com.laborbook.keep.network.KeepNetworkModule.access$buildAttendanceUserFromCalendarItems(r1, r9, r0, r2)
            L91:
                com.laborbook.keep.model.StaffAttendanceResponse r1 = new com.laborbook.keep.model.StaffAttendanceResponse
                r1.<init>(r9, r0)
                java.util.List r9 = kotlin.collections.CollectionsKt.listOf(r1)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.network.KeepNetworkModule.C36743.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$4 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "it", "Lcom/laborbook/keep/model/StaffAttendanceResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$4", m2735f = "KeepNetworkModule.kt", m2736i = {0, 0, 1, 1, 2}, m2737l = {84, 90, 92, 94}, m2738m = "invokeSuspend", m2739n = {"it", "MAX_ENTRIES", "it", "MAX_ENTRIES", "it"}, m2740s = {"L$0", "I$0", "L$0", "I$0", "L$0"})
    static final class C36754 extends SuspendLambda implements Function2<StaffAttendanceResponse, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ String $month;
        final /* synthetic */ String $year;
        int I$0;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ KeepNetworkModule this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36754(String str, KeepNetworkModule keepNetworkModule, String str2, String str3, Continuation<? super C36754> continuation) {
            super(2, continuation);
            this.$id = str;
            this.this$0 = keepNetworkModule;
            this.$month = str2;
            this.$year = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C36754 c36754 = new C36754(this.$id, this.this$0, this.$month, this.$year, continuation);
            c36754.L$0 = obj;
            return c36754;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(StaffAttendanceResponse staffAttendanceResponse, Continuation<? super Unit> continuation) {
            return ((C36754) create(staffAttendanceResponse, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00de  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 247
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.network.KeepNetworkModule.C36754.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$5 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, m2722d2 = {"<anonymous>", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getUserAttendances$5", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {97, 98}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36765 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ String $month;
        final /* synthetic */ String $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36765(String str, String str2, String str3, Continuation<? super C36765> continuation) {
            super(1, continuation);
            this.$id = str;
            this.$month = str2;
            this.$year = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36765(this.$id, this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C36765) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (KeepNetworkModule.this.getDb().attendanceUserDao().deleteByUserId(this.$id, this) == coroutine_suspended) {
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
            this.label = 2;
            if (KeepNetworkModule.this.getDb().calendarItemDao().deleteByUserIdMonthYear(this.$id, this.$month, this.$year, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.laborbook.keep.model.AttendanceUser buildAttendanceUserFromCalendarItems(com.laborbook.keep.model.AttendanceUser r22, java.util.List<com.laborbook.keep.model.CalendarItem> r23, java.lang.String r24) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.keep.network.KeepNetworkModule.buildAttendanceUserFromCalendarItems(com.laborbook.keep.model.AttendanceUser, java.util.List, java.lang.String):com.laborbook.keep.model.AttendanceUser");
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$markBulkAttendance$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$markBulkAttendance$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {Opcodes.IF_ICMPGT}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36792 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ MarkBulkAttendanceRequestBody $markAttendanceBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36792(String str, MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super C36792> continuation) {
            super(1, continuation);
            this.$id = str;
            this.$markAttendanceBody = markBulkAttendanceRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36792(this.$id, this.$markAttendanceBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36792) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.markBulkAttendance(this.$id, this.$markAttendanceBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object markBulkAttendance(String str, MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.networkHandler.getData(new C36792(str, markBulkAttendanceRequestBody, null), continuation);
    }

    public final Object markSingleAttendance(String str, MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        Pair<String, String> monthYearFromAttendanceDate = parseMonthYearFromAttendanceDate(markSingleAttendanceRequestBody.getAttendance().getAttendanceDate());
        return this.networkHandler.getData(new C36802(str, monthYearFromAttendanceDate.component1(), monthYearFromAttendanceDate.component2(), markSingleAttendanceRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$markSingleAttendance$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$markSingleAttendance$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {Opcodes.DRETURN}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36802 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ MarkSingleAttendanceRequestBody $markAttendanceBody;
        final /* synthetic */ String $month;
        final /* synthetic */ String $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36802(String str, String str2, String str3, MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super C36802> continuation) {
            super(1, continuation);
            this.$id = str;
            this.$month = str2;
            this.$year = str3;
            this.$markAttendanceBody = markSingleAttendanceRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36802(this.$id, this.$month, this.$year, this.$markAttendanceBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36802) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.markSingleAttendance(this.$id, this.$month, this.$year, this.$markAttendanceBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    private final Pair<String, String> parseMonthYearFromAttendanceDate(String attendanceDate) {
        String str = attendanceDate;
        if (str != null && !StringsKt.isBlank(str)) {
            List listSplit$default = StringsKt.split$default((CharSequence) StringsKt.trim((CharSequence) str).toString(), new String[]{Identify.UNSET_VALUE}, false, 0, 6, (Object) null);
            if (listSplit$default.size() == 3) {
                String str2 = (String) CollectionsKt.getOrNull(listSplit$default, 0);
                Integer intOrNull = str2 != null ? StringsKt.toIntOrNull(str2) : null;
                String str3 = (String) CollectionsKt.getOrNull(listSplit$default, 1);
                Integer intOrNull2 = str3 != null ? StringsKt.toIntOrNull(str3) : null;
                String str4 = (String) CollectionsKt.getOrNull(listSplit$default, 2);
                Integer intOrNull3 = str4 != null ? StringsKt.toIntOrNull(str4) : null;
                if (intOrNull2 != null && intOrNull3 != null && intOrNull != null) {
                    return TuplesKt.m2729to(intOrNull2.toString(), intOrNull3.toString());
                }
            }
        }
        Calendar calendar = Calendar.getInstance();
        return TuplesKt.m2729to(String.valueOf(calendar.get(2) + 1), String.valueOf(calendar.get(1)));
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$updateUserName$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/GetUserResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$updateUserName$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {XMPError.BADSTREAM}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36822 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<GetUserResponse>>>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ UpdateUserNameRequestBody $updateUserNameRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36822(String str, UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super C36822> continuation) {
            super(1, continuation);
            this.$id = str;
            this.$updateUserNameRequestBody = updateUserNameRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36822(this.$id, this.$updateUserNameRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<GetUserResponse>>> continuation) {
            return ((C36822) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.updateUserName(this.$id, this.$updateUserNameRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object updateUserName(String str, UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation) {
        return this.networkHandler.getData(new C36822(str, updateUserNameRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$saveOvertime$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$saveOvertime$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {216}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36812 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ String $date;
        final /* synthetic */ String $managerId;
        final /* synthetic */ double $otMinutes;
        final /* synthetic */ double $otPerHour;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36812(String str, String str2, double d, double d2, String str3, Continuation<? super C36812> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$date = str2;
            this.$otMinutes = d;
            this.$otPerHour = d2;
            this.$managerId = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36812(this.$userId, this.$date, this.$otMinutes, this.$otPerHour, this.$managerId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36812) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.addOvertime(this.$userId, new OvertimeRequestBody(this.$date, Boxing.boxDouble(this.$otMinutes), Boxing.boxDouble(this.$otPerHour), this.$managerId), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object saveOvertime(String str, String str2, double d, double d2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.networkHandler.getData(new C36812(str, str2, d, d2, str3, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$deleteOvertime$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$deleteOvertime$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {229}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36642 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ String $date;
        final /* synthetic */ String $managerId;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36642(String str, String str2, String str3, Continuation<? super C36642> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$date = str2;
            this.$managerId = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36642(this.$userId, this.$date, this.$managerId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36642) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.addOvertime(this.$userId, new OvertimeRequestBody(this.$date, null, null, this.$managerId), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object deleteOvertime(String str, String str2, String str3, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.networkHandler.getData(new C36642(str, str2, str3, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getUser$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/GetUserResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getUser$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {238}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36722 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<GetUserResponse>>>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36722(String str, Continuation<? super C36722> continuation) {
            super(1, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36722(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<GetUserResponse>>> continuation) {
            return ((C36722) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.getUser(this.$id, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object getUser(String str, Continuation<? super Flow<NetworkResult<GetUserResponse>>> continuation) {
        return this.networkHandler.getData(new C36722(str, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$addAdvance$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$addAdvance$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {MetaDo.META_CREATEPALETTE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36582 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ AddAdvanceRequestBody $addAdvanceRequestBody;
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36582(String str, AddAdvanceRequestBody addAdvanceRequestBody, Continuation<? super C36582> continuation) {
            super(1, continuation);
            this.$id = str;
            this.$addAdvanceRequestBody = addAdvanceRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36582(this.$id, this.$addAdvanceRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36582) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.addAdvance(this.$id, this.$addAdvanceRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object addAdvance(String str, AddAdvanceRequestBody addAdvanceRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.networkHandler.getData(new C36582(str, addAdvanceRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$addOrUpdateSalary$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$addOrUpdateSalary$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {256}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36592 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<String>>>, Object> {
        final /* synthetic */ AddOrUpdateSalaryRequestBody $body;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36592(String str, AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super C36592> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$body = addOrUpdateSalaryRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36592(this.$userId, this.$body, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<String>>> continuation) {
            return ((C36592) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.addOrUpdateSalary(this.$userId, this.$body, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object addOrUpdateSalary(String str, AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super Flow<NetworkResult<String>>> continuation) {
        return this.networkHandler.getData(new C36592(str, addOrUpdateSalaryRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getUserSalary$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/SalaryData;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getUserSalary$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_CELLLENGTH}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36772 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<SalaryData>>>, Object> {
        final /* synthetic */ int $month;
        final /* synthetic */ String $userId;
        final /* synthetic */ int $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36772(String str, int i, int i2, Continuation<? super C36772> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$month = i;
            this.$year = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36772(this.$userId, this.$month, this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<SalaryData>>> continuation) {
            return ((C36772) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.getUserSalary(this.$userId, this.$month, this.$year, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object getUserSalary(String str, int i, int i2, Continuation<? super Flow<NetworkResult<SalaryData>>> continuation) {
        return this.networkHandler.getData(new C36772(str, i, i2, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getCurrentSalary$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/CurrentSalaryResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getCurrentSalary$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_MAKE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36662 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<CurrentSalaryResponse>>>, Object> {
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36662(String str, Continuation<? super C36662> continuation) {
            super(1, continuation);
            this.$userId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36662(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<CurrentSalaryResponse>>> continuation) {
            return ((C36662) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.getCurrentSalary(this.$userId, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object getCurrentSalary(String str, Continuation<? super Flow<NetworkResult<CurrentSalaryResponse>>> continuation) {
        return this.networkHandler.getData(new C36662(str, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getSubscriptionPlans$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/subscription/SubscriptionPlansResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getSubscriptionPlans$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {276}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36712 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<SubscriptionPlansResponse>>>, Object> {
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36712(String str, Continuation<? super C36712> continuation) {
            super(1, continuation);
            this.$userId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36712(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<SubscriptionPlansResponse>>> continuation) {
            return ((C36712) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.getSubscriptionPlans(this.$userId, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object getSubscriptionPlans(String str, Continuation<? super Flow<NetworkResult<SubscriptionPlansResponse>>> continuation) {
        return this.networkHandler.getData(new C36712(str, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$getUserSubscription$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/subscription/UserSubscription;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$getUserSubscription$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_MINSAMPLEVALUE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36782 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<UserSubscription>>>, Object> {
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36782(String str, Continuation<? super C36782> continuation) {
            super(1, continuation);
            this.$userId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36782(this.$userId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<UserSubscription>>> continuation) {
            return ((C36782) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.getUserSubscription(this.$userId, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object getUserSubscription(String str, Continuation<? super Flow<NetworkResult<UserSubscription>>> continuation) {
        return this.networkHandler.getData(new C36782(str, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$createSubscription$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$createSubscription$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_YPOSITION}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36632 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<CreateSubscriptionResponse>>>, Object> {
        final /* synthetic */ CreateSubscriptionRequest $request;
        final /* synthetic */ String $userId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36632(String str, CreateSubscriptionRequest createSubscriptionRequest, Continuation<? super C36632> continuation) {
            super(1, continuation);
            this.$userId = str;
            this.$request = createSubscriptionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36632(this.$userId, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<CreateSubscriptionResponse>>> continuation) {
            return ((C36632) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.createSubscription(this.$userId, this.$request, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object createSubscription(String str, CreateSubscriptionRequest createSubscriptionRequest, Continuation<? super Flow<NetworkResult<CreateSubscriptionResponse>>> continuation) {
        return this.networkHandler.getData(new C36632(str, createSubscriptionRequest, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$verifySubscription$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$verifySubscription$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {294}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36832 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<VerifySubscriptionResponse>>>, Object> {
        final /* synthetic */ VerifySubscriptionRequest $request;
        final /* synthetic */ String $subscriptionId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36832(String str, VerifySubscriptionRequest verifySubscriptionRequest, Continuation<? super C36832> continuation) {
            super(1, continuation);
            this.$subscriptionId = str;
            this.$request = verifySubscriptionRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36832(this.$subscriptionId, this.$request, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<VerifySubscriptionResponse>>> continuation) {
            return ((C36832) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.verifySubscription(this.$subscriptionId, this.$request, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object verifySubscription(String str, VerifySubscriptionRequest verifySubscriptionRequest, Continuation<? super Flow<NetworkResult<VerifySubscriptionResponse>>> continuation) {
        return this.networkHandler.getData(new C36832(str, verifySubscriptionRequest, null), continuation);
    }

    /* JADX INFO: renamed from: com.laborbook.keep.network.KeepNetworkModule$cancelSubscription$2 */
    /* JADX INFO: compiled from: KeepNetworkModule.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.keep.network.KeepNetworkModule$cancelSubscription$2", m2735f = "KeepNetworkModule.kt", m2736i = {}, m2737l = {300}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C36622 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<CancelSubscriptionResponse>>>, Object> {
        final /* synthetic */ String $subscriptionId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C36622(String str, Continuation<? super C36622> continuation) {
            super(1, continuation);
            this.$subscriptionId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return KeepNetworkModule.this.new C36622(this.$subscriptionId, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<CancelSubscriptionResponse>>> continuation) {
            return ((C36622) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = KeepNetworkModule.this.api.cancelSubscription(this.$subscriptionId, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object cancelSubscription(String str, Continuation<? super Flow<NetworkResult<CancelSubscriptionResponse>>> continuation) {
        return this.networkHandler.getData(new C36622(str, null), continuation);
    }
}
