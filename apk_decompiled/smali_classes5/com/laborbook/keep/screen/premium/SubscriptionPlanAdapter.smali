.class public final Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SubscriptionPlanAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0016B9\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001c\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u001c\u0010\u0011\u001a\u00020\n2\n\u0010\u0012\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0008\u0010\u0014\u001a\u00020\u0007H\u0016J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;",
        "plans",
        "",
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
        "selectedPosition",
        "",
        "onPlanSelected",
        "Lkotlin/Function2;",
        "",
        "<init>",
        "(Ljava/util/List;ILkotlin/jvm/functions/Function2;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemCount",
        "updateSelection",
        "PlanViewHolder",
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
.field private final onPlanSelected:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final plans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "plans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPlanSelected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->plans:Ljava/util/List;

    .line 13
    iput p2, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->selectedPosition:I

    .line 14
    iput-object p3, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->onPlanSelected:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getOnPlanSelected$p(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->onPlanSelected:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->plans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 11
    check-cast p1, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->onBindViewHolder(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->plans:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    iget v1, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->selectedPosition:I

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->bind(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 18
    invoke-static {p2, p1, v0}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p2, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;-><init>(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;)V

    return-object p2
.end method

.method public final updateSelection(I)V
    .locals 1

    .line 33
    iget v0, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->selectedPosition:I

    .line 34
    iput p1, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->selectedPosition:I

    .line 35
    invoke-virtual {p0, v0}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->notifyItemChanged(I)V

    .line 36
    iget p1, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->selectedPosition:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->notifyItemChanged(I)V

    return-void
.end method
