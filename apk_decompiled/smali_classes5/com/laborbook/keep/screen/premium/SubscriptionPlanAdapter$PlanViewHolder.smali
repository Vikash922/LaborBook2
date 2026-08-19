.class public final Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SubscriptionPlanAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlanViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionPlanAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionPlanAdapter.kt\ncom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,100:1\n1#2:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;",
        "<init>",
        "(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;)V",
        "bind",
        "",
        "plan",
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
        "isSelected",
        "",
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
.field private final binding:Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;


# direct methods
.method public static synthetic $r8$lambda$GjEuS-btEYBWIGq32bxckxi-B9s(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->bind$lambda$2$lambda$1(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->this$0:Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;

    .line 41
    invoke-virtual {p2}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    iput-object p2, p0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

    return-void
.end method

.method private static final bind$lambda$2$lambda$1(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Landroid/view/View;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$plan"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->getAdapterPosition()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 92
    invoke-static {p1}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->access$getOnPlanSelected$p(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;)Lkotlin/jvm/functions/Function2;

    move-result-object p3

    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;->updateSelection(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "plan"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v2, v0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->binding:Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;

    iget-object v3, v0, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;->this$0:Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;

    .line 45
    invoke-virtual {v2}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    .line 48
    iget-object v4, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvPlanName:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "toUpperCase(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "substring(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasDiscount()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    .line 52
    iget-object v4, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvDiscountBadge:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v4, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvDiscountBadge:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountPercent()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "% OFF"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v4, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvDiscountBadge:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getHasDiscount()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getDiscountedPrice()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getPrice()I

    move-result v4

    .line 60
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "toLowerCase(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "quarter"

    const-string v12, "month"

    const-string v13, "year"

    const-string v14, "week"

    const-string v5, "monthly"

    const-string v7, "yearly"

    const-string v8, "weekly"

    const-string v15, "quarterly"

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_1
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_3
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :sswitch_4
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :sswitch_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v6, 0x34

    goto :goto_3

    :sswitch_6
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    :sswitch_7
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0xd

    goto :goto_3

    :goto_2
    const/4 v6, 0x4

    .line 67
    :goto_3
    div-int v6, v4, v6

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto :goto_4

    :sswitch_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :sswitch_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :sswitch_a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :sswitch_b
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :sswitch_c
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :sswitch_d
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v5, v7

    goto :goto_5

    :sswitch_e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v8

    goto :goto_5

    :sswitch_f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v15

    goto :goto_5

    .line 75
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :cond_9
    :goto_5
    iget-object v0, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->tvPlanBreakdown:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u20b9"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/weekly, billed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at \u20b9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->ivSelectionCheck:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    const/16 v8, 0x8

    :goto_6
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_b

    .line 84
    iget-object v0, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->llPlanRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v4, Lcom/laborbook/keep/R$drawable;->plan_selected_border:I

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    goto :goto_7

    .line 86
    :cond_b
    iget-object v0, v2, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->llPlanRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v4, Lcom/laborbook/keep/R$drawable;->plan_unselected_border:I

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    .line 90
    :goto_7
    invoke-virtual {v2}, Lcom/laborbook/keep/databinding/ItemSubscriptionPlanBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v2, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder$$ExternalSyntheticLambda0;

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v3, v1}, Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter$PlanViewHolder;Lcom/laborbook/keep/screen/premium/SubscriptionPlanAdapter;Lcom/laborbook/keep/model/subscription/SubscriptionPlan;)V

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f8a4ac7 -> :sswitch_7
        -0x2f307f7f -> :sswitch_6
        -0x2bc88576 -> :sswitch_5
        0x379ff4 -> :sswitch_4
        0x38883d -> :sswitch_3
        0x6342280 -> :sswitch_2
        0x26d3a2ac -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3f8a4ac7 -> :sswitch_f
        -0x2f307f7f -> :sswitch_e
        -0x2bc88576 -> :sswitch_d
        0x379ff4 -> :sswitch_c
        0x38883d -> :sswitch_b
        0x6342280 -> :sswitch_a
        0x26d3a2ac -> :sswitch_9
        0x49b5900d -> :sswitch_8
    .end sparse-switch
.end method
