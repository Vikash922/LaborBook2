.class public final Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CashbookFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
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
.field final synthetic this$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 99
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p2

    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 102
    iget-object p3, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    invoke-static {p3}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->access$isLoading$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    invoke-static {p3}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->access$isLastPage$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)Z

    move-result p3

    if-nez p3, :cond_0

    add-int/lit8 p2, p2, -0x3

    if-lt p1, p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->access$getCurrentPage$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->access$setCurrentPage$p(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;I)V

    .line 104
    iget-object p1, p0, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment$setupView$1$2;->this$0:Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;

    invoke-static {p1}, Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;->access$loadTransactions(Lcom/laborbook/keep/screen/home/fragment/CashbookFragment;)V

    :cond_0
    return-void
.end method
