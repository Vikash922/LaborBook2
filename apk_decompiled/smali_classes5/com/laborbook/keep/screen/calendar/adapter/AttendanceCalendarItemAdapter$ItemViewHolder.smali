.class public final Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AttendanceCalendarItemAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttendanceCalendarItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttendanceCalendarItemAdapter.kt\ncom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,479:1\n56#2,6:480\n56#2,6:486\n56#2,6:492\n*S KotlinDebug\n*F\n+ 1 AttendanceCalendarItemAdapter.kt\ncom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder\n*L\n44#1:480,6\n45#1:486,6\n46#1:492,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eJ\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lorg/koin/core/component/KoinComponent;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;",
        "<init>",
        "(Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;)V",
        "fragmentNavigator",
        "Lcom/laborbook/base/navigator/FragmentNavigator;",
        "getFragmentNavigator",
        "()Lcom/laborbook/base/navigator/FragmentNavigator;",
        "fragmentNavigator$delegate",
        "Lkotlin/Lazy;",
        "observerUtil",
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "getObserverUtil",
        "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "observerUtil$delegate",
        "analytics",
        "Lcom/laborbook/base/analytics/Analytics;",
        "getAnalytics",
        "()Lcom/laborbook/base/analytics/Analytics;",
        "analytics$delegate",
        "isAttendanceMarked",
        "",
        "bind",
        "",
        "calendarItem",
        "Lcom/laborbook/keep/model/CalendarItem;",
        "iStaffName",
        "",
        "iStaffId",
        "setAdvance",
        "setAttendance",
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
.field private final analytics$delegate:Lkotlin/Lazy;

.field private final binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

.field private final fragmentNavigator$delegate:Lkotlin/Lazy;

.field private isAttendanceMarked:Z

