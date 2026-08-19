.class public interface abstract Lcom/laborbook/keep/network/KeepApi;
.super Ljava/lang/Object;
.source "KeepApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/network/KeepApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 I2\u00020\u0001:\u0001IJ$\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u00a7@\u00a2\u0006\u0002\u0010\u000cJ$\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00040\u00032\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0010H\u00a7@\u00a2\u0006\u0002\u0010\u0011J$\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J8\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0017J.\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u001aH\u00a7@\u00a2\u0006\u0002\u0010\u001bJ.\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u001eH\u00a7@\u00a2\u0006\u0002\u0010\u001fJB\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u001d\u001a\u00020!H\u00a7@\u00a2\u0006\u0002\u0010\"J.\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010%\u001a\u00020&H\u00a7@\u00a2\u0006\u0002\u0010\'J$\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J.\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010*\u001a\u00020+H\u00a7@\u00a2\u0006\u0002\u0010,J.\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u00072\u0008\u0008\u0001\u0010/\u001a\u00020\u001aH\u00a7@\u00a2\u0006\u0002\u0010\u001bJ.\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00040\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u00072\u0008\u0008\u0001\u0010/\u001a\u000201H\u00a7@\u00a2\u0006\u0002\u00102J8\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040\u00040\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0015\u001a\u0002052\u0008\u0008\u0001\u0010\u0016\u001a\u000205H\u00a7@\u00a2\u0006\u0002\u00106J$\u00107\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080\u00040\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J$\u00109\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020:0\u00040\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J$\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020<0\u00040\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008J.\u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020>0\u00040\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u00072\u0008\u0008\u0001\u0010?\u001a\u00020@H\u00a7@\u00a2\u0006\u0002\u0010AJ.\u0010B\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020C0\u00040\u00032\u0008\u0008\u0001\u0010D\u001a\u00020\u00072\u0008\u0008\u0001\u0010?\u001a\u00020EH\u00a7@\u00a2\u0006\u0002\u0010FJ$\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020H0\u00040\u00032\u0008\u0008\u0001\u0010D\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006J"
    }
    d2 = {
        "Lcom/laborbook/keep/network/KeepApi;",
        "",
        "getStaffUsers",
        "Lretrofit2/Response;",
        "Lcom/boilerplate/network/model/DataResponse;",
        "Lcom/laborbook/keep/model/StaffUserResponseModel;",
        "id",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addStaffUsers",
        "staffUsers",
        "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;",
        "(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addStaffUser",
        "Lcom/laborbook/keep/model/AddStaffUserResponse;",
        "staffUser",
        "Lcom/laborbook/keep/model/AddStaffUserRequestBody;",
        "(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteStaffUser",
        "getUserAttendance",
        "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
        "month",
        "year",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveOvertime",
        "overtime",
        "Lcom/laborbook/keep/model/OvertimeRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/OvertimeRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markBulkAttendance",
        "markAttendanceBody",
        "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markSingleAttendance",
        "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateUserName",
        "Lcom/laborbook/keep/model/GetUserResponse;",
        "updateUserNameRequestBody",
        "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUser",
        "addAdvance",
        "addAdvanceRequestBody",
        "Lcom/laborbook/keep/model/AddAdvanceRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addOvertime",
        "userId",
        "body",
        "addOrUpdateSalary",
        "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUserSalary",
        "Lcom/laborbook/keep/model/SalaryData;",
        "",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCurrentSalary",
        "Lcom/laborbook/keep/model/CurrentSalaryResponse;",
        "getSubscriptionPlans",
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlansResponse;",
        "getUserSubscription",
        "Lcom/laborbook/keep/model/subscription/UserSubscription;",
        "createSubscription",
        "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
        "request",
        "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "verifySubscription",
        "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;",
        "subscriptionId",
        "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelSubscription",
        "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;",
        "Companion",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ADD_ADVANCE:Ljava/lang/String; = "/user/{id}/advance"

.field public static final ADD_OT:Ljava/lang/String; = "/user/{user_id}/ot"

.field public static final API_VERSION:Ljava/lang/String; = "api/v1"

.field public static final Companion:Lcom/laborbook/keep/network/KeepApi$Companion;

.field public static final MARK_BULK_ATTENDANCE:Ljava/lang/String; = "/user/{id}/attendances"

.field public static final MARK_SINGLE_ATTENDANCE:Ljava/lang/String; = "/user/{id}/attendance"

.field public static final SAVE_OVERTIME:Ljava/lang/String; = "/user/{id}/overtime"

.field public static final STAFF:Ljava/lang/String; = "/user"

.field public static final STAFFS:Ljava/lang/String; = "/users"

.field public static final USER:Ljava/lang/String; = "/user/{id}"

.field public static final USER_ATTENDANCE:Ljava/lang/String; = "/user/{id}/attendances"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/laborbook/keep/network/KeepApi$Companion;->$$INSTANCE:Lcom/laborbook/keep/network/KeepApi$Companion;

    sput-object v0, Lcom/laborbook/keep/network/KeepApi;->Companion:Lcom/laborbook/keep/network/KeepApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract addAdvance(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/AddAdvanceRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/AddAdvanceRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "api/v1/user/{id}/advance"
    .end annotation
.end method

.method public abstract addOrUpdateSalary(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/users/{user_id}/salaries"
    .end annotation
.end method

.method public abstract addOvertime(Ljava/lang/String;Lcom/laborbook/keep/model/OvertimeRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/OvertimeRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/OvertimeRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/v1/user/{user_id}/ot"
    .end annotation
.end method

.method public abstract addStaffUser(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/laborbook/keep/model/AddStaffUserRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/AddStaffUserRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/AddStaffUserResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/user"
    .end annotation
.end method

.method public abstract addStaffUsers(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/laborbook/keep/model/AddStaffUsersRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/users"
    .end annotation
.end method

.method public abstract cancelSubscription(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "subscription_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/subscription/CancelSubscriptionResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/subscriptions/{subscription_id}/cancel"
    .end annotation
.end method

.method public abstract createSubscription(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/CreateSubscriptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/subscription/CreateSubscriptionResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/subscriptions"
    .end annotation
.end method

.method public abstract deleteStaffUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "api/v1/user/{id}"
    .end annotation
.end method

.method public abstract getCurrentSalary(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/CurrentSalaryResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/users/{user_id}/salaries/current"
    .end annotation
.end method

.method public abstract getStaffUsers(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "manager_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/StaffUserResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/users"
    .end annotation
.end method

.method public abstract getSubscriptionPlans(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlansResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/subscription-plans"
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/GetUserResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/user/{id}"
    .end annotation
.end method

.method public abstract getUserAttendance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "month"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "year"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/user/{id}/attendances"
    .end annotation
.end method

.method public abstract getUserSalary(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "month"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "year"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/SalaryData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/users/{user_id}/salaries"
    .end annotation
.end method

.method public abstract getUserSubscription(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/subscription/UserSubscription;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/v1/users/{user_id}/subscription"
    .end annotation
.end method

.method public abstract markBulkAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/user/{id}/attendances"
    .end annotation
.end method

.method public abstract markSingleAttendance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "month"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "year"
        .end annotation
    .end param
    .param p4    # Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "api/v1/user/{id}/attendance"
    .end annotation
.end method

.method public abstract saveOvertime(Ljava/lang/String;Lcom/laborbook/keep/model/OvertimeRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/OvertimeRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/OvertimeRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/user/{id}/overtime"
    .end annotation
.end method

.method public abstract updateUserName(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/UpdateUserNameRequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/GetUserResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "api/v1/user/{id}"
    .end annotation
.end method

.method public abstract verifySubscription(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "subscription_id"
        .end annotation
    .end param
    .param p2    # Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/VerifySubscriptionRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/boilerplate/network/model/DataResponse<",
            "Lcom/laborbook/keep/model/subscription/VerifySubscriptionResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/v1/subscriptions/{subscription_id}/verify"
    .end annotation
.end method
