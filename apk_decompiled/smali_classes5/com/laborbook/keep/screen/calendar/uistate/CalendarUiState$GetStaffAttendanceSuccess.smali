.class public final Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;
.super Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;
.source "CalendarUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetStaffAttendanceSuccess"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;",
        "Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;",
        "staff",
        "Lcom/laborbook/keep/model/StaffAttendanceResponse;",
        "<init>",
        "(Lcom/laborbook/keep/model/StaffAttendanceResponse;)V",
        "getStaff",
        "()Lcom/laborbook/keep/model/StaffAttendanceResponse;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/model/StaffAttendanceResponse;)V
    .locals 1

    const-string v0, "staff"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;Lcom/laborbook/keep/model/StaffAttendanceResponse;ILjava/lang/Object;)Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->copy(Lcom/laborbook/keep/model/StaffAttendanceResponse;)Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/laborbook/keep/model/StaffAttendanceResponse;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    return-object v0
.end method

.method public final copy(Lcom/laborbook/keep/model/StaffAttendanceResponse;)Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;
    .locals 1

    const-string v0, "staff"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;

    invoke-direct {v0, p1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;-><init>(Lcom/laborbook/keep/model/StaffAttendanceResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    iget-object p1, p1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getStaff()Lcom/laborbook/keep/model/StaffAttendanceResponse;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    invoke-virtual {v0}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetStaffAttendanceSuccess(staff="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->staff:Lcom/laborbook/keep/model/StaffAttendanceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
