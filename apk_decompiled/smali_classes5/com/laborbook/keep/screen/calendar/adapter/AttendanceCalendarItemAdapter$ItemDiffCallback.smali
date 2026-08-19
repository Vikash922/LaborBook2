.class public final Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "AttendanceCalendarItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemDiffCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/laborbook/keep/model/CalendarItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/laborbook/keep/model/CalendarItem;",
        "<init>",
        "()V",
        "areItemsTheSame",
        "",
        "oldItem",
        "newItem",
        "areContentsTheSame",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/model/CalendarItem;)Z
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getAdvancePaymentMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getAdvancePaymentMethod()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 466
    check-cast p1, Lcom/laborbook/keep/model/CalendarItem;

    check-cast p2, Lcom/laborbook/keep/model/CalendarItem;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;->areContentsTheSame(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/model/CalendarItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/model/CalendarItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 466
    check-cast p1, Lcom/laborbook/keep/model/CalendarItem;

    check-cast p2, Lcom/laborbook/keep/model/CalendarItem;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;->areItemsTheSame(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/model/CalendarItem;)Z

    move-result p1

    return p1
.end method
