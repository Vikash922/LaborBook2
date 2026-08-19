.class public final Lcom/laborbook/keep/utils/CoachMarkManager;
.super Ljava/lang/Object;
.source "CoachMarkManager.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/utils/CoachMarkManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoachMarkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoachMarkManager.kt\ncom/laborbook/keep/utils/CoachMarkManager\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,103:1\n56#2,6:104\n*S KotlinDebug\n*F\n+ 1 CoachMarkManager.kt\ncom/laborbook/keep/utils/CoachMarkManager\n*L\n27#1:104,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u0016\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010\u0012\u001a\u00020\u000bJ$\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0019R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/laborbook/keep/utils/CoachMarkManager;",
        "Lorg/koin/core/component/KoinComponent;",
        "<init>",
        "()V",
        "dataStore",
        "Lcom/laborbook/base/datastore/DataStoreManager;",
        "getDataStore",
        "()Lcom/laborbook/base/datastore/DataStoreManager;",
        "dataStore$delegate",
        "Lkotlin/Lazy;",
        "shouldShowCoachMark",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markCoachMarkAsShown",
        "",
        "resetCoachMark",
        "isDebugMode",
        "showEditButtonCoachMark",
        "activity",
        "Landroid/app/Activity;",
        "targetView",
        "Landroid/view/View;",
        "onDismiss",
        "Lkotlin/Function0;",
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
.field private static final COACH_MARK_SHOWN_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/laborbook/keep/utils/CoachMarkManager$Companion;


# instance fields
.field private final dataStore$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$nCp9mhboEVw8Wm2zVShJHtWlbOE(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/utils/CoachMarkManager;->showEditButtonCoachMark$lambda$1(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rzQdCyV6cMpUogu2ujwNgP6pq-c(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/laborbook/keep/utils/CoachMarkManager;->showEditButtonCoachMark$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/utils/CoachMarkManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/utils/CoachMarkManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/utils/CoachMarkManager;->Companion:Lcom/laborbook/keep/utils/CoachMarkManager$Companion;

    .line 30
    const-string v0, "edit_button_coach_mark_shown"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/laborbook/keep/utils/CoachMarkManager;->COACH_MARK_SHOWN_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 106
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/laborbook/keep/utils/CoachMarkManager$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/keep/utils/CoachMarkManager$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/laborbook/keep/utils/CoachMarkManager;->dataStore$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getDataStore()Lcom/laborbook/base/datastore/DataStoreManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/laborbook/keep/utils/CoachMarkManager;->dataStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/datastore/DataStoreManager;

    return-object v0
.end method

.method private static final showEditButtonCoachMark$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$onDismiss"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showEditButtonCoachMark$lambda$1(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    const-string p1, "$popupWindow"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 25
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final isDebugMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final markCoachMarkAsShown(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/laborbook/keep/utils/CoachMarkManager;->getDataStore()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p1

    sget-object v0, Lcom/laborbook/keep/utils/CoachMarkManager;->COACH_MARK_SHOWN_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2}, Lcom/laborbook/base/datastore/DataStoreManager;->write(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final resetCoachMark(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    const-string p1, "CoachMarkManager"

    const-string p2, "resetCoachMark: Attempted to reset coach mark in release mode - ignored"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final shouldShowCoachMark(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p2, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;

    iget v0, p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p2, p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->label:I

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;

    invoke-direct {p1, p0, p2}, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;-><init>(Lcom/laborbook/keep/utils/CoachMarkManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 33
    iget v1, p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/laborbook/keep/utils/CoachMarkManager;->getDataStore()Lcom/laborbook/base/datastore/DataStoreManager;

    move-result-object p2

    sget-object v1, Lcom/laborbook/keep/utils/CoachMarkManager;->COACH_MARK_SHOWN_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/laborbook/base/datastore/DataStoreManager;->read(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput v2, p1, Lcom/laborbook/keep/utils/CoachMarkManager$shouldShowCoachMark$1;->label:I

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "shouldShowCoachMark: isShown = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CoachMarkManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr p1, v2

    .line 36
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final showEditButtonCoachMark(Landroid/app/Activity;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-string v0, "CoachMarkManager"

    const-string v1, "showEditButtonCoachMark: Starting coach mark display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/laborbook/keep/R$layout;->coach_mark_simple:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v3, 0x1

    .line 69
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v2, Lcom/laborbook/keep/utils/CoachMarkManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lcom/laborbook/keep/utils/CoachMarkManager$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 79
    sget p3, Lcom/laborbook/keep/R$id;->tv_title:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 80
    sget v2, Lcom/laborbook/keep/R$id;->tv_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    sget v3, Lcom/laborbook/keep/R$id;->btn_got_it:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    sget v4, Lcom/laborbook/keep/R$string;->edit_staff_details:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget p3, Lcom/laborbook/keep/R$string;->edit_button_coach_mark_description:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget p3, Lcom/laborbook/keep/R$string;->got_it:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance p1, Lcom/laborbook/keep/utils/CoachMarkManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/laborbook/keep/utils/CoachMarkManager$$ExternalSyntheticLambda1;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x2

    .line 93
    new-array p3, p1, [I

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p3

    neg-int p3, p3

    div-int/2addr p3, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, p1

    add-int/2addr p3, v0

    const/16 p1, 0x14

    .line 97
    invoke-virtual {v1, p2, p3, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
