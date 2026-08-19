.class public final Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "AttendanceCalendarItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;,
        Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/laborbook/keep/model/CalendarItem;",
        "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0015\u0016B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/laborbook/keep/model/CalendarItem;",
        "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;",
        "<init>",
        "()V",
        "staffName",
        "",
        "staffId",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "setStaffName",
        "name",
        "setStaffId",
        "ItemViewHolder",
        "ItemDiffCallback",
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
.field private staffId:Ljava/lang/String;

.field private staffName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemDiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 35
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->staffName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->staffId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->onBindViewHolder(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0, p2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/laborbook/keep/model/CalendarItem;

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->staffName:Ljava/lang/String;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->staffId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->bind(Lcom/laborbook/keep/model/CalendarItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    new-instance p2, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;

    invoke-direct {p2, p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;-><init>(Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;)V

    return-object p2
.end method

.method public final setStaffId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "staffId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->staffId:Ljava/lang/String;

    return-void
.end method

.method public final setStaffName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->staffName:Ljava/lang/String;

    return-void
.end method
