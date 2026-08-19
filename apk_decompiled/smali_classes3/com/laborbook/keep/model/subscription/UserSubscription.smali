.class public final Lcom/laborbook/keep/model/subscription/UserSubscription;
.super Ljava/lang/Object;
.source "UserSubscription.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J/\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/laborbook/keep/model/subscription/UserSubscription;",
        "",
        "subscriptionTier",
        "",
        "subscription",
        "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;",
        "features",
        "",
        "Lcom/laborbook/keep/model/subscription/Feature;",
        "<init>",
        "(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Ljava/util/List;)V",
        "getSubscriptionTier",
        "()Ljava/lang/String;",
        "getSubscription",
        "()Lcom/laborbook/keep/model/subscription/SubscriptionDetails;",
        "getFeatures",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final features:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "features"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscription"
    .end annotation
.end field

.field private final subscriptionTier:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscription_tier"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/Feature;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "subscriptionTier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    .line 12
    iput-object p3, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/keep/model/subscription/UserSubscription;Ljava/lang/String;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Ljava/util/List;ILjava/lang/Object;)Lcom/laborbook/keep/model/subscription/UserSubscription;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/model/subscription/UserSubscription;->copy(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Ljava/util/List;)Lcom/laborbook/keep/model/subscription/UserSubscription;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/laborbook/keep/model/subscription/SubscriptionDetails;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/Feature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Ljava/util/List;)Lcom/laborbook/keep/model/subscription/UserSubscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/Feature;",
            ">;)",
            "Lcom/laborbook/keep/model/subscription/UserSubscription;"
        }
    .end annotation

    const-string/jumbo v0, "subscriptionTier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/laborbook/keep/model/subscription/UserSubscription;

    invoke-direct {v0, p1, p2, p3}, Lcom/laborbook/keep/model/subscription/UserSubscription;-><init>(Ljava/lang/String;Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/keep/model/subscription/UserSubscription;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/keep/model/subscription/UserSubscription;

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    iget-object p1, p1, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/laborbook/keep/model/subscription/Feature;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    return-object v0
.end method

.method public final getSubscription()Lcom/laborbook/keep/model/subscription/SubscriptionDetails;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    return-object v0
.end method

.method public final getSubscriptionTier()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/SubscriptionDetails;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserSubscription(subscriptionTier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscriptionTier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->subscription:Lcom/laborbook/keep/model/subscription/SubscriptionDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/UserSubscription;->features:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
