package com.laborbook.keep.network;

import com.boilerplate.network.model.DataResponse;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
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
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: compiled from: KeepApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 I2\u00020\u0001:\u0001IJ$\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010\n\u001a\u00020\u000bH§@¢\u0006\u0002\u0010\fJ$\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\b\b\u0001\u0010\u000f\u001a\u00020\u0010H§@¢\u0006\u0002\u0010\u0011J$\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ8\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\u0015\u001a\u00020\u00072\b\b\u0001\u0010\u0016\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\u0017J.\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\u0019\u001a\u00020\u001aH§@¢\u0006\u0002\u0010\u001bJ.\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\u001d\u001a\u00020\u001eH§@¢\u0006\u0002\u0010\u001fJB\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010\u0015\u001a\u00020\u00072\b\b\u0001\u0010\u0016\u001a\u00020\u00072\b\b\u0001\u0010\u001d\u001a\u00020!H§@¢\u0006\u0002\u0010\"J.\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010%\u001a\u00020&H§@¢\u0006\u0002\u0010'J$\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ.\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00072\b\b\u0001\u0010*\u001a\u00020+H§@¢\u0006\u0002\u0010,J.\u0010-\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010.\u001a\u00020\u00072\b\b\u0001\u0010/\u001a\u00020\u001aH§@¢\u0006\u0002\u0010\u001bJ.\u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00040\u00032\b\b\u0001\u0010.\u001a\u00020\u00072\b\b\u0001\u0010/\u001a\u000201H§@¢\u0006\u0002\u00102J8\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002040\u00040\u00032\b\b\u0001\u0010.\u001a\u00020\u00072\b\b\u0001\u0010\u0015\u001a\u0002052\b\b\u0001\u0010\u0016\u001a\u000205H§@¢\u0006\u0002\u00106J$\u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002080\u00040\u00032\b\b\u0001\u0010.\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ$\u00109\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020:0\u00040\u00032\b\b\u0001\u0010.\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ$\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020<0\u00040\u00032\b\b\u0001\u0010.\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ.\u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020>0\u00040\u00032\b\b\u0001\u0010.\u001a\u00020\u00072\b\b\u0001\u0010?\u001a\u00020@H§@¢\u0006\u0002\u0010AJ.\u0010B\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020C0\u00040\u00032\b\b\u0001\u0010D\u001a\u00020\u00072\b\b\u0001\u0010?\u001a\u00020EH§@¢\u0006\u0002\u0010FJ$\u0010G\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020H0\u00040\u00032\b\b\u0001\u0010D\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\b¨\u0006J"}, m2722d2 = {"Lcom/laborbook/keep/network/KeepApi;", "", "getStaffUsers", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/StaffUserResponseModel;", "id", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUsers", "staffUsers", "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addStaffUser", "Lcom/laborbook/keep/model/AddStaffUserResponse;", "staffUser", "Lcom/laborbook/keep/model/AddStaffUserRequestBody;", "(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteStaffUser", "getUserAttendance", "Lcom/laborbook/keep/model/StaffAttendanceResponse;", "month", "year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveOvertime", "overtime", "Lcom/laborbook/keep/model/OvertimeRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/OvertimeRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markBulkAttendance", "markAttendanceBody", "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markSingleAttendance", "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateUserName", "Lcom/laborbook/keep/model/GetUserResponse;", "updateUserNameRequestBody", "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUser", "addAdvance", "addAdvanceRequestBody", "Lcom/laborbook/keep/model/AddAdvanceRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addOvertime", "userId", SDKConstants.PARAM_A2U_BODY, "addOrUpdateSalary", "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;", "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserSalary", "Lcom/laborbook/keep/model/SalaryData;", "", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCurrentSalary", "Lcom/laborbook/keep/model/CurrentSalaryResponse;", "getSubscriptionPlans", "Lcom/laborbook/keep/model/subscription/SubscriptionPlansResponse;", "getUserSubscription", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "createSubscription", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;", "request", "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "verifySubscription", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;", "subscriptionId", "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;", "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelSubscription", "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface KeepApi {
    public static final String ADD_ADVANCE = "/user/{id}/advance";
    public static final String ADD_OT = "/user/{user_id}/ot";
    public static final String API_VERSION = "api/v1";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String MARK_BULK_ATTENDANCE = "/user/{id}/attendances";
    public static final String MARK_SINGLE_ATTENDANCE = "/user/{id}/attendance";
    public static final String SAVE_OVERTIME = "/user/{id}/overtime";
    public static final String STAFF = "/user";
    public static final String STAFFS = "/users";
    public static final String USER = "/user/{id}";
    public static final String USER_ATTENDANCE = "/user/{id}/attendances";

    @PATCH("api/v1/user/{id}/advance")
    Object addAdvance(@Path("id") String str, @Body AddAdvanceRequestBody addAdvanceRequestBody, Continuation<? super Response<DataResponse<String>>> continuation);

    @POST("api/v1/users/{user_id}/salaries")
    Object addOrUpdateSalary(@Path("user_id") String str, @Body AddOrUpdateSalaryRequestBody addOrUpdateSalaryRequestBody, Continuation<? super Response<DataResponse<String>>> continuation);

    @PUT("api/v1/user/{user_id}/ot")
    Object addOvertime(@Path("user_id") String str, @Body OvertimeRequestBody overtimeRequestBody, Continuation<? super Response<DataResponse<String>>> continuation);

    @POST("api/v1/user")
    Object addStaffUser(@Body AddStaffUserRequestBody addStaffUserRequestBody, Continuation<? super Response<DataResponse<AddStaffUserResponse>>> continuation);

    @POST("api/v1/users")
    Object addStaffUsers(@Body AddStaffUsersRequestBody addStaffUsersRequestBody, Continuation<? super Response<DataResponse<String>>> continuation);

    @POST("api/v1/subscriptions/{subscription_id}/cancel")
    Object cancelSubscription(@Path("subscription_id") String str, Continuation<? super Response<DataResponse<CancelSubscriptionResponse>>> continuation);

    @POST("api/v1/subscriptions")
    Object createSubscription(@Query("user_id") String str, @Body CreateSubscriptionRequest createSubscriptionRequest, Continuation<? super Response<DataResponse<CreateSubscriptionResponse>>> continuation);

    @DELETE("api/v1/user/{id}")
    Object deleteStaffUser(@Path("id") String str, Continuation<? super Response<DataResponse<String>>> continuation);

    @GET("api/v1/users/{user_id}/salaries/current")
    Object getCurrentSalary(@Path("user_id") String str, Continuation<? super Response<DataResponse<CurrentSalaryResponse>>> continuation);

    @GET("api/v1/users")
    Object getStaffUsers(@Query("manager_id") String str, Continuation<? super Response<DataResponse<StaffUserResponseModel>>> continuation);

    @GET("api/v1/subscription-plans")
    Object getSubscriptionPlans(@Query("user_id") String str, Continuation<? super Response<DataResponse<SubscriptionPlansResponse>>> continuation);

    @GET("api/v1/user/{id}")
    Object getUser(@Path("id") String str, Continuation<? super Response<DataResponse<GetUserResponse>>> continuation);

    @GET("api/v1/user/{id}/attendances")
    Object getUserAttendance(@Path("id") String str, @Query("month") String str2, @Query("year") String str3, Continuation<? super Response<DataResponse<StaffAttendanceResponse>>> continuation);

    @GET("api/v1/users/{user_id}/salaries")
    Object getUserSalary(@Path("user_id") String str, @Query("month") int i, @Query("year") int i2, Continuation<? super Response<DataResponse<SalaryData>>> continuation);

    @GET("api/v1/users/{user_id}/subscription")
    Object getUserSubscription(@Path("user_id") String str, Continuation<? super Response<DataResponse<UserSubscription>>> continuation);

    @POST("api/v1/user/{id}/attendances")
    Object markBulkAttendance(@Path("id") String str, @Body MarkBulkAttendanceRequestBody markBulkAttendanceRequestBody, Continuation<? super Response<DataResponse<String>>> continuation);

    @PATCH("api/v1/user/{id}/attendance")
    Object markSingleAttendance(@Path("id") String str, @Query("month") String str2, @Query("year") String str3, @Body MarkSingleAttendanceRequestBody markSingleAttendanceRequestBody, Continuation<? super Response<DataResponse<String>>> continuation);

    @POST("api/v1/user/{id}/overtime")
    Object saveOvertime(@Path("id") String str, @Body OvertimeRequestBody overtimeRequestBody, Continuation<? super Response<DataResponse<String>>> continuation);

    @PUT("api/v1/user/{id}")
    Object updateUserName(@Path("id") String str, @Body UpdateUserNameRequestBody updateUserNameRequestBody, Continuation<? super Response<DataResponse<GetUserResponse>>> continuation);

    @POST("api/v1/subscriptions/{subscription_id}/verify")
    Object verifySubscription(@Path("subscription_id") String str, @Body VerifySubscriptionRequest verifySubscriptionRequest, Continuation<? super Response<DataResponse<VerifySubscriptionResponse>>> continuation);

    /* JADX INFO: compiled from: KeepApi.kt */
    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m2722d2 = {"Lcom/laborbook/keep/network/KeepApi$Companion;", "", "<init>", "()V", "API_VERSION", "", "STAFFS", "STAFF", "USER", "USER_ATTENDANCE", "MARK_BULK_ATTENDANCE", "MARK_SINGLE_ATTENDANCE", "ADD_ADVANCE", "SAVE_OVERTIME", "ADD_OT", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String ADD_ADVANCE = "/user/{id}/advance";
        public static final String ADD_OT = "/user/{user_id}/ot";
        public static final String API_VERSION = "api/v1";
        public static final String MARK_BULK_ATTENDANCE = "/user/{id}/attendances";
        public static final String MARK_SINGLE_ATTENDANCE = "/user/{id}/attendance";
        public static final String SAVE_OVERTIME = "/user/{id}/overtime";
        public static final String STAFF = "/user";
        public static final String STAFFS = "/users";
        public static final String USER = "/user/{id}";
        public static final String USER_ATTENDANCE = "/user/{id}/attendances";

        private Companion() {
        }
    }
}
