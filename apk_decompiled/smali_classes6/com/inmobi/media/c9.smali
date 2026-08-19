.class public final Lcom/inmobi/media/c9;
.super Lcom/inmobi/media/R8;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/inmobi/media/d9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/d9;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/c9;->e:Lcom/inmobi/media/d9;

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/R8;-><init>(Lcom/inmobi/media/d9;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcom/inmobi/media/Ya;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string p1, "getApplicationContext(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v12}, Lcom/inmobi/media/Ya;-><init>(Landroid/content/Context;BLjava/util/Set;Ljava/lang/String;ZLjava/lang/String;JLcom/inmobi/media/bb;Lcom/inmobi/media/f5;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lcom/inmobi/media/d9;->c:Ljava/util/HashMap;

    .line 11
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 12
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of v0, p1, Lcom/inmobi/media/Ya;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/Ya;

    .line 54
    iget-boolean v0, v0, Lcom/inmobi/media/Ya;->T:Z

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/inmobi/media/R8;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)V
    .locals 6

    const-string v0, "TAG"

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/R8;->a(Landroid/view/View;Lcom/inmobi/media/D7;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 18
    instance-of v1, p1, Lcom/inmobi/media/Ya;

    if-eqz v1, :cond_b

    .line 19
    iget-object v1, p0, Lcom/inmobi/media/c9;->e:Lcom/inmobi/media/d9;

    check-cast p1, Lcom/inmobi/media/Ya;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :try_start_0
    instance-of v1, p2, Lcom/inmobi/media/f9;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/inmobi/media/f9;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    sget-object v3, Lcom/inmobi/media/Ya;->O0:Lcom/inmobi/media/Ga;

    invoke-virtual {p1, v3, p3}, Lcom/inmobi/media/Ya;->a(Lcom/inmobi/media/ab;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 23
    iget-object p3, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p3, :cond_1

    sget-object v3, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "disableUrlsToOpenInExternalApp "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast p3, Lcom/inmobi/media/g5;

    invoke-virtual {p3, v3, v4}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p1, Lcom/inmobi/media/Ya;->s:Z

    .line 25
    iget-object p2, p2, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    .line 26
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 27
    iget-object v2, v1, Lcom/inmobi/media/f9;->y:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_a

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v1, -0x40732010

    if-eq p3, v1, :cond_8

    const v1, 0x1494f

    if-eq p3, v1, :cond_7

    const v1, 0x21ffab

    if-eq p3, v1, :cond_5

    const v1, 0x4fe4bf7

    if-eq p3, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string p3, "REF_HTML"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    :cond_5
    const-string p3, "HTML"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_7
    const-string p3, "URL"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_2

    :cond_8
    const-string p3, "REF_IFRAME"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_2

    .line 39
    :cond_9
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 42
    :cond_a
    :goto_2
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Ya;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 46
    const-string p2, "d9"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object p2, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 48
    const-string p2, "event"

    invoke-static {p1, p2}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 49
    sget-object p2, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_b
    :goto_3
    return-void
.end method
