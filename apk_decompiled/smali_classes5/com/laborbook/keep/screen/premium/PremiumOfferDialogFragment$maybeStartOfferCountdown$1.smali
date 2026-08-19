.class public final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;
.super Ljava/lang/Object;
.source "PremiumOfferDialogFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->maybeStartOfferCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1",
        "Ljava/lang/Runnable;",
        "run",
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
.field final synthetic $endAt:J

.field final synthetic this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;J)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    iput-wide p2, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;->$endAt:J

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 762
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$get_binding$p(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    iget-wide v1, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;->$endAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    .line 764
    div-long/2addr v1, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 766
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llOfferTimer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$stopOfferCountdown(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;)V

    return-void

    .line 770
    :cond_1
    iget-object v3, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->tvOfferTimer:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$maybeStartOfferCountdown$1;->this$0:Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-static {v4, v1, v2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->access$formatOfferDuration(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;J)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, v0, Lcom/laborbook/keep/databinding/DialogPremiumOfferBinding;->llOfferTimer:Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
