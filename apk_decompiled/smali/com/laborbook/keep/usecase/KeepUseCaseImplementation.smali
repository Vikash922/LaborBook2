.class public final Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;
.super Ljava/lang/Object;
.source "KeepUseCaseImplementation.kt"

# interfaces
.implements Lcom/laborbook/keep/usecase/KeepUseCase;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeepUseCaseImplementation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeepUseCaseImplementation.kt\ncom/laborbook/keep/usecase/KeepUseCaseImplementation\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,148:1\n37#2,2:149\n*S KotlinDebug\n*F\n+ 1 KeepUseCaseImplementation.kt\ncom/laborbook/keep/usecase/KeepUseCaseImplementation\n*L\n38#1:149,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0096@\u00a2\u0006\u0002\u0010\u000bJ\"\u0010\u000c\u001a\u00020\r2\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u000f\"\u00020\nH\u0096@\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0096@\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0003J$\u0010\u0019\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fJ4\u0010 \u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010$J,\u0010%\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'H\u0096@\u00a2\u0006\u0002\u0010(J,\u0010)\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020*H\u0096@\u00a2\u0006\u0002\u0010+J$\u0010,\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010-\u001a\u00020.H\u0096@\u00a2\u0006\u0002\u0010/J$\u00100\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001010\u001b0\u001a2\u0006\u00102\u001a\u000203H\u0096@\u00a2\u0006\u0002\u00104J$\u00105\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fJ,\u00106\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001070\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u00108\u001a\u000209H\u0096@\u00a2\u0006\u0002\u0010:J$\u0010;\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001070\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fJ,\u0010<\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020>H\u0096@\u00a2\u0006\u0002\u0010?JD\u0010@\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020\u001e2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020D2\u0006\u0010F\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010GJ4\u0010H\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010B\u001a\u00020\u001e2\u0006\u0010F\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010$J,\u0010I\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010J\u001a\u00020KH\u0096@\u00a2\u0006\u0002\u0010LJ4\u0010M\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010N0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020O2\u0006\u0010#\u001a\u00020OH\u0096@\u00a2\u0006\u0002\u0010PJ$\u0010Q\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010R0\u001b0\u001a2\u0006\u0010A\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0002\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006S"
    }
    d2 = {
        "Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;",
        "Lcom/laborbook/keep/usecase/KeepUseCase;",
        "keepRepository",
        "Lcom/laborbook/keep/repository/KeepRepository;",
        "<init>",
        "(Lcom/laborbook/keep/repository/KeepRepository;)V",
        "getKeepRepository",
        "()Lcom/laborbook/keep/repository/KeepRepository;",
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
        "loadContacts",
        "context",
        "Landroid/content/Context;",
        "shouldHardRefresh",
        "",
        "(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchContactsFromDevice",
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
        "getUser",
        "addAdvance",
        "addAdvanceRequestBody",
        "Lcom/laborbook/keep/model/AddAdvanceRequestBody;",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addOvertime",
        "userId",
        "date",
        "otMinutes",
        "",
        "otPerHour",
        "managerId",
        "(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteOvertime",
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
.field private final keepRepository:Lcom/laborbook/keep/repository/KeepRepository;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/repository/KeepRepository;)V
    .locals 1

    const-string v0, "keepRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    return-void
.end method

.method private final fetchContactsFromDevice(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 47
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 49
    move-object v7, v1

    check-cast v7, Ljava/io/Closeable;

    :try_start_0
    move-object v8, v7

    check-cast v8, Landroid/database/Cursor;

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 51
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 54
    const-string v2, "has_phone_number"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 56
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 58
    const-string v4, "contact_id = ?"

    const/4 v3, 0x1

    .line 59
    new-array v5, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 55
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 62
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string v3, "data1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    new-instance v4, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v4, v11, v10, v3}, Lcom/laborbook/keep/screen/addstaff/model/ContactItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-static {v1, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 69
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 49
    invoke-static {v7, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v7, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_2
    return-object v0
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

    .line 126
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/laborbook/keep/repository/KeepRepository;->addAdvance(Ljava/lang/String;Lcom/laborbook/keep/model/AddAdvanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 138
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/laborbook/keep/repository/KeepRepository;->addOrUpdateSalary(Ljava/lang/String;Lcom/laborbook/keep/model/AddOrUpdateSalaryRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 130
    iget-object v1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/laborbook/keep/repository/KeepRepository;->addOvertime(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 104
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/repository/KeepRepository;->addStaffUser(Lcom/laborbook/keep/model/AddStaffUserRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 100
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/repository/KeepRepository;->addStaffUsers(Lcom/laborbook/keep/model/AddStaffUsersRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 29
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1}, Lcom/laborbook/keep/repository/KeepRepository;->deleteAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 134
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/laborbook/keep/repository/KeepRepository;->deleteOvertime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 108
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/repository/KeepRepository;->deleteStaffUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 25
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1}, Lcom/laborbook/keep/repository/KeepRepository;->getAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 146
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/repository/KeepRepository;->getCurrentSalary(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getKeepRepository()Lcom/laborbook/keep/repository/KeepRepository;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

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

    .line 74
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/repository/KeepRepository;->getStaffs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 119
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/repository/KeepRepository;->getUser(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 82
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/laborbook/keep/repository/KeepRepository;->getUserAttendances(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 142
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/laborbook/keep/repository/KeepRepository;->getUserSalary(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 27
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-interface {v0, p1, p2}, Lcom/laborbook/keep/repository/KeepRepository;->insertContacts([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public loadContacts(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/addstaff/model/ContactItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;

    iget v1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;

    invoke-direct {v0, p0, p3}, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;-><init>(Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-boolean p2, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->Z$0:Z

    iget-object p1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v2, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    iget-object p3, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    iput-object p0, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$1:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->Z$0:Z

    iput v5, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->label:I

    invoke-interface {p3, v0}, Lcom/laborbook/keep/repository/KeepRepository;->getAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 31
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 33
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz p2, :cond_a

    .line 34
    :cond_6
    invoke-direct {v2, p1}, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->fetchContactsFromDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_8

    .line 36
    iget-object p2, v2, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    iput-object v2, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->label:I

    invoke-interface {p2, v0}, Lcom/laborbook/keep/repository/KeepRepository;->deleteAllContacts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object p2, v2

    :goto_2
    move-object v2, p2

    .line 38
    :cond_8
    iget-object p2, v2, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    const/4 v2, 0x0

    .line 150
    new-array v2, v2, [Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    invoke-interface {p3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 38
    check-cast p3, [Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    array-length v2, p3

    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/laborbook/keep/screen/addstaff/model/ContactItem;

    iput-object p1, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation$loadContacts$1;->label:I

    invoke-interface {p2, p3, v0}, Lcom/laborbook/keep/repository/KeepRepository;->insertContacts([Lcom/laborbook/keep/screen/addstaff/model/ContactItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    move-object p3, p1

    :cond_a
    return-object p3
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

    .line 89
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/laborbook/keep/repository/KeepRepository;->markBulkAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkBulkAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 96
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/laborbook/keep/repository/KeepRepository;->markSingleAttendance(Ljava/lang/String;Lcom/laborbook/keep/model/MarkSingleAttendanceRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 115
    iget-object v0, p0, Lcom/laborbook/keep/usecase/KeepUseCaseImplementation;->keepRepository:Lcom/laborbook/keep/repository/KeepRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/laborbook/keep/repository/KeepRepository;->updateUserName(Ljava/lang/String;Lcom/laborbook/keep/model/UpdateUserNameRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
