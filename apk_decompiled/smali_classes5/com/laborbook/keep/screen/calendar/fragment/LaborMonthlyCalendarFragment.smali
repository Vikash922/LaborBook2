.class public final Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "LaborMonthlyCalendarFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaborMonthlyCalendarFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaborMonthlyCalendarFragment.kt\ncom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,843:1\n35#2,6:844\n50#3,5:850\n50#3,5:855\n37#4,2:860\n1#5:862\n1734#6,3:863\n*S KotlinDebug\n*F\n+ 1 LaborMonthlyCalendarFragment.kt\ncom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment\n*L\n68#1:844,6\n69#1:850,5\n70#1:855,5\n697#1:860,2\n716#1:863,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\t\u0018\u0000 Y2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001YB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u00101\u001a\u0002022\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J&\u00105\u001a\u0004\u0018\u00010\u00022\u0006\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u0001092\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J&\u0010:\u001a\u0004\u0018\u00010;2\u0006\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u0001092\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J\u001a\u0010<\u001a\u0002022\u0006\u0010=\u001a\u00020;2\u0008\u00103\u001a\u0004\u0018\u000104H\u0016J\u0010\u0010>\u001a\u0002022\u0006\u0010?\u001a\u00020\u0013H\u0002J\u0008\u0010@\u001a\u000202H\u0002J\u0008\u0010A\u001a\u000202H\u0002J\u0008\u0010B\u001a\u000202H\u0002J\u0008\u0010C\u001a\u000202H\u0002J\u0008\u0010D\u001a\u000202H\u0002J\u0008\u0010E\u001a\u000202H\u0002J\u0010\u0010F\u001a\u0002022\u0006\u0010G\u001a\u00020+H\u0002J\u0008\u0010H\u001a\u000202H\u0002J\u0008\u0010I\u001a\u000202H\u0002J\u0008\u0010J\u001a\u000202H\u0002J\u0008\u0010K\u001a\u000202H\u0002J\u0008\u0010L\u001a\u000202H\u0002J\u0008\u0010M\u001a\u00020\u0006H\u0002J\u0008\u0010N\u001a\u000202H\u0002J\u0008\u0010S\u001a\u000202H\u0002J\u0008\u0010T\u001a\u000202H\u0002J\u0010\u0010U\u001a\u0002022\u0006\u0010V\u001a\u00020\u0006H\u0002J\u0008\u0010W\u001a\u000202H\u0002J\u0008\u0010X\u001a\u000202H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001b\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u001b\u001a\u0004\u0008#\u0010$R\u000e\u0010&\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010.R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010O\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006 R*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010Q0Q0PX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "currentYear",
        "",
        "currentDate",
        "monthName",
        "monthNumber",
        "staffName",
        "staffFullName",
        "staffId",
        "staffPhone",
        "isStatsExpanded",
        "",
        "adapter",
        "Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;",
        "viewModel",
        "Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;",
        "getViewModel",
        "()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "observerUtil",
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "getObserverUtil",
        "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "observerUtil$delegate",
        "coachMarkManager",
        "Lcom/laborbook/keep/utils/CoachMarkManager;",
        "getCoachMarkManager",
        "()Lcom/laborbook/keep/utils/CoachMarkManager;",
        "coachMarkManager$delegate",
        "isSalaryLoading",
        "isReportLoading",
        "refreshAnimator",
        "Landroid/animation/ObjectAnimator;",
        "currentAttendanceUser",
        "Lcom/laborbook/keep/model/AttendanceUser;",
        "currentSalary",
        "",
        "Ljava/lang/Double;",
        "currentSalaryData",
        "Lcom/laborbook/keep/model/CurrentSalaryResponse;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "view",
        "getCalendarData",
        "isRefresh",
        "setObserver",
        "setupView",
        "registerOnClickListeners",
        "openReport",
        "viewModelObserver",
        "triggerInAppReview",
        "setUserDetails",
        "staff",
        "fetchAndDisplaySalary",
        "setupStatsDropdown",
        "toggleStatsDropdown",
        "getCurrentDateInfo",
        "openMonthYearChooser",
        "getFormattedMonthYear",
        "checkPermissionsAndCapture",
        "requestPermissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "startRefreshAnimation",
        "stopRefreshAnimation",
        "navigateToReport",
        "monthYear",
        "checkAndShowCoachMark",
        "onDestroyView",
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
.field public static final Companion:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;


