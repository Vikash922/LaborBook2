.class public final Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;
.super Lcom/laborbook/base/BaseBottomsheetFragment;
.source "OvertimeBottomSheetFragment.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseBottomsheetFragment<",
        "Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOvertimeBottomSheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OvertimeBottomSheetFragment.kt\ncom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment\n+ 2 ViewModelStoreOwnerExt.kt\norg/koin/androidx/viewmodel/ext/android/ViewModelStoreOwnerExtKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,399:1\n35#2,6:400\n56#3,6:406\n56#3,6:412\n49#4:418\n65#4,16:419\n93#4,3:435\n49#4:438\n65#4,16:439\n93#4,3:455\n1#5:458\n*S KotlinDebug\n*F\n+ 1 OvertimeBottomSheetFragment.kt\ncom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment\n*L\n108#1:400,6\n109#1:406,6\n110#1:412,6\n192#1:418\n192#1:419,16\n192#1:435,3\n193#1:438\n193#1:439,16\n193#1:455,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 82\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00018B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J$\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020,2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010-\u001a\u00020\"H\u0002J\u0008\u0010.\u001a\u00020\"H\u0002J\u0008\u0010/\u001a\u00020\"H\u0002J\u0008\u00100\u001a\u00020\"H\u0002J\u0008\u00101\u001a\u00020\"H\u0002J\u0008\u00102\u001a\u00020\"H\u0002J\u0008\u00103\u001a\u00020\"H\u0002J\u0010\u00104\u001a\u00020\"2\u0006\u00105\u001a\u000206H\u0002J\u0008\u00107\u001a\u00020\"H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u000f\u001a\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;",
        "Lcom/laborbook/base/BaseBottomsheetFragment;",
        "Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;",
        "Lorg/koin/core/component/KoinComponent;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "viewModel",
        "Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;",
        "getViewModel",
        "()Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "dataStore",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStore",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStore$delegate",
        "observerUtil",
        "Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "getObserverUtil",
        "()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;",
        "observerUtil$delegate",
        "_binding",
        "date",
        "selectedTimeRaw",
        "userId",
        "existingOtMinutes",
        "",
        "existingOtPerHour",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "setupClickListeners",
        "setupTextWatchers",
        "showTimePicker",
        "calculateTotal",
        "saveOvertime",
        "deleteOvertime",
        "observeViewModel",
        "updateButtonStyle",
        "enabled",
        "",
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
.field public static final Companion:Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

.field private static final DATE:Ljava/lang/String; = "DATE"

.field private static final OT_MINUTES:Ljava/lang/String; = "ot_minutes"

.field private static final OT_PER_HOUR:Ljava/lang/String; = "ot_per_hour"

.field public static final TAG:Ljava/lang/String; = "OvertimeBottomSheetFragment"

.field private static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private _binding:Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

.field private final dataStore$delegate:Lkotlin/Lazy;

.field private date:Ljava/lang/String;

.field private existingOtMinutes:D

.field private existingOtPerHour:D

.field private final observerUtil$delegate:Lkotlin/Lazy;

.field private final screenName:Ljava/lang/String;

