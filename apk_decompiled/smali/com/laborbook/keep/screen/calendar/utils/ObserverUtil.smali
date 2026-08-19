.class public final Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;
.super Ljava/lang/Object;
.source "ObserverUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR(\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR(\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\u000bR(\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u000bRv\u0010\u0017\u001a^\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001e\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R7\u0010%\u001a\u001f\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\t\"\u0004\u0008(\u0010\u000bR7\u0010)\u001a\u001f\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(*\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\t\"\u0004\u0008,\u0010\u000bR7\u0010-\u001a\u001f\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\t\"\u0004\u0008/\u0010\u000b\u00a8\u00060"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "",
        "<init>",
        "()V",
        "onDailyAttendanceMarkListener",
        "Lkotlin/Function1;",
        "Lcom/laborbook/keep/model/AttendanceItem;",
        "",
        "getOnDailyAttendanceMarkListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnDailyAttendanceMarkListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onStaffUserAddedListener",
        "Lcom/laborbook/keep/model/Staff;",
        "getOnStaffUserAddedListener",
        "setOnStaffUserAddedListener",
        "addedStaff",
        "",
        "getAddedStaff",
        "setAddedStaff",
        "refreshStaffs",
        "getRefreshStaffs",
        "setRefreshStaffs",
        "refreshCalendar",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "shouldRefresh",
        "isAdvanceTransactionSuccess",
        "",
        "advance",
        "",
        "accessedDate",
        "getRefreshCalendar",
        "()Lkotlin/jvm/functions/Function4;",
        "setRefreshCalendar",
        "(Lkotlin/jvm/functions/Function4;)V",
        "goBackFromCalendar",
        "shouldGoBack",
        "getGoBackFromCalendar",
        "setGoBackFromCalendar",
        "clearSearchText",
        "shouldClear",
        "getClearSearchText",
        "setClearSearchText",
        "showReviewBottomSheet",
        "getShowReviewBottomSheet",
        "setShowReviewBottomSheet",
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
.field private addedStaff:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private clearSearchText:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private goBackFromCalendar:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onDailyAttendanceMarkListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/keep/model/AttendanceItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onStaffUserAddedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/keep/model/Staff;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private refreshCalendar:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private refreshStaffs:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private showReviewBottomSheet:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAddedStaff()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->addedStaff:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getClearSearchText()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->clearSearchText:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getGoBackFromCalendar()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->goBackFromCalendar:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnDailyAttendanceMarkListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/laborbook/keep/model/AttendanceItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->onDailyAttendanceMarkListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnStaffUserAddedListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/laborbook/keep/model/Staff;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->onStaffUserAddedListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRefreshCalendar()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->refreshCalendar:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getRefreshStaffs()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->refreshStaffs:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getShowReviewBottomSheet()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->showReviewBottomSheet:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setAddedStaff(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->addedStaff:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setClearSearchText(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->clearSearchText:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setGoBackFromCalendar(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->goBackFromCalendar:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnDailyAttendanceMarkListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/keep/model/AttendanceItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->onDailyAttendanceMarkListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnStaffUserAddedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/keep/model/Staff;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->onStaffUserAddedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setRefreshCalendar(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->refreshCalendar:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setRefreshStaffs(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->refreshStaffs:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setShowReviewBottomSheet(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->showReviewBottomSheet:Lkotlin/jvm/functions/Function1;

    return-void
.end method
