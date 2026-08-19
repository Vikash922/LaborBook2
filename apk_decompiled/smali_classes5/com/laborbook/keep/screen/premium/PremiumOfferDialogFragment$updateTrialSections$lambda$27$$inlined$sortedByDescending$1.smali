.class public final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$updateTrialSections$lambda$27$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->updateTrialSections(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 PremiumOfferDialogFragment.kt\ncom/laborbook/keep/screen/premium/PremiumOfferDialogFragment\n*L\n1#1,121:1\n583#2,5:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "a",
        "kotlin.jvm.PlatformType",
        "b",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method public constructor <init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$updateTrialSections$lambda$27$$inlined$sortedByDescending$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    check-cast p2, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 123
    invoke-virtual {p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$updateTrialSections$lambda$27$$inlined$sortedByDescending$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getDefaultInterval$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v2, "year"

    const-string v6, "yearly"

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    move p2, v4

    goto :goto_0

    .line 124
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    aput-object v6, v0, v3

    aput-object v2, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object p2

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v7

    goto :goto_0

    :cond_1
    move p2, v3

    .line 125
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 121
    check-cast p2, Ljava/lang/Comparable;

    check-cast p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    .line 123
    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$updateTrialSections$lambda$27$$inlined$sortedByDescending$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v8}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$getDefaultInterval$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v4

    goto :goto_1

    .line 124
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    aput-object v6, v0, v3

    aput-object v2, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->getInterval()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v3, v7

    .line 125
    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 121
    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