.field private selectedTimeRaw:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-EiQbgC80UeVmg6-fPOFBYrp2kU(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$lambda$10(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AKE2LD8NdVepbNINWfNSpnsDgA8(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupClickListeners$lambda$1(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fa4rpLnFz3aclXLfrk2CI6u49ek(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->observeViewModel$lambda$19(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ft0nlw9GudVw3RuWeBhiYOETNn0(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupClickListeners$lambda$3(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KWMLrmF0ryUf81VvHZdpFyBg9RE(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;II)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$lambda$8(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$RQVkuw4iJJcEGxJV7jMH23bVBzQ(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$lambda$7(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WxTl1IIeEEX6JJgYC1-qDhX52_8(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;II)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$lambda$9(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJtsqCG9HQ6kEYwWETNXzmcWzx0(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$lambda$11(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$brHMtrpia9k8dARk_8itujXPJM8(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupClickListeners$lambda$4(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnNCWKV0eC91JU6mFfxxVTrzrds(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$lambda$12(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eij4bJaKdS-DI2tKqs4a0BU34kY(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$lambda$6(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXKrpQT41TtQtzvUlliwxR4E4kQ(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Ljava/lang/CharSequence;III)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupTextWatchers$lambda$5(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Ljava/lang/CharSequence;III)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nvvIFtIjPPOJyiYI1IXn769xlVI(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupClickListeners$lambda$0(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zI9S12lq2gbSjmQnvbj67ce1YKM(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupClickListeners$lambda$2(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 104
    invoke-direct {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;-><init>()V

    .line 106
    const-string v0, "overtime_bottom_sheet"

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->screenName:Ljava/lang/String;

    .line 108
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 402
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 405
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$special$$inlined$viewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 109
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 408
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 411
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$special$$inlined$inject$default$1;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->dataStore$delegate:Lkotlin/Lazy;

    .line 414
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 417
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$special$$inlined$inject$default$2;

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->observerUtil$delegate:Lkotlin/Lazy;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDataStore(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getDataStore()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final calculateTotal()V
    .locals 12

    const-string v0, "\u20b9"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, v3, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, " hrs"

    const-string v7, ""

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v5

    check-cast v5, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etRate:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 290
    :cond_3
    :goto_0
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 291
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    new-array v7, v2, [Ljava/lang/String;

    const-string v3, ":"

    aput-object v3, v7, v1

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 292
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-static {v3}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_1

    :cond_4
    const-wide/16 v7, 0x0

    :goto_1
    const/16 v3, 0x3c

    int-to-double v9, v3

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 294
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v5, v3

    .line 297
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v3, "%.2f"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvTotalAmount:Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;

    if-eqz v4, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewBold16;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    :catch_0
    :cond_5
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etRate:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    :cond_8
    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    .line 304
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 305
    :cond_b
    invoke-direct {p0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->updateButtonStyle(Z)V

    return-void
.end method

.method private final deleteOvertime()V
    .locals 9

    .line 330
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->date:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->userId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 332
    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 333
    :goto_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Invalid data"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const/4 v2, 0x2

    .line 339
    new-array v2, v2, [Lkotlin/Pair;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "date"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 340
    new-instance v3, Lkotlin/Pair;

    const-string v4, "user_id"

    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 338
    invoke-static {v2}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "remove_overtime_from_bs"

    invoke-virtual {p0, v3, v2}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->recordClickEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 343
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string v3, "getViewLifecycleOwner(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$deleteOvertime$1;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v0, v4}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$deleteOvertime$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getDataStore()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->dataStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private final getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->observerUtil$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    return-object v0
.end method

.method private final getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;

    move-result-object p0

    return-object p0
.end method

.method private final observeViewModel()V
    .locals 4

    .line 352
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getViewModel()Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/calendar/viewmodel/OvertimeViewModel;->getOtResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)V

    new-instance v3, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final observeViewModel$lambda$19(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lkotlin/Result;)Lkotlin/Unit;
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 356
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getObserverUtil()Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laborbook/keep/screen/calendar/utils/ObserverUtil;->getRefreshCalendar()Lkotlin/jvm/functions/Function4;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v3, v4, v5}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->dismiss()V

    .line 359
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/Fragment;

    instance-of v4, v4, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_4

    .line 360
    instance-of v0, v1, Lcom/laborbook/base/BaseBottomsheetFragment;

    if-eqz v0, :cond_3

    move-object v3, v1

    check-cast v3, Lcom/laborbook/base/BaseBottomsheetFragment;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/laborbook/base/BaseBottomsheetFragment;->dismiss()V

    .line 363
    :cond_4
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 364
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "Failed to process OT"

    :cond_5
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 367
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final saveOvertime()V
    .locals 18

    move-object/from16 v9, p0

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, " hrs"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 310
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etRate:Landroid/widget/EditText;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v1

    .line 311
    :cond_3
    iget-object v3, v9, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->date:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v1

    .line 312
    :cond_4
    iget-object v4, v9, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->userId:Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v4, v1

    .line 313
    :cond_5
    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 314
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Please fill all fields"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 317
    new-array v11, v0, [Ljava/lang/String;

    const-string v5, ":"

    aput-object v5, v11, v1

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 318
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    goto :goto_1

    :cond_a
    move-wide v10, v6

    :goto_1
    const/16 v1, 0x3c

    int-to-double v12, v1

    mul-double/2addr v10, v12

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_2

    :cond_b
    move-wide v0, v6

    :goto_2
    add-double/2addr v10, v0

    .line 320
    invoke-static {v2}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v6, v0

    .line 321
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    new-instance v13, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$saveOvertime$1;

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v4

    move-wide v4, v10

    invoke-direct/range {v0 .. v8}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$saveOvertime$1;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Ljava/lang/String;Ljava/lang/String;DDLkotlin/coroutines/Continuation;)V

    move-object v15, v13

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setupClickListeners()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->ivClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnRemoveOt:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private static final setupClickListeners$lambda$0(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->dismiss()V

    return-void
.end method

.method private static final setupClickListeners$lambda$1(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker()V

    return-void
.end method

.method private static final setupClickListeners$lambda$2(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker()V

    :cond_0
    return-void
.end method

.method private static final setupClickListeners$lambda$3(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->saveOvertime()V

    return-void
.end method

.method private static final setupClickListeners$lambda$4(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->deleteOvertime()V

    return-void
.end method

.method private final setupTextWatchers()V
    .locals 3

    .line 185
    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;)V

    .line 192
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/TextView;

    .line 434
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$setupTextWatchers$$inlined$doOnTextChanged$1;

    invoke-direct {v2, v0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$setupTextWatchers$$inlined$doOnTextChanged$1;-><init>(Lkotlin/jvm/functions/Function4;)V

    .line 435
    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etRate:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/TextView;

    .line 454
    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$setupTextWatchers$$inlined$doOnTextChanged$2;

    invoke-direct {v2, v0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$setupTextWatchers$$inlined$doOnTextChanged$2;-><init>(Lkotlin/jvm/functions/Function4;)V

    .line 455
    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private static final setupTextWatchers$lambda$5(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Ljava/lang/CharSequence;III)Lkotlin/Unit;
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->calculateTotal()V

    .line 187
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etRate:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    :cond_2
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 188
    :goto_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 189
    :cond_5
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->updateButtonStyle(Z)V

    .line 190
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showTimePicker()V
    .locals 17

    move-object/from16 v0, p0

    .line 197
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/laborbook/keep/R$layout;->dialog_overtime_timepicker:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 201
    sget v3, Lcom/laborbook/keep/R$id;->iv_close_picker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 202
    sget v4, Lcom/laborbook/keep/R$id;->np_hours:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 203
    sget v5, Lcom/laborbook/keep/R$id;->np_minutes:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    .line 204
    sget v6, Lcom/laborbook/keep/R$id;->btn_picker_ok:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    const/4 v6, 0x0

    .line 206
    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v7, 0x17

    .line 207
    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 209
    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v7, 0x3b

    .line 210
    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 213
    iget-object v7, v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-string v8, ":"

    const/4 v9, 0x1

    if-lez v7, :cond_0

    .line 214
    iget-object v7, v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v9, [Ljava/lang/String;

    aput-object v8, v11, v6

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-static {v7}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v6

    .line 218
    :goto_0
    iget-object v10, v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 219
    iget-object v10, v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    new-array v12, v9, [Ljava/lang/String;

    aput-object v8, v12, v6

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 224
    :cond_1
    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 225
    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 228
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    .line 229
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    .line 232
    new-instance v6, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda11;

    invoke-direct {v6, v0, v4}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda11;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    new-instance v6, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda12;

    invoke-direct {v6, v0, v5}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda12;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    new-instance v6, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda13;

    invoke-direct {v6, v4, v0, v2, v5}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda13;-><init>(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;)V

    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 252
    new-instance v6, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v0, v2, v4}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda1;-><init>(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 258
    invoke-static {v2, v4, v5}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$updateOkState(Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    .line 260
    new-instance v6, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v3, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda3;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v2, v3}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 275
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v4, v5}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static final showTimePicker$lambda$10(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "$dialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method private static final showTimePicker$lambda$11(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$dialog"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result p0

    .line 264
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    .line 265
    sget-object p4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput-object p0, p2, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    .line 267
    invoke-virtual {p2}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p4, " hrs"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    invoke-direct {p2}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->calculateTotal()V

    .line 269
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method private static final showTimePicker$lambda$12(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    .line 278
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final showTimePicker$lambda$6(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final showTimePicker$lambda$7(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Landroid/widget/NumberPicker;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static final showTimePicker$lambda$8(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;II)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {p2, p0, p3}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$updateOkState(Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    .line 250
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    return-void
.end method

.method private static final showTimePicker$lambda$9(Landroid/widget/NumberPicker;Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;II)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-static {p2, p3, p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->showTimePicker$updateOkState(Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    .line 255
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragmentKt;->access$applyConsistentStyling(Landroid/widget/NumberPicker;Landroid/content/Context;)V

    return-void
.end method

.method private static final showTimePicker$updateOkState(Lcom/boilerplate/uikit/views/buttons/PrimaryButton;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
    .locals 0

    .line 244
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    return-void
.end method

.method private final updateButtonStyle(Z)V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 372
    :goto_0
    invoke-virtual {v0, p1}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setAlpha(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 104
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 132
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->_binding:Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    .line 133
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 120
    invoke-super {p0, p1}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "DATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->date:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->userId:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    const-string v2, "ot_minutes"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    goto :goto_1

    :cond_2
    move-wide v2, v0

    :goto_1
    iput-wide v2, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->existingOtMinutes:D

    .line 124
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "ot_per_hour"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :cond_3
    iput-wide v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->existingOtPerHour:D

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->_binding:Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseBottomsheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupClickListeners()V

    .line 139
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setupTextWatchers()V

    .line 140
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->tvDate:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->date:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/laborbook/base/BaseExtensionKt;->toFormattedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    iget-wide p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->existingOtMinutes:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const/4 v3, 0x0

    if-lez v2, :cond_4

    iget-wide v4, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->existingOtPerHour:D

    cmpl-double v0, v4, v0

    if-lez v0, :cond_4

    const/16 v0, 0x3c

    int-to-double v0, v0

    div-double v4, p1, v0

    double-to-int v2, v4

    rem-double/2addr p1, v0

    double-to-int p1, p1

    .line 146
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etHours:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->selectedTimeRaw:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " hrs"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->etRate:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->existingOtPerHour:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_3
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->calculateTotal()V

    .line 151
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnRemoveOt:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnOk:Lcom/boilerplate/uikit/views/buttons/PrimaryButton;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v3}, Lcom/boilerplate/uikit/views/buttons/PrimaryButton;->setEnabled(Z)V

    .line 154
    :cond_5
    invoke-direct {p0, v3}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->updateButtonStyle(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/laborbook/keep/databinding/FragmentOvertimeBottomsheetBinding;->btnRemoveOt:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->observeViewModel()V

    return-void
.end method
