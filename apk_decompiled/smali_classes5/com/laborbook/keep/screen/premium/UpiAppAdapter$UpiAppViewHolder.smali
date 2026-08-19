.class public final Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UpiAppAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/premium/UpiAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpiAppViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpiAppAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpiAppAdapter.kt\ncom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n360#2,7:70\n360#2,7:77\n*S KotlinDebug\n*F\n+ 1 UpiAppAdapter.kt\ncom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder\n*L\n60#1:70,7\n61#1:77,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemUpiAppBinding;",
        "<init>",
        "(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Lcom/laborbook/keep/databinding/ItemUpiAppBinding;)V",
        "bind",
        "",
        "upiApp",
        "Lcom/laborbook/keep/screen/premium/InstalledUpiApp;",
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
.field private final binding:Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/UpiAppAdapter;


# direct methods
.method public static synthetic $r8$lambda$3S6w1NZl5Ek7e7uZPRHqBgTR6As(Lcom/laborbook/keep/screen/premium/InstalledUpiApp;Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;->bind$lambda$3$lambda$2(Lcom/laborbook/keep/screen/premium/InstalledUpiApp;Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Lcom/laborbook/keep/databinding/ItemUpiAppBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/databinding/ItemUpiAppBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;->this$0:Lcom/laborbook/keep/screen/premium/UpiAppAdapter;

    .line 33
    invoke-virtual {p2}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

    return-void
.end method

.method private static final bind$lambda$3$lambda$2(Lcom/laborbook/keep/screen/premium/InstalledUpiApp;Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Landroid/view/View;)V
    .locals 5

    const-string p2, "$upiApp"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->isInstalled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->access$getSelectedPackageName$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->access$setSelectedPackageName$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->access$getInstalledApps$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 72
    check-cast v3, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    .line 60
    invoke-virtual {v3}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {p1, v2}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->notifyItemChanged(I)V

    .line 61
    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->access$getInstalledApps$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Ljava/util/List;

    move-result-object p2

    .line 78
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 79
    check-cast v0, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;

    .line 61
    invoke-virtual {v0}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->access$getSelectedPackageName$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p1, v4}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->notifyItemChanged(I)V

    .line 62
    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->access$getOnUpiSelected$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/screen/premium/InstalledUpiApp;)V
    .locals 10

    const-string v0, "upiApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemUpiAppBinding;

    iget-object v1, p0, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder;->this$0:Lcom/laborbook/keep/screen/premium/UpiAppAdapter;

    .line 38
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->tvUpiName:Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/boilerplate/uikit/views/textviews/text14/TextViewRegular14;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->isInstalled()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->ivUpiIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->tvUpiLetter:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->ivUpiIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 44
    :cond_0
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->ivUpiIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->tvUpiLetter:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->firstOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x3f

    .line 47
    :goto_0
    iget-object v3, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->tvUpiLetter:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_1
    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter;->access$getSelectedPackageName$p(Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ivSelected"

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->isInstalled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->ivSelected:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->show$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_2
    iget-object v2, v0, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->ivSelected:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/boilerplate/uikit/views/ExtentionsKt;->hide$default(Landroid/view/View;JLjava/lang/String;ILjava/lang/Object;)V

    .line 54
    :goto_2
    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->isInstalled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setEnabled(Z)V

    .line 55
    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {p1}, Lcom/laborbook/keep/screen/premium/InstalledUpiApp;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 56
    invoke-virtual {v0}, Lcom/laborbook/keep/databinding/ItemUpiAppBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v2, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/laborbook/keep/screen/premium/UpiAppAdapter$UpiAppViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/premium/InstalledUpiApp;Lcom/laborbook/keep/screen/premium/UpiAppAdapter;)V

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
