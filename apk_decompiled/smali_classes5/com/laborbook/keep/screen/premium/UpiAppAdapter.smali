.class public final Lcom/laborbook/keep/screen/premium/UpiAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UpiAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0016B1\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001c\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u0012\u001a\u00020\n2\n\u0010\u0013\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/UpiAppAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;",
        "installedApps",
        "",
        "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
        "selectedPackageName",
        "",
        "onUpiSelected",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemCount",
        "UpiAppViewHolder",
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
.field private final installedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            ">;"
        }
    .end annotation
.end field

.field private final onUpiSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "installedApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpiSelected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->installedApps:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->selectedPackageName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->onUpiSelected:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getInstalledApps$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Ljava/util/List;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->installedApps:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOnUpiSelected$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->onUpiSelected:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getSelectedPackageName$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->selectedPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setSelectedPackageName$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->selectedPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->installedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 10
    check-cast p1, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->onBindViewHolder(Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->installedApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    invoke-virtual {p1, p2}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;->bind(Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 17
    invoke-static {p2, p1, v0}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p2, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;-><init>(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Lcom/laborbook/keep/databinding/ItemUpiAppBinding;)V

    return-object p2
.end method
