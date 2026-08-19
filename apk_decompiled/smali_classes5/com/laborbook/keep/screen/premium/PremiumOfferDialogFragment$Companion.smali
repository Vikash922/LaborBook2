.class public final Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;
.super Ljava/lang/Object;
.source "PremiumOfferDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ARG_IS_TRIAL_EXPIRED",
        "ARG_IS_HARD_PAYWALL",
        "newInstance",
        "Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;",
        "isTrialExpired",
        "",
        "isHardPaywall",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;ZZILjava/lang/Object;)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 1178
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment$Companion;->newInstance(ZZ)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(ZZ)Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1179
    new-instance v0, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;-><init>()V

    .line 1180
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1181
    const-string v2, "is_trial_expired"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1182
    const-string p1, "is_hard_paywall"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1180
    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/premium/PremiumOfferDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