# instance fields
.field private adapter:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;

.field private final coachMarkManager$delegate:Lkotlin/Lazy;

.field private currentAttendanceUser:Lcom/laborbook/keep/model/AttendanceUser;

.field private currentDate:I

.field private currentSalary:Ljava/lang/Double;

.field private currentSalaryData:Lcom/laborbook/keep/model/CurrentSalaryResponse;

.field private currentYear:I

.field private isReportLoading:Z

.field private isSalaryLoading:Z

.field private isStatsExpanded:Z

.field private monthName:Ljava/lang/String;

.field private monthNumber:I

.field private final observerUtil$delegate:Lkotlin/Lazy;

.field private refreshAnimator:Landroid/animation/ObjectAnimator;

.field private final requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private staffFullName:Ljava/lang/String;

.field private staffId:Ljava/lang/String;

.field private staffName:Ljava/lang/String;

.field private staffPhone:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4-cDpGZTm0RRt7nSX5QSd6fi2zE(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->viewModelObserver$lambda$28(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$812NgSFrhFaJ_gzAZOw-VU6TaG8(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;II)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->openMonthYearChooser$lambda$37(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;II)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BGtXMY5NWY-nOsVPAmSvJVNW_Fw(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->toggleStatsDropdown$lambda$35(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-oLyv5j4XFsdM3yJT0w3OZ0BjY(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;ZZLjava/lang/String;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setObserver$lambda$5(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;ZZLjava/lang/String;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GEc1VU2NPT-GYOwprrSqyob9LBA(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$22(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GzpQ8fz9P9UrPvHqDvSl-3POQuE(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$10(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HCF1LApS28Oxprk46IccdiQJUwU(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$14(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M0jwDsvUNwE4HliEmIiMfvTz_Ms(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$23(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PrapkR8lRBi21WIHKrWMoIxXta4(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->onViewCreated$lambda$3(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aH7ZwrryjYI-9Ss2KgeMu840MFA(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->onViewCreated$lambda$2(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aKZMG3FYmYCyk0GTw1332OauxRU(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setupStatsDropdown$lambda$33(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b0CU_laJtunjiVcfB_DbVtGXnVM(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setupStatsDropdown$lambda$34(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jsghRP0sCIiYTYas5COfCjb29to(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$9(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nDbjP8bJVB7fdYfV6-P_OlhtleQ(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setUserDetails$lambda$31$lambda$30(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qBMsC7iUEvcuKhl0gc-QzIdAxyE(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$20(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0nhCvSaKBRit2iAvZ0s3TmNv9g(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$11(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFoFnW-ByuxTEnV425x2Z8JOnqc(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$8(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7COg3iqyY4EZRDE48Etvvv7oUE(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners$lambda$24$lambda$17(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wn8ybGqHr9O2JvgW0sJPBHUvYq8(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/model/AttendanceItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setObserver$lambda$4(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/model/AttendanceItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y1IrF1H_tZhd6v2fysF3wci3unk(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setObserver$lambda$6(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zHPt453N0rpcd-_b1Lw4qXE9jvs(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requestPermissionLauncher$lambda$47(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWGKuYNMro85OP8gcn4m5bhONcE(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->onViewCreated$lambda$1(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    const/16 v0, 0x7e8

    .line 58
    iput v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentDate:I

    .line 60
    const-string v1, "Jan"

    iput-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthName:Ljava/lang/String;

    .line 61
    iput v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffPhone:Ljava/lang/String;

    .line 68
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 846
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 849
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$special$$inlined$viewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 69
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 852
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 854
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$special$$inlined$inject$default$1;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->observerUtil$delegate:Lkotlin/Lazy;

    .line 857
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 859
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->coachMarkManager$delegate:Lkotlin/Lazy;

    .line 714
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 713
    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda21;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getCoachMarkManager(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Lcom/laborbook/keep/utils/CoachMarkManager;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getCoachMarkManager()Lcom/laborbook/keep/utils/CoachMarkManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentYear$p(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    return p0
.end method

.method public static final synthetic access$getMonthNumber$p(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    return p0
.end method

.method public static final synthetic access$getStaffId$p(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$navigateToReport(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->navigateToReport(Ljava/lang/String;)V

    return-void
.end method

.method private final checkAndShowCoachMark()V
    .locals 7

    .line 780
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$checkAndShowCoachMark$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private final checkPermissionsAndCapture()V
    .locals 5

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 684
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 686
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v2, 0x0

    .line 861
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 697
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 700
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->toolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStats:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 701
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llTableHeader:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 702
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2

    .line 703
    move-object v4, p0

    check-cast v4, Landroidx/fragment/app/Fragment;

    check-cast v0, Landroid/view/View;

    .line 704
    check-cast v1, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    .line 703
    invoke-static {v4, v0, v1, v2, v3}, Lcom/laborbook/base/BaseExtensionKt;->captureAndShareFullContent(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 702
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    :goto_0
    return-void
.end method

.method private final fetchAndDisplaySalary()V
    .locals 7

    .line 584
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$fetchAndDisplaySalary$1$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final getCalendarData(Z)V
    .locals 7

    .line 136
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$getCalendarData$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p0, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$getCalendarData$1;-><init>(ZLcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    const-string p1, "LaborMonthlyCalendarFragment"

    const-string v0, "View destroyed, ignoring getCalendarData call"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final getCoachMarkManager()Lcom/laborbook/keep/utils/CoachMarkManager;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->coachMarkManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/utils/CoachMarkManager;

    return-object v0
.end method

.method private final getCurrentDateInfo()V
    .locals 4

    .line 645
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 647
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    .line 648
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthName:Ljava/lang/String;

    .line 649
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    const/4 v1, 0x5

    .line 650
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentDate:I

    return-void
.end method

.method private final getFormattedMonthYear()Ljava/lang/String;
    .locals 3

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->observerUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    return-object v0
.end method

.method private final getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    return-object v0
.end method

.method private final navigateToReport(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 755
    iget-object v1, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentAttendanceUser:Lcom/laborbook/keep/model/AttendanceUser;

    if-nez v1, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->stopReportLoading()V

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object v2

    .line 761
    sget-object v3, Lcom/laborbook/keep/screen/report/ReportFragment;->Companion:Lcom/laborbook/keep/screen/report/ReportFragment$Companion;

    .line 762
    iget-object v4, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffName:Ljava/lang/String;

    .line 763
    iget-object v5, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffPhone:Ljava/lang/String;

    .line 765
    invoke-virtual {v1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPresent()D

    move-result-wide v6

    double-to-int v7, v6

    .line 766
    invoke-virtual {v1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalAbsent()D

    move-result-wide v8

    double-to-int v8, v8

    .line 767
    invoke-virtual {v1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalOt()Ljava/lang/Double;

    move-result-object v6

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    goto :goto_0

    :cond_1
    move-wide v11, v9

    .line 768
    :goto_0
    invoke-virtual {v1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalH()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    double-to-int v6, v13

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v13, v6

    .line 769
    invoke-virtual {v1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPh()Ljava/lang/Double;

    move-result-object v6

    const-string v14, "-"

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v15, v6

    goto :goto_3

    :cond_4
    :goto_2
    move-object v15, v14

    .line 770
    :goto_3
    invoke-virtual {v1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPp()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    move-object v14, v6

    .line 771
    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalAdvance()D

    move-result-wide v16

    .line 772
    iget-object v1, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentSalary:Ljava/lang/Double;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :cond_7
    move-wide/from16 v18, v9

    move-object/from16 v6, p1

    move-wide v9, v11

    move v11, v13

    move-object v12, v15

    move-object v13, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    .line 761
    invoke-virtual/range {v3 .. v17}, Lcom/laborbook/keep/screen/report/ReportFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDILjava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/report/ReportFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 760
    invoke-virtual {v2, v1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final onViewCreated$lambda$1(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->checkAndShowCoachMark()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    const-string p1, "updated_staff_name"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffName:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvToolbarText:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-boolean p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isSalaryLoading:Z

    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    iget p0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->fetchUserSalary(Ljava/lang/String;II)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method private final openMonthYearChooser()V
    .locals 3

    .line 654
    sget-object v0, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->Companion:Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment$Companion;

    iget v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment$Companion;->newInstance(II)Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;

    move-result-object v0

    .line 655
    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda12;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->setOnSelectionCallback(Lkotlin/jvm/functions/Function2;)V

    .line 672
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "MonthYearChooserFragment"

    invoke-virtual {v0, v1, v2}, Lcom/laborbook/income/screen/monthchooser/MonthYearChooserFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final openMonthYearChooser$lambda$37(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;II)Lkotlin/Unit;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    .line 656
    iput v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    .line 657
    iput p2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    .line 658
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/4 v1, 0x2

    .line 660
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x1

    .line 661
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 662
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {v0, v1, v1, p2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 658
    iput-object p2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthName:Ljava/lang/String;

    .line 664
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getFormattedMonthYear()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x0

    .line 667
    iput-object p2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentSalary:Ljava/lang/Double;

    .line 668
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvAddAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    if-eqz p2, :cond_1

    sget v0, Lcom/laborbook/keep/R$string;->add_amount:I

    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;->setText(Ljava/lang/CharSequence;)V

    .line 670
    :cond_1
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getCalendarData(Z)V

    .line 671
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final openReport()V
    .locals 10

    .line 329
    move-object v0, p0

    check-cast v0, Lcom/laborbook/base/BaseFragment;

    const/4 v1, 0x2

    const-string v2, "labor_reports_tap"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 330
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->triggerInAppReview()V

    .line 331
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentAttendanceUser:Lcom/laborbook/keep/model/AttendanceUser;

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 334
    const-string v1, "Please wait for attendance data to load"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 332
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->startReportLoading()V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentSalary:Ljava/lang/Double;

    if-nez v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object v2

    iget v4, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    iget v5, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    invoke-virtual {v2, v1, v4, v5}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->fetchUserSalary(Ljava/lang/String;II)Lkotlinx/coroutines/Job;

    .line 353
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$openReport$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$openReport$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 363
    :cond_2
    invoke-direct {p0, v0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->navigateToReport(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final registerOnClickListeners()V
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnMarkAttendance:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda11;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda14;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnShare:Landroid/widget/TextView;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda15;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivDeleteStaff:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda16;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvToolbarText:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda17;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvEdit:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda18;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnOpenReport:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda19;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llOpenReport:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda20;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$10(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->openMonthYearChooser()V

    const/4 p1, 0x1

    .line 238
    new-array p1, p1, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "current_month"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "change_month"

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$11(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->checkPermissionsAndCapture()V

    const/4 p1, 0x1

    .line 243
    new-array p1, p1, [Lkotlin/Pair;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "labor_name"

    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "share_attendance_to_labor"

    invoke-virtual {p0, v0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 244
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->triggerInAppReview()V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$14(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 249
    sget-object v0, Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment$Companion;

    .line 250
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    .line 249
    invoke-virtual {v0, p1, v1}, Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 253
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "labor_name"

    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "delete_labor_bs"

    invoke-virtual {p0, v1, v0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 254
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {p0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$17(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 260
    sget-object v0, Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment$Companion;

    .line 261
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, p1, v1}, Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/deletestaff/DeleteStaffBottomsheetFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 264
    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "labor_name"

    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "delete_labor_bs"

    invoke-virtual {p0, v1, v0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 265
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-virtual {p0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$20(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;Landroid/view/View;)V
    .locals 7

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->getCurrentSalary(Ljava/lang/String;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 274
    :cond_0
    sget-object v0, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;

    .line 275
    iget-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    move-object v1, p1

    .line 276
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 274
    invoke-static/range {v0 .. v6}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "EditProfileBottomsheetFragment"

    invoke-virtual {p1, p0, p2}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$21(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)Z
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string v0, "getViewLifecycleOwner(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$registerOnClickListeners$1$8$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    return p0
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$22(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->openReport()V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$23(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->openReport()V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$8(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string v0, "getViewLifecycleOwner(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$registerOnClickListeners$1$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$registerOnClickListeners$1$1$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final registerOnClickListeners$lambda$24$lambda$9(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    return-void
.end method

.method private static final requestPermissionLauncher$lambda$47(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Ljava/util/Map;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 863
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 716
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Permission denied"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 719
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->toolbar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStats:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 720
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llTableHeader:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 721
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_3

    .line 722
    check-cast p0, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/view/View;

    .line 723
    check-cast v0, Landroid/view/View;

    check-cast v1, Landroid/view/View;

    .line 722
    invoke-static {p0, p1, v0, v1, v2}, Lcom/laborbook/base/BaseExtensionKt;->captureAndShareFullContent(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 721
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 728
    :catch_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    :goto_1
    return-void
.end method

.method private final setObserver()V
    .locals 2

    .line 162
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->setOnDailyAttendanceMarkListener(Lkotlin/jvm/functions/Function1;)V

    .line 180
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->setRefreshCalendar(Lkotlin/jvm/functions/Function4;)V

    .line 200
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->setGoBackFromCalendar(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final setObserver$lambda$4(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/model/AttendanceItem;)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attendance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$setObserver$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$setObserver$1$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/model/AttendanceItem;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    const-string p0, "LaborMonthlyCalendarFragment"

    const-string p1, "View destroyed, ignoring attendance mark callback"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setObserver$lambda$5(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;ZZLjava/lang/String;I)Lkotlin/Unit;
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "advance"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getView()Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isAdded()Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 185
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setRefresh(Z)V

    .line 186
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getCalendarData(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p1

    .line 190
    sget-object p2, Lcom/laborbook/keep/screen/status/TransactionStatusFragment;->Companion:Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;

    .line 191
    iget-object p0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffName:Ljava/lang/String;

    .line 192
    const-string p4, "ADVANCE"

    .line 190
    invoke-virtual {p2, p0, p4, p3}, Lcom/laborbook/keep/screen/status/TransactionStatusFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/status/TransactionStatusFragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 189
    invoke-virtual {p1, p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    .line 198
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setObserver$lambda$6(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Z)Lkotlin/Unit;
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    .line 205
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setUserDetails(Lcom/laborbook/keep/model/AttendanceUser;)V
    .locals 10

    .line 513
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_a

    .line 514
    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffName:Ljava/lang/String;

    .line 516
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvToolbarText:Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;

    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffName:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text18/TextViewBold18;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalPresent:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPresent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldGreen16;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalAbsent:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalAbsent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBoldError16;->setText(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalOt()Ljava/lang/Double;

    move-result-object v1

    const-string v2, "0h"

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Total OT received: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "OvertimeDebug"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    const/16 v5, 0x6d

    const/16 v6, 0x68

    const/16 v7, 0x3c

    if-ltz v1, :cond_1

    double-to-int v1, v3

    int-to-double v8, v1

    sub-double/2addr v3, v8

    int-to-double v7, v7

    mul-double/2addr v3, v7

    double-to-int v3, v3

    if-lez v3, :cond_0

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 535
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    int-to-double v8, v7

    mul-double/2addr v3, v8

    double-to-int v1, v3

    .line 540
    div-int/lit8 v3, v1, 0x3c

    .line 541
    rem-int/2addr v1, v7

    if-lez v3, :cond_3

    if-lez v1, :cond_2

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 546
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 549
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 556
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalOt:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalAdvance:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/laborbook/keep/R$string;->rupee:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalAdvance()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalHalfDay:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalH()Ljava/lang/Double;

    move-result-object v2

    const-string v3, "0"

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_7
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalPp:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPp()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_8
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvTotalPh:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalPh()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_9
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivRefreshAmount:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnShare:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/laborbook/keep/R$string;->share_to:I

    invoke-virtual {p0, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/keep/model/AttendanceUser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/laborbook/keep/R$drawable;->ic_whatsapp:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 572
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnShare:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 574
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x4

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 576
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnShare:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 579
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setupStatsDropdown()V

    :cond_a
    return-void
.end method

.method private static final setUserDetails$lambda$31$lambda$30(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->fetchAndDisplaySalary()V

    return-void
.end method

.method private final setupStatsDropdown()V
    .locals 3

    .line 594
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsFirstRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivStatsDropdown:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivStatsDropdown:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_2
    const/4 v0, 0x0

    .line 606
    iput-boolean v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isStatsExpanded:Z

    .line 609
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method private static final setupStatsDropdown$lambda$33(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->toggleStatsDropdown()V

    return-void
.end method

.method private static final setupStatsDropdown$lambda$34(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->toggleStatsDropdown()V

    return-void
.end method

.method private final setupView()V
    .locals 6

    .line 209
    new-instance v0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->adapter:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;

    .line 210
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_2

    .line 212
    :try_start_0
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvMonthYear:Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthName:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/boilerplate/uikit/views/textviews/text12/TextViewBold12;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->adapter:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;

    if-nez v2, :cond_1

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->btnMarkAttendance:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->isAttendancesMarked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private final startRefreshAnimation()V
    .locals 5

    .line 735
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivRefreshAmount:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 736
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->refreshAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 737
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRotation()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRotation()F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    const-string v1, "rotation"

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    .line 738
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    .line 739
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x0

    .line 740
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 741
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 737
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->refreshAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void
.end method

.method private final stopRefreshAnimation()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->refreshAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 749
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivRefreshAmount:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    const/4 v0, 0x0

    .line 751
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->refreshAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private final toggleStatsDropdown()V
    .locals 5

    .line 614
    iget-boolean v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isStatsExpanded:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isStatsExpanded:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    if-nez v0, :cond_3

    .line 618
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 622
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivStatsDropdown:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    const/high16 v1, 0x43340000    # 180.0f

    .line 625
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 626
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 627
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 630
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 631
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 632
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 633
    new-instance v4, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda13;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 636
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 637
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivStatsDropdown:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 638
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 639
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 640
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final toggleStatsDropdown$lambda$35(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->llStatsSecondRow:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final triggerInAppReview()V
    .locals 7

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$triggerInAppReview$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final viewModelObserver()V
    .locals 4

    .line 368
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->uiState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    new-instance v3, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragmentKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragmentKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final viewModelObserver$lambda$28(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState;)Lkotlin/Unit;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Loading;

    if-eqz v2, :cond_0

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isRefresh()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1c

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 375
    :cond_0
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$SalaryLoading;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 376
    iget-boolean v1, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isSalaryLoading:Z

    if-nez v1, :cond_1c

    .line 377
    iput-boolean v3, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isSalaryLoading:Z

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->startRefreshAnimation()V

    goto/16 :goto_5

    .line 381
    :cond_1
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalarySuccess;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 382
    iput-boolean v4, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isSalaryLoading:Z

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->stopRefreshAnimation()V

    .line 384
    check-cast v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalarySuccess;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalarySuccess;->getSalary()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentSalary:Ljava/lang/Double;

    .line 385
    iget-object v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentAttendanceUser:Lcom/laborbook/keep/model/AttendanceUser;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/laborbook/keep/model/AttendanceUser;->getTotalAdvance()D

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 386
    :goto_0
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalarySuccess;->getSalary()D

    move-result-wide v4

    sub-double/2addr v4, v2

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->tvAddAmount:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;

    if-eqz v1, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/laborbook/keep/R$string;->rupee:I

    invoke-virtual {v0, v3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBoldPrimaryColor14;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 389
    :cond_3
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalaryError;

    if-eqz v2, :cond_4

    .line 390
    iput-boolean v4, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isSalaryLoading:Z

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->stopRefreshAnimation()V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    check-cast v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalaryError;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetUserSalaryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 394
    :cond_4
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;

    if-eqz v2, :cond_6

    .line 395
    check-cast v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;->isLoading()Z

    move-result v2

    iput-boolean v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isReportLoading:Z

    .line 396
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$ReportLoading;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1c

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 399
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1c

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 402
    :cond_6
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;

    const-string v5, "EditProfileBottomsheetFragment"

    const-string v6, ""

    if-eqz v2, :cond_9

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_7

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 404
    :cond_7
    check-cast v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;->getCurrentSalary()Lcom/laborbook/keep/model/CurrentSalaryResponse;

    move-result-object v2

    iput-object v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentSalaryData:Lcom/laborbook/keep/model/CurrentSalaryResponse;

    .line 406
    sget-object v2, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;

    .line 407
    iget-object v3, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move-object v6, v3

    .line 408
    :goto_1
    iget-object v3, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    .line 409
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;->getCurrentSalary()Lcom/laborbook/keep/model/CurrentSalaryResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laborbook/keep/model/CurrentSalaryResponse;->getSalary_per_day()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 410
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalarySuccess;->getCurrentSalary()Lcom/laborbook/keep/model/CurrentSalaryResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laborbook/keep/model/CurrentSalaryResponse;->getSalary_type()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v2, v6, v3, v4, v1}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;

    move-result-object v1

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 414
    :cond_9
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetCurrentSalaryError;

    if-eqz v2, :cond_c

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_a

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 417
    :cond_a
    sget-object v13, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;->Companion:Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;

    .line 418
    iget-object v1, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-nez v1, :cond_b

    move-object v14, v6

    goto :goto_2

    :cond_b
    move-object v14, v1

    .line 419
    :goto_2
    iget-object v15, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffFullName:Ljava/lang/String;

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 417
    invoke-static/range {v13 .. v19}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;->newInstance$default(Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;

    move-result-object v1

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/laborbook/keep/screen/profile/fragment/EditProfileBottomsheetFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 423
    :cond_c
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$CurrentSalaryLoading;

    if-eqz v2, :cond_d

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1c

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 427
    :cond_d
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;

    const/4 v5, 0x0

    if-eqz v2, :cond_17

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_e

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 429
    :cond_e
    check-cast v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->getStaff()Lcom/laborbook/keep/model/StaffAttendanceResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->getUser()Lcom/laborbook/keep/model/AttendanceUser;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 430
    invoke-direct {v0, v2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setUserDetails(Lcom/laborbook/keep/model/AttendanceUser;)V

    .line 431
    iput-object v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentAttendanceUser:Lcom/laborbook/keep/model/AttendanceUser;

    .line 433
    :cond_f
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->getStaff()Lcom/laborbook/keep/model/StaffAttendanceResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->getUser()Lcom/laborbook/keep/model/AttendanceUser;

    move-result-object v2

    const-string v7, "adapter"

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/laborbook/keep/model/AttendanceUser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v8, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->adapter:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;

    if-nez v8, :cond_10

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_10
    invoke-virtual {v8, v2}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->setStaffName(Ljava/lang/String;)V

    .line 434
    :cond_11
    iget-object v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->adapter:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;

    if-nez v2, :cond_12

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_12
    iget-object v8, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-nez v8, :cond_13

    goto :goto_3

    :cond_13
    move-object v6, v8

    :goto_3
    invoke-virtual {v2, v6}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->setStaffId(Ljava/lang/String;)V

    .line 435
    iget-object v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->adapter:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;

    if-nez v2, :cond_14

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    move-object v5, v2

    :goto_4
    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$GetStaffAttendanceSuccess;->getStaff()Lcom/laborbook/keep/model/StaffAttendanceResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laborbook/keep/model/StaffAttendanceResponse;->getAttendance()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter;->submitList(Ljava/util/List;)V

    .line 437
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->isFirstTime()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->rvAttendance:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_15

    iget v2, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentDate:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 439
    :cond_15
    invoke-virtual {v0, v4}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setFirstTime(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :catch_0
    :cond_16
    invoke-virtual {v0, v4}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setRefresh(Z)V

    .line 445
    iget-object v1, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;

    move-result-object v2

    iget v3, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->monthNumber:I

    iget v0, v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->currentYear:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/laborbook/keep/screen/calendar/viewmodel/CalendarViewModel;->fetchUserSalary(Ljava/lang/String;II)Lkotlinx/coroutines/Job;

    goto/16 :goto_5

    .line 449
    :cond_17
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$MarkBulkAttendanceSuccess;

    if-eqz v2, :cond_1a

    .line 450
    invoke-virtual {v0, v4}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setRefresh(Z)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_18

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 452
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getRefreshCalendar()Lkotlin/jvm/functions/Function4;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v3, v6, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->triggerInAppReview()V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$viewModelObserver$1$4;

    invoke-direct {v1, v0, v5}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$viewModelObserver$1$4;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Lkotlin/coroutines/Continuation;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_5

    .line 463
    :cond_1a
    instance-of v2, v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Error;

    if-eqz v2, :cond_1c

    .line 464
    invoke-virtual {v0, v4}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setRefresh(Z)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz v2, :cond_1b

    iget-object v2, v2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->pb:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1b

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 466
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    check-cast v1, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Error;

    invoke-virtual {v1}, Lcom/laborbook/keep/screen/calendar/uistate/CalendarUiState$Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 470
    :cond_1c
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "calendar"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 91
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    const-string v0, "staff_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffId:Ljava/lang/String;

    .line 82
    const-string v0, "staff_phone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->staffPhone:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setFirstTime(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 826
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->setOnDailyAttendanceMarkListener(Lkotlin/jvm/functions/Function1;)V

    .line 827
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->setRefreshCalendar(Lkotlin/jvm/functions/Function4;)V

    .line 828
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->setGoBackFromCalendar(Lkotlin/jvm/functions/Function1;)V

    .line 830
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->stopRefreshAnimation()V

    .line 831
    invoke-super {p0}, Lcom/laborbook/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getCurrentDateInfo()V

    .line 106
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->viewModelObserver()V

    .line 107
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->registerOnClickListeners()V

    .line 108
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setupView()V

    const/4 p2, 0x0

    .line 109
    invoke-direct {p0, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getCalendarData(Z)V

    .line 110
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->setObserver()V

    .line 112
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    const-string v1, "edit_profile_result"

    invoke-virtual {p1, v1, p2, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentLaborMonthlyCalendarBinding;->ivRefreshAmount:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
