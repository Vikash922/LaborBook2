.class public final Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StaffUserAdapter.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaffViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStaffUserAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,614:1\n56#2,6:615\n*S KotlinDebug\n*F\n+ 1 StaffUserAdapter.kt\ncom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder\n*L\n64#1:615,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J2\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lorg/koin/core/component/KoinComponent;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemContactListBinding;",
        "<init>",
        "(Lcom/laborbook/keep/databinding/ItemContactListBinding;)V",
        "fragmentNavigator",
        "Lcom/laborbook/base/navigator/FragmentNavigator;",
        "getFragmentNavigator",
        "()Lcom/laborbook/base/navigator/FragmentNavigator;",
        "fragmentNavigator$delegate",
        "Lkotlin/Lazy;",
        "bind",
        "",
        "staffUser",
        "Lcom/laborbook/keep/model/StaffUser;",
        "isLocked",
        "",
        "onNavigate",
        "Lkotlin/Function0;",
        "onLockedClick",
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
.field private final binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

.field private final fragmentNavigator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$32Vw4tkkc3Pk6uqWJb9qt_u0ICM(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->bind$lambda$0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$an236So8zwRBGL7yvilaWHItbFw(Lkotlin/jvm/functions/Function0;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;Lcom/laborbook/keep/model/StaffUser;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->bind$lambda$1(Lkotlin/jvm/functions/Function0;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;Lcom/laborbook/keep/model/StaffUser;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/keep/databinding/ItemContactListBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/ItemContactListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    .line 64
    move-object p1, p0

    check-cast p1, Lorg/koin/core/component/KoinComponent;

    .line 617
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 620
    new-instance v1, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->fragmentNavigator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final bind$lambda$0(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onLockedClick"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final bind$lambda$1(Lkotlin/jvm/functions/Function0;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;Lcom/laborbook/keep/model/StaffUser;Landroid/view/View;)V
    .locals 0

    const-string p3, "$onNavigate"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$staffUser"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 95
    invoke-direct {p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    sget-object p1, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;->Companion:Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;

    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/laborbook/keep/model/StaffUser;->getMobileNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/laborbook/keep/screen/calendar/fragment/LaborMonthlyCalendarFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Lcom/laborbook/base/navigator/FragmentNavigator;->start(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private final getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->fragmentNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/navigator/FragmentNavigator;

    return-object v0
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/model/StaffUser;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/model/StaffUser;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "staffUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNavigate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLockedClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvInitial:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    const-string v1, "tvInitial"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/laborbook/base/BaseExtensionKt;->setRandomLightCircleBackground(Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 68
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/StaffUser;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvNumber:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/StaffUser;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemContactListBinding;->tvInitial:Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;

    invoke-virtual {p1}, Lcom/laborbook/keep/model/StaffUser;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toUpperCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewBold14;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 74
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemContactListBinding;->ivLock:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 80
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setClickable(Z)V

    .line 81
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p1, p1, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemContactListBinding;->ivLock:Landroid/widget/ImageView;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 92
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setClickable(Z)V

    .line 93
    iget-object p2, p0, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemContactListBinding;

    iget-object p2, p2, Lcom/laborbook/keep/databinding/ItemContactListBinding;->itemRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p4, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p4, p3, p0, p1}, Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/laborbook/keep/screen/home/adapter/StaffUserAdapter$StaffViewHolder;Lcom/laborbook/keep/model/StaffUser;)V

    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 62
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