.field private final observerUtil$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1Cf8mQSGUOxjuYIH9Yw_oE1qPvo(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->bind$lambda$6(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dqtTE-9p1gth2wyVXcUJ3Dc7EHk(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->bind$lambda$7(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jomg4WH6Ii971QZJi-0kqPdd0OE(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->bind$lambda$5(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o4JecJqVVJSSRtW9Q-ZsVw7hXbQ(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Lcom/laborbook/keep/model/CalendarItem;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->bind$lambda$2(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Lcom/laborbook/keep/model/CalendarItem;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uq1tIwYD0PS_XCUvfWZcbEvAUJc(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/keep/model/CalendarItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->bind$lambda$0(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/keep/model/CalendarItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xm5EHx1TauYCDYfLXiYDqmRhTL0(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->bind$lambda$4(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 44
    move-object p1, p0

    check-cast p1, Lorg/koin/core/component/KoinComponent;

    .line 482
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 485
    new-instance v1, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->fragmentNavigator$delegate:Lkotlin/Lazy;

    .line 488
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 491
    new-instance v1, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$2;

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->observerUtil$delegate:Lkotlin/Lazy;

    .line 494
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 497
    new-instance v1, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$3;

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->analytics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/keep/model/CalendarItem;Landroid/view/View;)V
    .locals 11

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$iStaffId"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$iStaffName"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$calendarItem"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p4

    sget-object v0, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;

    invoke-virtual {p3}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v4, v1

    invoke-virtual {p3}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v7, v1

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    invoke-virtual {p3}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v9, v1

    goto :goto_1

    :cond_2
    move-wide v9, v5

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-wide v5, v7

    move-wide v7, v9

    invoke-virtual/range {v0 .. v8}, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {p4, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 74
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object p0

    const/4 p1, 0x2

    .line 77
    new-array p1, p1, [Ljava/lang/String;

    const-string p2, "Mixpanel"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "Firebase"

    const/4 p4, 0x1

    aput-object p2, p1, p4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 78
    new-array p2, p4, [Lkotlin/Pair;

    new-instance p4, Lkotlin/Pair;

    const-string v0, "source"

    const-string v1, "more"

    invoke-direct {p4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, p2, p3

    invoke-static {p2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p2

    .line 74
    const-string p3, "view_more_attendance_options"

    const-string p4, "click"

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final bind$lambda$2(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Lcom/laborbook/keep/model/CalendarItem;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$calendarItem"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$iStaffId"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$iStaffName"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-boolean v1, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    const-string v11, "attendance_button"

    const-string v12, "source"

    const-string v13, "Firebase"

    const-string v14, "Mixpanel"

    const-string v15, "click"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v16, 0x0

    const-wide/16 v5, 0x0

    if-nez v1, :cond_6

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getOnDailyAttendanceMarkListener()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v3, Lcom/laborbook/keep/model/AttendanceItem;

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x4

    const/16 v22, 0x0

    .line 85
    const-string v19, "A"

    const/16 v20, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v22}, Lcom/laborbook/keep/model/AttendanceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v5

    :goto_0
    cmpl-double v1, v3, v5

    if-gtz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_1

    :cond_2
    move-wide v3, v5

    :goto_1
    cmpl-double v1, v3, v5

    if-gtz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_2

    :cond_3
    move-wide v1, v5

    :goto_2
    cmpl-double v1, v1, v5

    if-lez v1, :cond_5

    .line 93
    :cond_4
    iget-object v1, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 94
    iget-object v2, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_absent_filled:I

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v2, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v2, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    const-string v3, "ivAttendanceTwo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v2

    check-cast v17, Landroid/view/View;

    const/16 v21, 0x3

    const/16 v22, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 97
    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v0

    .line 103
    new-array v1, v9, [Ljava/lang/String;

    aput-object v14, v1, v16

    aput-object v13, v1, v10

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 105
    new-array v2, v9, [Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v16

    .line 106
    new-instance v3, Lkotlin/Pair;

    const-string v4, "status"

    const-string v5, "A"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v10

    .line 104
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    .line 100
    const-string v3, "mark_attendance"

    invoke-virtual {v0, v3, v15, v1, v2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_4

    .line 109
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v1

    sget-object v7, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_7

    const-string v17, ""

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    goto :goto_3

    :cond_8
    move-wide/from16 v18, v5

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :cond_9
    move-wide/from16 v20, v5

    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v8

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move v0, v9

    move-wide/from16 v9, v20

    invoke-virtual/range {v2 .. v10}, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v1, v2}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v1

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    aput-object v14, v0, v16

    const/4 v2, 0x1

    aput-object v13, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 114
    new-array v2, v2, [Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v12, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v16

    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    .line 110
    const-string v3, "edit_attendance"

    invoke-virtual {v1, v3, v15, v0, v2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    :goto_4
    return-void
.end method

.method private static final bind$lambda$4(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;)V
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "$calendarItem"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$iStaffId"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    cmpl-double v1, v6, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gtz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    cmpl-double v1, v6, v4

    if-gtz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    cmpl-double v1, v6, v4

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v11

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v12

    .line 121
    :goto_4
    iget-boolean v6, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    const-string v13, "mark_attendance"

    const-string v14, "source"

    const-string v15, "Firebase"

    const-string v16, "Mixpanel"

    const-string v10, "click"

    const/4 v9, 0x2

    if-nez v6, :cond_7

    .line 123
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getOnDailyAttendanceMarkListener()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 124
    new-instance v4, Lcom/laborbook/keep/model/AttendanceItem;

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x4

    const/16 v22, 0x0

    .line 124
    const-string v19, "P"

    const/16 v20, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v22}, Lcom/laborbook/keep/model/AttendanceItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v1, :cond_6

    .line 131
    iget-object v1, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 132
    iget-object v2, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_present_filled:I

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v2, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    const-string v3, "ivAttendanceTwo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v2

    check-cast v17, Landroid/view/View;

    const/16 v21, 0x3

    const/16 v22, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 135
    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    :cond_6
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v0

    .line 141
    new-array v1, v9, [Ljava/lang/String;

    aput-object v16, v1, v11

    aput-object v15, v1, v12

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 143
    new-array v2, v9, [Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "attendance_button"

    invoke-direct {v3, v14, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    .line 144
    new-instance v3, Lkotlin/Pair;

    const-string v4, "status"

    const-string v5, "P"

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v12

    .line 142
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v13, v10, v1, v2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_6

    .line 147
    :cond_7
    const-string v7, "ot_button"

    if-eqz v1, :cond_a

    .line 149
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v1

    sget-object v6, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    goto :goto_5

    :cond_8
    move-wide/from16 v17, v4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :cond_9
    move-wide/from16 v19, v4

    move-object v2, v6

    move-object/from16 v3, p2

    move-object v4, v8

    move-wide/from16 v5, v17

    move-object v13, v7

    move-wide/from16 v7, v19

    invoke-virtual/range {v2 .. v8}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v1, v2}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 150
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v0

    .line 153
    new-array v1, v9, [Ljava/lang/String;

    aput-object v16, v1, v11

    aput-object v15, v1, v12

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 154
    new-array v2, v12, [Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v14, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    .line 150
    const-string v3, "edit_attendance"

    invoke-virtual {v0, v3, v10, v1, v2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_6

    :cond_a
    move-object v1, v7

    .line 157
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v7

    sget-object v4, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0xc

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object v2, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move-wide/from16 v5, v19

    move-object v12, v7

    move-wide/from16 v7, v21

    move v11, v9

    move/from16 v9, v17

    move-object/from16 v23, v10

    move-object/from16 v10, v18

    invoke-static/range {v2 .. v10}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;DDILjava/lang/Object;)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v12, v2}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 158
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v0

    .line 161
    new-array v2, v11, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    const/4 v4, 0x1

    aput-object v15, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 162
    new-array v4, v4, [Lkotlin/Pair;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v14, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v3

    invoke-static {v4}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v3, v23

    .line 158
    invoke-virtual {v0, v13, v3, v2, v1}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    :goto_6
    return-void
.end method

.method private static final bind$lambda$5(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Landroid/view/View;)V
    .locals 22

    const-string v0, "$calendarItem"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iStaffId"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    cmpl-double v0, v7, v5

    const-string v12, "ot_button"

    const-string v13, "source"

    const-string v14, "Firebase"

    const-string v15, "Mixpanel"

    const/4 v11, 0x2

    const-string v10, "click"

    const/4 v8, 0x1

    const/16 v16, 0x0

    if-gtz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v5

    :goto_1
    cmpl-double v0, v17, v5

    if-gtz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    goto :goto_2

    :cond_2
    move-wide/from16 v17, v5

    :goto_2
    cmpl-double v0, v17, v5

    if-lez v0, :cond_3

    goto :goto_3

    .line 180
    :cond_3
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    sget-object v3, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xc

    const/16 v17, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v4, p2

    move-wide/from16 v8, v18

    move-object/from16 v21, v10

    move v10, v1

    move v1, v11

    move-object/from16 v11, v17

    invoke-static/range {v3 .. v11}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;DDILjava/lang/Object;)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v0, v3}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 181
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v0

    .line 184
    new-array v1, v1, [Ljava/lang/String;

    aput-object v15, v1, v16

    const/4 v10, 0x1

    aput-object v14, v1, v10

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 185
    new-array v2, v10, [Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v13, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v16

    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    .line 181
    const-string v3, "mark_attendance"

    move-object/from16 v11, v21

    invoke-virtual {v0, v3, v11, v1, v2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_5

    :cond_4
    :goto_3
    move v0, v11

    move-object v11, v10

    move v10, v8

    .line 172
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v8

    sget-object v3, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    goto :goto_4

    :cond_5
    move-wide/from16 v17, v5

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :cond_6
    move-wide/from16 v19, v5

    move-object/from16 v4, p2

    move-object v5, v7

    move-wide/from16 v6, v17

    move-object v1, v8

    move-wide/from16 v8, v19

    invoke-virtual/range {v3 .. v9}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {v1, v3}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 173
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v1

    .line 176
    new-array v0, v0, [Ljava/lang/String;

    aput-object v15, v0, v16

    aput-object v14, v0, v10

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 177
    new-array v2, v10, [Lkotlin/Pair;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v13, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v16

    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    .line 173
    const-string v3, "edit_attendance"

    invoke-virtual {v1, v3, v11, v0, v2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    :goto_5
    return-void
.end method

.method private static final bind$lambda$6(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 21

    const-string v0, "$calendarItem"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iStaffId"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iStaffName"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, v18

    .line 191
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v3, v18

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v3, v17

    .line 192
    :goto_3
    const-string v6, ""

    if-nez v0, :cond_7

    if-nez v3, :cond_4

    goto :goto_4

    .line 208
    :cond_4
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 209
    sget-object v3, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$Companion;

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v6

    .line 214
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v6

    :cond_6
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v1

    .line 209
    invoke-virtual/range {v3 .. v8}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 208
    invoke-virtual {v0, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    goto/16 :goto_7

    .line 193
    :cond_7
    :goto_4
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 194
    sget-object v3, Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment$Companion;

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v8, v6

    .line 199
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    move-object v9, v6

    .line 200
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    move-object v10, v6

    .line 201
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_5

    :cond_b
    move-wide v13, v11

    .line 202
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    goto :goto_6

    :cond_c
    move-wide v15, v11

    .line 203
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    :cond_d
    move-wide/from16 v19, v11

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvancePaymentMethod()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v13

    move-wide v12, v15

    move-wide/from16 v14, v19

    move-object/from16 v16, v1

    .line 194
    invoke-virtual/range {v3 .. v16}, Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;)Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 193
    invoke-virtual {v0, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 218
    :goto_7
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v2

    const/4 v0, 0x2

    .line 221
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mixpanel"

    aput-object v1, v0, v18

    const-string v1, "Firebase"

    aput-object v1, v0, v17

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 218
    const-string v3, "open_add_advance_bs"

    const-string v4, "click"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/laborbook/base/analytics/Analytics;->logEvent$default(Lcom/laborbook/base/analytics/Analytics;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method private static final bind$lambda$7(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 21

    const-string v0, "$calendarItem"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iStaffId"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$iStaffName"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, v18

    .line 226
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v3, v18

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v3, v17

    .line 227
    :goto_3
    const-string v6, ""

    if-nez v0, :cond_7

    if-nez v3, :cond_4

    goto :goto_4

    .line 243
    :cond_4
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 244
    sget-object v3, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$Companion;

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v6

    .line 249
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v6

    :cond_6
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v1

    .line 244
    invoke-virtual/range {v3 .. v8}, Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/advance/PayAdvanceBottomsheetFragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 243
    invoke-virtual {v0, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    goto/16 :goto_7

    .line 228
    :cond_7
    :goto_4
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v0

    .line 229
    sget-object v3, Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment$Companion;

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    move-object v8, v6

    .line 234
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    move-object v9, v6

    .line 235
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    move-object v10, v6

    .line 236
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    goto :goto_5

    :cond_b
    move-wide v13, v11

    .line 237
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    goto :goto_6

    :cond_c
    move-wide v15, v11

    .line 238
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    :cond_d
    move-wide/from16 v19, v11

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/model/CalendarItem;->getAdvancePaymentMethod()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v13

    move-wide v12, v15

    move-wide/from16 v14, v19

    move-object/from16 v16, v1

    .line 229
    invoke-virtual/range {v3 .. v16}, Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLjava/lang/String;)Lcom/laborbook/keep/screen/advance/AdvanceDetailsBottomsheetFragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 228
    invoke-virtual {v0, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 253
    :goto_7
    invoke-direct/range {p1 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v2

    const/4 v0, 0x2

    .line 256
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mixpanel"

    aput-object v1, v0, v18

    const-string v1, "Firebase"

    aput-object v1, v0, v17

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 253
    const-string v3, "open_add_advance_bs"

    const-string v4, "click"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/laborbook/base/analytics/Analytics;->logEvent$default(Lcom/laborbook/base/analytics/Analytics;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;ILjava/lang/Object;)V

    return-void
.end method

.method private final getAnalytics()Lcom/laborbook/base/analytics/Analytics;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->analytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/analytics/Analytics;

    return-object v0
.end method

.method private final getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->fragmentNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/navigator/FragmentNavigator;

    return-object v0
.end method

.method private final getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->observerUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    return-object v0
.end method

.method private final setAdvance(Lcom/laborbook/keep/model/CalendarItem;)V
    .locals 4

    .line 261
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 262
    :goto_1
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v3, v3, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    invoke-virtual {v3, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setMaxLines(I)V

    .line 265
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v2, v2, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    invoke-virtual {v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/boilerplate/uikit/R$color;->absent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setTextColor(I)V

    .line 271
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v2, v2, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    invoke-virtual {v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/laborbook/keep/R$string;->rupee:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getAdvance()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 271
    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    if-nez v1, :cond_7

    .line 278
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    invoke-virtual {v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/boilerplate/uikit/R$color;->absent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getReason()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 283
    :cond_7
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    invoke-virtual {v0}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/boilerplate/uikit/R$color;->hint_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setTextColor(I)V

    .line 284
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    invoke-virtual {v0}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/laborbook/keep/R$string;->add_advance:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private final setAttendance(Lcom/laborbook/keep/model/CalendarItem;)V
    .locals 14

    .line 292
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtTotalAmount()Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmpl-double v0, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtMinutes()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    cmpl-double v0, v5, v1

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getOtPerHour()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide v5, v1

    :goto_2
    cmpl-double v0, v5, v1

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v4

    .line 294
    :goto_4
    invoke-virtual {p1}, Lcom/laborbook/keep/model/CalendarItem;->getAttendanceStatus()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ivAttendanceOne"

    const-string v2, "ivAttendanceTwo"

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x41

    const/16 v7, 0x8

    if-eq v5, v6, :cond_17

    const/16 v6, 0x48

    if-eq v5, v6, :cond_14

    const/16 v6, 0x50

    if-eq v5, v6, :cond_11

    const/16 v6, 0x9f1

    if-eq v5, v6, :cond_e

    const v6, 0x131cd

    if-eq v5, v6, :cond_b

    const v6, 0x131d5

    if-eq v5, v6, :cond_8

    const v4, 0x33c587

    if-eq v5, v4, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string v4, "null"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_5

    .line 398
    :cond_6
    iput-boolean v3, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    if-eqz v0, :cond_7

    .line 401
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 402
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_absent_empty:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 404
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_present_empty:I

    invoke-static {v1, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 406
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 411
    :cond_7
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 412
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_absent_empty:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 414
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_present_empty:I

    invoke-static {v1, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 416
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 294
    :cond_8
    const-string v5, "P+P"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_5

    .line 364
    :cond_9
    iput-boolean v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    .line 365
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 366
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_double_present_filled:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v0, :cond_a

    .line 369
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 371
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 373
    :cond_a
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 375
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 294
    :cond_b
    const-string v5, "P+H"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_5

    .line 347
    :cond_c
    iput-boolean v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    .line 348
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 349
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_present_one_and_half_filled:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v0, :cond_d

    .line 352
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 354
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 356
    :cond_d
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 358
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 294
    :cond_e
    const-string v5, "PA"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_5

    .line 381
    :cond_f
    iput-boolean v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    .line 382
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 383
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_paid_leave_filled:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v0, :cond_10

    .line 386
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 388
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 390
    :cond_10
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 392
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 294
    :cond_11
    const-string v5, "P"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_5

    .line 313
    :cond_12
    iput-boolean v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    .line 314
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 315
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_present_filled:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v0, :cond_13

    .line 318
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 320
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 322
    :cond_13
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 324
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 294
    :cond_14
    const-string v5, "H"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_5

    .line 330
    :cond_15
    iput-boolean v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    .line 331
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 332
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_present_half_filled:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v0, :cond_16

    .line 335
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 337
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 339
    :cond_16
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 341
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 294
    :cond_17
    const-string v5, "A"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_5

    .line 296
    :cond_18
    iput-boolean v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    .line 297
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 298
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_absent_filled:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v3, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v0, :cond_19

    .line 301
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 303
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 305
    :cond_19
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 307
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 422
    :cond_1a
    :goto_5
    iput-boolean v3, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->isAttendanceMarked:Z

    if-eqz v0, :cond_1b

    .line 425
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 426
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_absent_empty:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 428
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_present_empty:I

    invoke-static {v1, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 430
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$drawable;->ic_ot_pill:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 435
    :cond_1b
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    .line 436
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/laborbook/keep/R$drawable;->ic_absent_empty:I

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 438
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/laborbook/keep/R$drawable;->ic_present_empty:I

    invoke-static {v1, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 440
    iget-object v0, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v1, v1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$drawable;->ic_ot_pill_unfilled:I

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/model/CalendarItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "calendarItem"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "iStaffName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "iStaffId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 51
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 52
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getDate()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x3

    const-string v7, "tvDay"

    const-string v8, "tvCurrentDay"

    const-string v9, "tvDate"

    const-string v10, "tvCurrentDate"

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v4

    check-cast v11, Landroid/view/View;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 57
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v4

    check-cast v11, Landroid/view/View;

    invoke-static/range {v11 .. v16}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 58
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Landroid/view/View;

    const/4 v13, 0x3

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 60
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Landroid/view/View;

    invoke-static/range {v9 .. v14}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 61
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getDay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v4

    check-cast v11, Landroid/view/View;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 64
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v4

    check-cast v10, Landroid/view/View;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 65
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvCurrentDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegularPrimaryColor14;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Landroid/view/View;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 66
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Landroid/view/View;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 67
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDay:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/CalendarItem;->getDay()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->setAdvance(Lcom/laborbook/keep/model/CalendarItem;)V

    .line 71
    invoke-direct/range {p0 .. p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->setAttendance(Lcom/laborbook/keep/model/CalendarItem;)V

    .line 72
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivMore:Landroid/widget/ImageView;

    new-instance v5, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v3, v2, v1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Lcom/laborbook/keep/model/CalendarItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceOne:Landroid/widget/ImageView;

    new-instance v5, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Lcom/laborbook/keep/model/CalendarItem;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivAttendanceTwo:Landroid/widget/ImageView;

    new-instance v5, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, v0, v3}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivOtPill:Landroid/widget/ImageView;

    new-instance v5, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1, v0, v3}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->tvAddAdvance:Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;

    new-instance v5, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, v0, v3, v2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewHintRegular12;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;

    iget-object v4, v4, Lcom/laborbook/keep/databinding/ItemCalendarAttendanceBinding;->ivEdit:Landroid/widget/ImageView;

    new-instance v5, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1, v0, v3, v2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 42
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
