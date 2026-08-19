.class public final Lcom/inmobi/media/Q5;
.super Lcom/inmobi/media/Q0;
.source "SourceFile"


# instance fields
.field public M:I

.field public N:Z

.field public O:Lcom/inmobi/media/gc;

.field public P:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlacement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;-><init>(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V

    .line 5
    new-instance v0, Lcom/inmobi/media/gc;

    invoke-direct {v0}, Lcom/inmobi/media/gc;-><init>()V

    iput-object v0, p0, Lcom/inmobi/media/Q5;->O:Lcom/inmobi/media/gc;

    .line 20
    const-string v0, "Q5"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inmobi/media/Y;->l()J

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->a(Landroid/content/Context;Lcom/inmobi/media/Y;Lcom/inmobi/media/E0;)V

    .line 22
    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q5;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/Q5;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->I0()V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Q5;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2310
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/Q0;->a(IZ)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Q5;Lcom/inmobi/media/E0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q5;->i(Lcom/inmobi/media/E0;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Q5;Lcom/inmobi/media/Ya;Landroid/content/Context;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 11
    const-string v1, "list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 13
    invoke-virtual {p0, p2}, Lcom/inmobi/media/Q5;->b(Landroid/content/Context;)S

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->f(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/Q0;->b(IZ)V

    .line 18
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda3;-><init>(Lcom/inmobi/media/Q5;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/Q5;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/inmobi/media/Q5;->P:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final b(Lcom/inmobi/media/Q5;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 205
    const-string v1, "TAG"

    const-string v2, "Q0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "clearAdPods "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/Q0;->A:Z

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->h()V

    .line 208
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/inmobi/media/Q0;->w:I

    .line 210
    iput v0, p0, Lcom/inmobi/media/Q0;->x:I

    .line 211
    iget-object v0, p0, Lcom/inmobi/media/Q0;->z:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "InMobiInterstitial"

    if-eqz v0, :cond_2

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interstitial ad dismissed for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/media/E0;->b()V

    goto :goto_0

    .line 220
    :cond_3
    iget-object p0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p0, :cond_4

    .line 221
    check-cast p0, Lcom/inmobi/media/g5;

    const-string v0, "Listener was garbage collected. Unable to give callback"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static final c(Lcom/inmobi/media/Q5;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q5;->a(Lcom/inmobi/media/E0;)V

    return-void
.end method

.method public static final d(Lcom/inmobi/media/Q5;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q5;->b(Lcom/inmobi/media/E0;)V

    return-void
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Q5"

    return-object v0
.end method

.method public static final e(Lcom/inmobi/media/Q5;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s0()V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->y()Lcom/inmobi/media/x0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/x0;->f()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->z()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/inmobi/media/Q0;->g(I)V

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s0()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final D0()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->f0()Z

    move-result v0

    const-string v1, "TAG"

    const/4 v2, 0x1

    const-string v3, "Q5"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Some of the dependency libraries for Interstitial not found"

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x7d7

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return v4

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-nez v0, :cond_2

    return v4

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v5

    const-string v6, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    const-string v7, "InMobiInterstitial"

    if-ne v5, v2, :cond_4

    .line 15
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_3

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x7d8

    invoke-virtual {p0, v0, v4, v1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto/16 :goto_2

    :cond_4
    const/4 v8, 0x7

    if-ne v5, v8, :cond_5

    goto :goto_0

    :cond_5
    const/4 v8, 0x6

    if-ne v5, v8, :cond_7

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_6

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_6
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x7da

    invoke-virtual {p0, v0, v4, v1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_2

    :cond_7
    const/4 v8, 0x2

    if-ne v5, v8, :cond_b

    .line 31
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v1

    const-string v2, "htmlUrl"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 38
    :cond_8
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->e(Lcom/inmobi/media/E0;)V

    goto :goto_2

    .line 39
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_a

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_a
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x7db

    invoke-virtual {p0, v0, v4, v1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :goto_2
    return v4

    .line 45
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v5, 0x4

    if-ne v5, v0, :cond_10

    .line 46
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->W()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->g()V

    goto :goto_4

    .line 48
    :cond_c
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_d

    .line 49
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "An ad is ready with the ad unit. Signaling ad load success ..."

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-nez v0, :cond_e

    .line 55
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_f

    .line 56
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Listener was garbage collected. Unable to give callback"

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 63
    :cond_e
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->e(Lcom/inmobi/media/E0;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->f(Lcom/inmobi/media/E0;)V

    :cond_f
    :goto_3
    return v4

    .line 65
    :cond_10
    :goto_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->e0()V

    return v2
.end method

.method public final E0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getCacheConfig(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;->getTimeToLive()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/h;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_1

    .line 4
    const-string v2, "TAG"

    const-string v3, "Q5"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "Top ad has expired, failing show of ad."

    invoke-virtual {v1, v3, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public F()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMinimumRefreshInterval()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final F0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/inmobi/media/Q5;->N:Z

    .line 3
    invoke-interface {v0}, Lcom/inmobi/media/x;->e()V

    return-void
.end method

.method public final G0()Lcom/inmobi/media/gc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q5;->O:Lcom/inmobi/media/gc;

    return-object v0
.end method

.method public final H0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final I0()V
    .locals 6

    .line 1
    const-string v0, "Cannot handle markupType: "

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v2, "TAG"

    const-string v3, "Q5"

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v4, "renderAdPostInternetCheck"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->k0()V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->o0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s()Lcom/inmobi/media/S0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/inmobi/media/S0;->g:J

    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->d0()V

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x409f29ea

    if-eq v4, v5, :cond_5

    const v5, 0x3107ab

    if-eq v4, v5, :cond_3

    const v5, 0x49aca1c4    # 1414200.5f

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "htmlUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    const-string v4, "html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda2;-><init>(Lcom/inmobi/media/Q5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 17
    :cond_5
    const-string v4, "inmobiJson"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 18
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_9

    .line 19
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v3, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_9

    .line 21
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Waiting for Vast Processing"

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_8

    .line 23
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    const-string v2, "Exception while loading ad."

    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 25
    :cond_8
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    const/16 v2, 0x856

    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final J()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final K0()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitAdNotReady "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Q5;->O:Lcom/inmobi/media/gc;

    new-instance v7, Lcom/inmobi/media/V;

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s()Lcom/inmobi/media/S0;

    move-result-object v8

    .line 5
    iget-boolean v1, p0, Lcom/inmobi/media/Q0;->A:Z

    if-eqz v1, :cond_1

    .line 6
    iget v1, p0, Lcom/inmobi/media/Q0;->x:I

    invoke-virtual {p0, v1}, Lcom/inmobi/media/Q0;->a(I)Lcom/inmobi/media/h;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/inmobi/media/h;->p()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->y()Lcom/inmobi/media/x0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/inmobi/media/x0;->o()Ljava/lang/Boolean;

    move-result-object v2

    :cond_3
    move-object v10, v2

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v12

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/media/V;-><init>(Lcom/inmobi/media/S0;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;B)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "adNotReadyMetadata"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-wide v2, v8, Lcom/inmobi/media/S0;->c:J

    .line 33
    sget-object v4, Lcom/inmobi/media/Xc;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "latency"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v12, :cond_4

    const/16 v2, 0x89c

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    const/16 v2, 0x89d

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    if-ne v12, v2, :cond_6

    const/16 v2, 0x89e

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-ne v12, v2, :cond_7

    const/16 v2, 0x89f

    goto :goto_2

    :cond_7
    const/4 v2, 0x6

    if-ne v12, v2, :cond_8

    const/16 v2, 0x8a0

    goto :goto_2

    :cond_8
    const/4 v2, 0x7

    if-ne v12, v2, :cond_9

    const/16 v2, 0x8a1

    goto :goto_2

    :cond_9
    const/16 v2, 0x8

    if-ne v12, v2, :cond_a

    const/16 v2, 0x8c2

    goto :goto_2

    :cond_a
    const/16 v2, 0x8a2

    .line 36
    :goto_2
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "errorCode"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_b

    .line 37
    const-string v2, "markupType"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz v9, :cond_c

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "creativeType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v10, :cond_d

    .line 39
    const-string v2, "isRewarded"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_d
    invoke-virtual {v8}, Lcom/inmobi/media/S0;->a()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 42
    const-string v3, "metadataBlob"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_e
    iget-object v2, v8, Lcom/inmobi/media/S0;->a:Lcom/inmobi/media/Q0;

    .line 47
    invoke-virtual {v2}, Lcom/inmobi/media/Q0;->q()Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "adType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v2

    const-string v3, "networkType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v2, v8, Lcom/inmobi/media/S0;->a:Lcom/inmobi/media/Q0;

    .line 52
    invoke-virtual {v2}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/Y;->l()J

    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "plId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-boolean v0, v0, Lcom/inmobi/media/gc;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "isAdLoaded"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, v8, Lcom/inmobi/media/S0;->a:Lcom/inmobi/media/Q0;

    .line 56
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/Y;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 57
    const-string v2, "plType"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_f
    sget-object v0, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 60
    sget-object v0, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 61
    const-string v2, "AdNotReady"

    invoke-static {v2, v1, v0}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

.method public final L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully loaded Interstitial ad markup in the WebView for placement id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "InMobiInterstitial"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->i()V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->r0()V

    return-void
.end method

.method public a(B)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 2315
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2316
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 2317
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p1

    const-string v2, "TAG"

    const-string v3, "Q5"

    if-eqz p1, :cond_1

    .line 2318
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2319
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "RenderView time out, none of the ad provided success"

    invoke-virtual {p1, v3, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->h()V

    .line 2321
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x85b

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_1

    .line 2323
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->b(B)V

    .line 2324
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 2325
    const-string v0, "RenderView time out, providing success based on "

    invoke-static {v3, v2, v0}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3127
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v3, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "first(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->h(I)V

    .line 3129
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->L0()V

    .line 3130
    iget-object p1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 3131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_7

    .line 3132
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 3133
    invoke-static {p0, v2, v0, v1, v3}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;IZILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3138
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->h()V

    goto :goto_1

    .line 3141
    :cond_5
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->a(B)V

    goto :goto_1

    .line 3145
    :cond_6
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->a(B)V

    :cond_7
    :goto_1
    return-void
.end method

.method public a(ILcom/inmobi/media/Ya;)V
    .locals 0

    .line 1
    const-string p1, "renderView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILcom/inmobi/media/Ya;Landroid/content/Context;)V
    .locals 4

    const-string v0, "renderView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2289
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    const-string v1, "TAG"

    const-string v2, "Q5"

    if-nez v0, :cond_1

    .line 2290
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2291
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "Cannot show an pod ad as isPod is not set."

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2292
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2293
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 2294
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le p1, v0, :cond_5

    .line 2295
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 2296
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 2297
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 2298
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2299
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 2300
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_2

    .line 2301
    iget-boolean v0, v0, Lcom/inmobi/media/Ya;->m0:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 2302
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object p3

    .line 2303
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->a(ILcom/inmobi/media/Ya;Landroid/content/Context;)V

    .line 2304
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda1;-><init>(Lcom/inmobi/media/Q5;Lcom/inmobi/media/Ya;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    .line 2305
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    .line 2306
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p3, "Cannot show an pod ad with invalid index passed"

    invoke-virtual {p1, v2, p3}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 2308
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    .line 2309
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/Q0;->b(IZ)V

    return-void
.end method

.method public a(Lcom/inmobi/media/E0;)V
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "Q5"

    if-eqz v0, :cond_0

    .line 31
    const-string v3, "handleAdScreenDismissed "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 662
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v3, 0x7

    const/4 v4, 0x6

    if-ne v0, v3, :cond_1

    .line 664
    iget p1, p0, Lcom/inmobi/media/Q5;->M:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/inmobi/media/Q5;->M:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 666
    invoke-virtual {p0, v4}, Lcom/inmobi/media/Q0;->d(B)V

    .line 667
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    .line 668
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdUnit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state - RENDERED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 671
    :cond_2
    iget v0, p0, Lcom/inmobi/media/Q5;->M:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/media/Q5;->M:I

    .line 672
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "InMobiInterstitial"

    if-eqz v0, :cond_3

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interstitial ad dismissed for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 674
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 679
    invoke-virtual {p1}, Lcom/inmobi/media/E0;->b()V

    goto :goto_0

    .line 680
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_5

    .line 681
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "Listener was garbage collected. Unable to give callback"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/inmobi/media/Y;Z)V
    .locals 3

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Y;Z)V

    const-string v0, "TAG"

    const/4 v1, 0x2

    const-string v2, "Q5"

    if-nez p2, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 p2, 0x4

    if-ne p2, p1, :cond_5

    :cond_0
    const/4 p1, 0x0

    .line 1661
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->d(B)V

    .line 1662
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_1

    .line 1663
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdUnit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state - CREATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, v0}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :cond_1
    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 1666
    invoke-virtual {p0, p2, p1, p1}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_0

    .line 1673
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-ne v1, p1, :cond_5

    .line 1674
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 1675
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string p2, "Asset are ready now"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->a0()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 1677
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->c(Z)V

    .line 1678
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->f()V

    goto :goto_0

    .line 1680
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->r0()V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/inmobi/media/Ya;Landroid/content/Context;)V
    .locals 4

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 21
    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeCurrentPodAd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/inmobi/media/Q5;->a(ILcom/inmobi/media/Ya;Landroid/content/Context;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/inmobi/media/Ya;S)V
    .locals 11

    .line 1681
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Ya;S)V

    .line 1682
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    const-string v1, "InMobiInterstitial"

    const-string v2, "Failed to load the Interstitial markup in the WebView for placement id: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 1683
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 1684
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1685
    invoke-static {p0, p1, v5, v3, v0}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;IZILjava/lang/Object;)V

    .line 1686
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 1687
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v4

    move v8, v7

    move v6, v5

    :goto_0
    const/4 v9, -0x1

    if-ge v6, v0, :cond_3

    if-ne v6, p1, :cond_0

    goto :goto_1

    .line 1688
    :cond_0
    iget-object v10, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 1689
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1691
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v5

    move v8, v7

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    move v6, v9

    :goto_2
    if-eq v6, v9, :cond_5

    if-eqz v8, :cond_9

    .line 1699
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p2

    if-ne p2, v3, :cond_9

    .line 1701
    invoke-virtual {p0, v4}, Lcom/inmobi/media/Q0;->b(B)V

    .line 1702
    invoke-virtual {p0, v6}, Lcom/inmobi/media/Q0;->h(I)V

    .line 1703
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_4

    .line 1704
    const-string v0, "TAG"

    const-string v1, "Providing success based on currIndex "

    const-string v2, "Q5"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2260
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2261
    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->L0()V

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_9

    .line 2266
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-ne p1, v3, :cond_9

    .line 2267
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_6

    .line 2268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2269
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    :cond_6
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 2275
    invoke-virtual {p0, p1, v4, p2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_3

    .line 2276
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-ne p1, v3, :cond_9

    .line 2277
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_8

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2279
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    :cond_8
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 2285
    invoke-virtual {p0, p1, v4, p2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_9
    :goto_3
    return-void
.end method

.method public a(Lcom/inmobi/media/Ya;Z)V
    .locals 8

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3149
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Ya;Z)V

    .line 3150
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x8ac

    goto :goto_0

    :cond_0
    const/16 p1, 0x8ab

    .line 3156
    :goto_0
    new-instance p2, Lcom/inmobi/media/N5;

    invoke-direct {p2, p0, p1}, Lcom/inmobi/media/N5;-><init>(Lcom/inmobi/media/Q5;S)V

    iput-object p2, p0, Lcom/inmobi/media/Q5;->P:Lkotlin/jvm/functions/Function0;

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x6

    const-string v2, "fullScreenActivity is not null and finishing"

    const-string v3, "InMobiInterstitial"

    const/4 v4, 0x2

    const-string v5, "TAG"

    const-string v6, "Q5"

    const-string v7, "RenderProcess of the WebView has crashed. Please create another adUnit"

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_2

    const/16 v0, 0x8ae

    goto :goto_1

    :cond_2
    const/16 v0, 0x8ad

    .line 3169
    :goto_1
    invoke-static {v4, v3, v7}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 3170
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_3

    .line 3171
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v6, v7}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3173
    iget-object v3, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_4

    sget-object v4, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 3175
    :cond_5
    iget v1, p0, Lcom/inmobi/media/Q5;->M:I

    if-nez v1, :cond_6

    const/4 p1, 0x1

    .line 3176
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/Q0;->a(ZS)V

    goto :goto_3

    .line 3178
    :cond_6
    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/Ya;->a(ZS)V

    .line 3179
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q5;->a(Lcom/inmobi/media/E0;)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_8

    const/16 v0, 0x8b0

    goto :goto_2

    :cond_8
    const/16 v0, 0x8af

    .line 3189
    :goto_2
    invoke-static {v4, v3, v7}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 3190
    iget-object v1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v1, :cond_9

    .line 3191
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/g5;

    invoke-virtual {v1, v6, v7}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    :cond_9
    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/Ya;->a(ZS)V

    .line 3193
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 3194
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_a

    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    :cond_a
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 3196
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q5;->a(Lcom/inmobi/media/E0;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/gc;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/inmobi/media/Q5;->O:Lcom/inmobi/media/gc;

    return-void
.end method

.method public a(Lcom/inmobi/media/h;ZS)V
    .locals 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1207
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 1208
    invoke-virtual {p0, p1, v0, p3}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_1

    .line 1215
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/h;ZS)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1216
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p2, :cond_1

    .line 1217
    const-string p3, "TAG"

    const-string v1, "Exception while onVastProcessCompleted : "

    const-string v2, "Q5"

    invoke-static {v2, p3, v1}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1634
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/g5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1639
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 p2, 0x37

    .line 1640
    invoke-virtual {p0, p1, v0, p2}, Lcom/inmobi/media/Q0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return-void

    .line 1647
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/media/h;->G()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1648
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->b(Z)V

    .line 1649
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->V()V

    goto :goto_1

    .line 1651
    :cond_3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/h;)V

    :goto_1
    return-void
.end method

.method public a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 686
    const-string v1, "TAG"

    const-string v2, "Q5"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onDidParseAfterFetch - parsingResult - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 688
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 689
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 690
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Interstitial ad successfully fetched for placement id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 691
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "InMobiInterstitial"

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object p1

    const-string p2, "inmobiJson"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 695
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/Y;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 696
    sget-object p2, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    .line 697
    iget-object p2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    .line 699
    const-string v0, "logType"

    const-string v1, "intNative"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    sget-object v0, Lcom/inmobi/media/Ea;->d:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getLoggingConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 995
    new-instance v2, Lcom/inmobi/media/e5;

    .line 996
    invoke-static {v1, p1, v0}, Lcom/inmobi/media/Ea;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;)Lcom/inmobi/media/B6;

    move-result-object v3

    .line 997
    invoke-static {v1, p1, v0}, Lcom/inmobi/media/Ea;->b(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;)D

    move-result-wide v0

    .line 998
    invoke-direct {v2, v3, v0, v1}, Lcom/inmobi/media/e5;-><init>(Lcom/inmobi/media/B6;D)V

    .line 999
    check-cast p2, Lcom/inmobi/media/g5;

    .line 1000
    const-string p1, "config"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1095
    iget-object p2, p2, Lcom/inmobi/media/g5;->a:Lcom/inmobi/media/Ca;

    if-eqz p2, :cond_3

    .line 1096
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p2, Lcom/inmobi/media/Ca;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1191
    iget-object p1, p2, Lcom/inmobi/media/Ca;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1194
    :cond_2
    iget-object p1, p2, Lcom/inmobi/media/Ca;->e:Lcom/inmobi/media/D6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1195
    const-string v2, "logLevel"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    iput-object v3, p1, Lcom/inmobi/media/D6;->a:Lcom/inmobi/media/B6;

    .line 1204
    iget-object p1, p2, Lcom/inmobi/media/Ca;->f:Lcom/inmobi/media/Fb;

    .line 1205
    iput-wide v0, p1, Lcom/inmobi/media/Fb;->a:D

    .line 1206
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->q0()V

    :cond_4
    return-void
.end method

.method public a([B)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->a([B)V

    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/media/Ya;)Z
    .locals 2

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2311
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 2313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2314
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final b(Landroid/content/Context;)S
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "Q5"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ">>> Starting InMobiAdActivity to display interstitial ad ..."

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x86b

    return p1

    .line 4
    :cond_1
    const-string v1, "unknown"

    invoke-interface {v0}, Lcom/inmobi/media/x;->getMarkupType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x86c

    return p1

    .line 7
    :cond_2
    sget-object v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 8
    const-string v1, "container"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 130
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 131
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object v2, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v2, :cond_3

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v4, Lcom/inmobi/media/S4;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "obj"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v5, Lcom/inmobi/media/S4;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "loggerCacheKey"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_3
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v1, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    .line 143
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string v3, "html"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xc8

    goto :goto_0

    .line 145
    :cond_4
    const-string v3, "htmlUrl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xca

    goto :goto_0

    :cond_5
    const/16 v2, 0xc9

    .line 146
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v1, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_6

    const/16 p1, 0x86d

    return p1

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 161
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->C()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/media/Q0;->a(J)V

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->z()I

    move-result v1

    if-lez v1, :cond_8

    const/high16 v1, 0x24000000

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    :cond_8
    sget-object v1, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 170
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_9

    .line 171
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "InMobiInterstitial"

    const-string v2, "Cannot show ad; SDK encountered an unexpected error"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_9
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 176
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 177
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/16 p1, 0x86a

    :goto_1
    return p1
.end method

.method public b()V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 202
    const-string v1, "TAG"

    const-string v2, "Q5"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "Closing the ad as closeAll is called"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda0;-><init>(Lcom/inmobi/media/Q5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public b(Lcom/inmobi/media/E0;)V
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 182
    iget v0, p0, Lcom/inmobi/media/Q5;->M:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/inmobi/media/Q5;->M:I

    if-ne v0, v3, :cond_1

    .line 183
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully displayed Interstitial for placement id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "InMobiInterstitial"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    .line 190
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->b(B)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->d(Lcom/inmobi/media/E0;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Q0;->d(B)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-ne p1, v2, :cond_3

    .line 197
    iget p1, p0, Lcom/inmobi/media/Q5;->M:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/inmobi/media/Q5;->M:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Lcom/inmobi/media/E0;S)V
    .locals 0

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/Q0;->a(ZS)V

    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->d(B)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "monetizationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string p1, "activity"

    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/inmobi/media/Q0;->c0()V

    :cond_0
    return-void
.end method

.method public declared-synchronized d(Lcom/inmobi/media/Ya;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/inmobi/media/ab;->d(Lcom/inmobi/media/Ya;)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda5;-><init>(Lcom/inmobi/media/Q5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Lcom/inmobi/media/Ya;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1}, Lcom/inmobi/media/ab;->e(Lcom/inmobi/media/Ya;)V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda6;-><init>(Lcom/inmobi/media/Q5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/Q0;->g()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/inmobi/media/Q5;->P:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final h(Lcom/inmobi/media/E0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q5;->b(Landroid/content/Context;)S

    move-result v0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_2

    .line 3
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "InMobiInterstitial"

    const-string v1, "Listener was garbage collected.Unable to give callback"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/Q0;->a(ZS)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/E0;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Lcom/inmobi/media/E0;)V
    .locals 7

    const-string v0, "InMobiInterstitial"

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/inmobi/media/g5;

    const-string v2, "Listener was garbage collected. Unable to give callback"

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x867

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/inmobi/media/Q0;->a(ZS)V

    return-void

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/Q5;->P:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x2

    const-string v5, "TAG"

    const-string v6, "Q5"

    if-ne v2, v3, :cond_4

    .line 12
    iget-object p1, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v0, "unload has been called on this ad. Dont show. "

    invoke-virtual {p1, v6, v0}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string p1, "Failed to show Ad as creative has called unload() on the Ad"

    invoke-static {v4, v6, p1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8bf

    .line 22
    invoke-virtual {p0, v1, p1}, Lcom/inmobi/media/Q0;->a(ZS)V

    return-void

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->H0()Z

    move-result v2

    if-nez v2, :cond_6

    .line 26
    const-string p1, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    invoke-static {v4, v0, p1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_5

    .line 28
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v6, p1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_5
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6, p1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x868

    .line 30
    invoke-virtual {p0, v1, p1}, Lcom/inmobi/media/Q0;->a(ZS)V

    return-void

    .line 35
    :cond_6
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->g(Lcom/inmobi/media/E0;)V

    const/4 v0, 0x6

    .line 39
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->d(B)V

    .line 40
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "htmlUrl"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 50
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->v()Lcom/inmobi/media/A;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Lcom/inmobi/media/J5;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/media/J5;-><init>(Lcom/inmobi/media/Q5;Lcom/inmobi/media/E0;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/E1;)V

    goto :goto_1

    .line 51
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->W()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x869

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/Q5;->b(Lcom/inmobi/media/E0;S)V

    .line 53
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->k()Lcom/inmobi/media/x;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 54
    invoke-interface {p1}, Lcom/inmobi/media/x;->b()V

    goto :goto_1

    .line 56
    :cond_9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q5;->h(Lcom/inmobi/media/E0;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public final j(Lcom/inmobi/media/E0;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q5;->i(Lcom/inmobi/media/E0;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/inmobi/media/m4;->a:I

    .line 5
    sget-object v0, Lcom/inmobi/media/m4;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/P6;

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/P6;->a:Landroid/os/Handler;

    .line 7
    new-instance v1, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/Q5$$ExternalSyntheticLambda4;-><init>(Lcom/inmobi/media/Q5;Lcom/inmobi/media/E0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public j0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->p0()Z

    move-result v0

    const-string v1, "TAG"

    const-string v2, "Q5"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "renderAd without internet check"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->I0()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "renderAd"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance v0, Lcom/inmobi/media/O5;

    invoke-direct {v0, p0}, Lcom/inmobi/media/O5;-><init>(Lcom/inmobi/media/Q5;)V

    new-instance v1, Lcom/inmobi/media/P5;

    invoke-direct {v1, p0}, Lcom/inmobi/media/P5;-><init>(Lcom/inmobi/media/Q5;)V

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Q0;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public k0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/Q0;->k0()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/inmobi/media/Q5;->M:I

    return-void
.end method

.method public m(Lcom/inmobi/media/Ya;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->m(Lcom/inmobi/media/Ya;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->A()I

    move-result v0

    const-string v3, "TAG"

    const-string v4, "Q5"

    if-ge p1, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring loaded ad with index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " as current rendering index is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->A()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v4, p1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 16
    iget-object v5, p0, Lcom/inmobi/media/Q0;->g:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result v0

    if-ne v0, v1, :cond_6

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_4

    .line 24
    const-string v1, "Providing success based on index "

    invoke-static {v4, v3, v1, p1}, Lcom/inmobi/media/x8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 540
    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_4
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Q0;->b(B)V

    .line 542
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q0;->h(I)V

    .line 543
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->L0()V

    goto :goto_1

    .line 545
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->Q()B

    move-result p1

    if-ne p1, v1, :cond_6

    .line 546
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Q0;->b(B)V

    .line 547
    invoke-virtual {p0}, Lcom/inmobi/media/Q5;->L0()V

    :cond_6
    :goto_1
    return-void
.end method

.method public o(Lcom/inmobi/media/Ya;)V
    .locals 1

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Q5;->a(Lcom/inmobi/media/Ya;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->C0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->C0()V

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/inmobi/media/Q0;->o(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "int"

    return-object v0
.end method

.method public q0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    const-string v1, "TAG"

    const-string v2, "Q5"

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_0

    .line 3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v1, "callback - onFetchSuccess"

    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->e(Lcom/inmobi/media/E0;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x88c

    .line 6
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->b(S)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v1, "listener is null"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public r0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    const-string v1, "TAG"

    const-string v2, "Q5"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdUnit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state - READY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/g5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->d(B)V

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->s()Lcom/inmobi/media/S0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/inmobi/media/S0;->i:J

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->u0()V

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->z0()V

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/Q5;->O:Lcom/inmobi/media/gc;

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v0, Lcom/inmobi/media/gc;->a:Z

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/Q0;->r()Lcom/inmobi/media/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/inmobi/media/E0;->a()Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 15
    iget-object v3, p0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v3, :cond_1

    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/g5;

    const-string v1, "signaling Success"

    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Q0;->f(Lcom/inmobi/media/E0;)V

    :cond_2
    return-void
.end method

.method public w()Lcom/inmobi/media/Ya;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/Q0;->w()Lcom/inmobi/media/Ya;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/inmobi/media/Q5;->N:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->e()V

    :cond_0
    return-object v0
.end method
