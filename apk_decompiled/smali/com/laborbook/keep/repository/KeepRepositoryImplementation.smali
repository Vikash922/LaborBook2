.class public final Lcom/laborbook/keep/repository/KeepRepositoryImplementation;
.super Ljava/lang/Object;
.source "KeepRepositoryImplementation.kt"

# interfaces
.implements Lcom/laborbook/keep/repository/KeepRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0096@\u00a2\u0006\u0002\u0010\rJ\"\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u0011\"\u00020\u000cH\u0096@\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\rJ$\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001aJ4\u0010\u001b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001fJ,\u0010 \u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"H\u0096@\u00a2\u0006\u0002\u0010#J,\u0010$\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020%H\u0096@\u00a2\u0006\u0002\u0010&J$\u0010\'\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010(\u001a\u00020)H\u0096@\u00a2\u0006\u0002\u0010*J$\u0010+\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010,0\u00160\u00152\u0006\u0010-\u001a\u00020.H\u0096@\u00a2\u0006\u0002\u0010/J$\u00100\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001aJ,\u00101\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001020\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u00103\u001a\u000204H\u0096@\u00a2\u0006\u0002\u00105JD\u00106\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u00108\u001a\u00020\u00192\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010=J4\u0010>\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u00108\u001a\u00020\u00192\u0006\u0010<\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001fJ$\u0010?\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001020\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001aJ,\u0010@\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010A\u001a\u00020BH\u0096@\u00a2\u0006\u0002\u0010CJ,\u0010D\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u0010E\u001a\u00020FH\u0096@\u00a2\u0006\u0002\u0010GJ4\u0010H\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010I0\u00160\u00152\u0006\u00107\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020J2\u0006\u0010\u001e\u001a\u00020JH\u0096@\u00a2\u0006\u0002\u0010KJ$\u0010L\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010M0\u00160\u00152\u0006\u00107\u001a\u00020\u0019H\u0096@\u00a2\u0006\u0002\u0010\u001aR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/laborbook/keep/repository/KeepRepositoryImplementation;",
        "Lcom/laborbook/keep/repository/KeepRepository;",
        "keepNetworkModule",
        "Lcom/laborbook/keep/network/KeepNetworkModule;",
        "contactDao",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactDao;",
        "<init>",
        "(Lcom/laborbook/keep/network/KeepNetworkModule;Lcom/laborbook/keep/screen/addstaff/model/ContactDao;)V",
        "getKeepNetworkModule",
        "()Lcom/laborbook/keep/network/KeepNetworkModule;",
        "getAllContacts",
        "",
        "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "insertContacts",
        "",
        "contacts",
        "",
        "([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteAllContacts",
        "getStaffs",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/boilerplate/network/model/NetworkResult;",
        "Lcom/laborbook/keep/model/StaffUserResponseModel;",
        "id",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUserAttendances",
        "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
        "month",
        "year",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markBulkAttendance",
        "markAttendanceBody",
        "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markSingleAttendance",
        "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
        "updateUserName",
        "Lcom/laborbook/keep/model/GetUserResponse;",
        "updateUserNameRequestBody",
        "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addOvertime",
        "userId",
        "date",
        "otMinutes",
        "",
        "otPerHour",
        "managerId",
        "(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteOvertime",
        "getUser",
        "addAdvance",
        "addAdvanceRequestBody",
        "Lcom/laborbook/keep/model/AddAdvanceRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addOrUpdateSalary",
        "body",
        "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUserSalary",
        "Lcom/laborbook/keep/model/SalaryData;",
        "",
        "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCurrentSalary",
        "Lcom/laborbook/keep/model/CurrentSalaryResponse;",
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


# instance fields
.field private final contactDao:Lcom/laborbook/keep/screen/addstaff/model/ContactDao;

.field private final keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/network/KeepNetworkModule;Lcom/laborbook/keep/screen/addstaff/model/ContactDao;)V
    .locals 1

    const-string v0, "keepNetworkModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactDao"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    iput-object p2, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->contactDao:Lcom/laborbook/keep/screen/addstaff/model/ContactDao;

    return-void
.end method


# virtual methods
.method public addAdvance(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/AddAdvanceRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/keep/network/KeepNetworkModule;->addAdvance(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addOrUpdateSalary(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/keep/network/KeepNetworkModule;->addOrUpdateSalary(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addOvertime(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    .line 75
    iget-object v1, v0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/laborbook/keep/network/KeepNetworkModule;->saveOvertime(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public addStaffUser(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/AddStaffUserRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/AddStaffUserResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule;->addStaffUser(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addStaffUsers(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/AddStaffUsersRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule;->addStaffUsers(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->contactDao:Lcom/laborbook/keep/screen/addstaff/model/ContactDao;

    invoke-interface {v0, p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao;->deleteAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public deleteOvertime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/laborbook/keep/network/KeepNetworkModule;->deleteOvertime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteStaffUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule;->deleteStaffUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->contactDao:Lcom/laborbook/keep/screen/addstaff/model/ContactDao;

    invoke-interface {v0, p1}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao;->getAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentSalary(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/CurrentSalaryResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule;->getCurrentSalary(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKeepNetworkModule()Lcom/laborbook/keep/network/KeepNetworkModule;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    return-object v0
.end method

.method public getStaffs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/StaffUserResponseModel;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule;->getStaffUsers(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/GetUserResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2}, Lcom/laborbook/keep/network/KeepNetworkModule;->getUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUserAttendances(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/laborbook/keep/network/KeepNetworkModule;->getUserAttendances(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUserSalary(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/SalaryData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/laborbook/keep/network/KeepNetworkModule;->getUserSalary(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertContacts([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->contactDao:Lcom/laborbook/keep/screen/addstaff/model/ContactDao;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/screen/addstaff/model/ContactDao;->insertContacts([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public markBulkAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/keep/network/KeepNetworkModule;->markBulkAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public markSingleAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/keep/network/KeepNetworkModule;->markSingleAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateUserName(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/UpdateUserNameRequestBody;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Lcom/laborbook/keep/model/GetUserResponse;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/laborbook/keep/repository/KeepRepositoryImplementation;->keepNetworkModule:Lcom/laborbook/keep/network/KeepNetworkModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laborbook/keep/network/KeepNetworkModule;->updateUserName(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
