.class public final Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PaywallReviewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;",
        "<init>",
        "(Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/laborbook/keep/screen/premium/PaywallReviewItem;",
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
.field private final binding:Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/screen/premium/PaywallReviewItem;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;->tvReviewName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PaywallReviewItem;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;->tvReviewText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PaywallReviewItem;->getReviewText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;->tvReviewStars:Landroid/widget/TextView;

    const-string v1, "\u2605"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PaywallReviewItem;->getRatingStars()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/PaywallReviewItem;->getAvatarResId()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 45
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PaywallReviewAdapter$ReviewViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;

    iget-object v0, v0, Lcom/laborbook/keep/databinding/ItemPaywallReviewBinding;->ivReviewAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
