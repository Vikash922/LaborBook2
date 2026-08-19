.class public abstract Lcom/inmobi/media/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/inmobi/media/c2;Lcom/inmobi/media/t6;Lcom/inmobi/media/Aa;Ljava/lang/String;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTabsIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectionValidator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/s3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "toString(...)"

    if-nez v0, :cond_0

    .line 7
    :try_start_0
    const-string p1, "q3"

    const-string v0, "access$getLOG_TAG$cp(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1, p6, p4}, Lcom/inmobi/media/c2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/t6;)V

    goto :goto_4

    .line 10
    :cond_0
    iget-object v3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    iget-object v3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p1, p0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    if-nez p4, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    const-string p1, "IN_NATIVE"

    .line 15
    iput-object p1, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_5

    .line 16
    sget-object p1, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 17
    invoke-interface {p3, p1, p4, v1}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 18
    :catch_0
    :try_start_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p5, p6}, Lcom/inmobi/media/w2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Aa;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/16 p0, 0x9

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    const-string p1, "EX_NATIVE"

    .line 25
    iput-object p1, p4, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    :goto_2
    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_5

    .line 26
    sget-object p1, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p1, p4, p0}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    .line 28
    sget-object p0, Lcom/inmobi/media/h6;->f:Lcom/inmobi/media/h6;

    .line 29
    invoke-interface {p3, p0, p4, v1}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    :cond_5
    :goto_4
    return-void
.end method
