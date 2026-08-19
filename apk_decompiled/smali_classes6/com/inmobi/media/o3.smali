.class public final Lcom/inmobi/media/o3;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/q3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/q3;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/o3;->a:Lcom/inmobi/media/q3;

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/o3;->a:Lcom/inmobi/media/q3;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    return-void
.end method

.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/o3;->a:Lcom/inmobi/media/q3;

    .line 2
    iput-object p2, p1, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 3
    iget-object p1, p1, Lcom/inmobi/media/q3;->c:Lcom/inmobi/media/h2;

    if-eqz p1, :cond_3

    .line 4
    iget-object p2, p1, Lcom/inmobi/media/h2;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p2, "parse(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p1, Lcom/inmobi/media/h2;->b:Lcom/inmobi/media/g2;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/inmobi/media/h2;->a(Lcom/inmobi/media/g2;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v3, p1, Lcom/inmobi/media/h2;->g:Lcom/inmobi/media/q3;

    .line 9
    iget-object v4, v3, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v4, :cond_0

    .line 10
    new-instance v1, Lcom/inmobi/media/p3;

    invoke-direct {v1, v3}, Lcom/inmobi/media/p3;-><init>(Lcom/inmobi/media/q3;)V

    invoke-virtual {v4, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    .line 11
    :cond_0
    invoke-direct {p2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 12
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    goto :goto_0

    .line 13
    :cond_1
    new-instance p2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v3, p1, Lcom/inmobi/media/h2;->g:Lcom/inmobi/media/q3;

    .line 14
    iget-object v4, v3, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v4, :cond_2

    .line 15
    new-instance v1, Lcom/inmobi/media/p3;

    invoke-direct {v1, v3}, Lcom/inmobi/media/p3;-><init>(Lcom/inmobi/media/q3;)V

    invoke-virtual {v4, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    .line 16
    :cond_2
    invoke-direct {p2, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 17
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setUrlBarHidingEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 18
    :goto_0
    iget-object v0, p1, Lcom/inmobi/media/h2;->h:Landroid/content/Context;

    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    const-string p2, "build(...)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/inmobi/media/h2;->c:Lcom/inmobi/media/c2;

    iget-object v4, p1, Lcom/inmobi/media/h2;->e:Lcom/inmobi/media/t6;

    iget-object v5, p1, Lcom/inmobi/media/h2;->d:Lcom/inmobi/media/Aa;

    iget-object v6, p1, Lcom/inmobi/media/h2;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/inmobi/media/n3;->a(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/inmobi/media/c2;Lcom/inmobi/media/t6;Lcom/inmobi/media/Aa;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/o3;->a:Lcom/inmobi/media/q3;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 3
    iget-object p1, p1, Lcom/inmobi/media/q3;->c:Lcom/inmobi/media/h2;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p1, Lcom/inmobi/media/h2;->e:Lcom/inmobi/media/t6;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "IN_NATIVE"

    .line 5
    iput-object v1, v0, Lcom/inmobi/media/t6;->g:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p1, p1, Lcom/inmobi/media/h2;->c:Lcom/inmobi/media/c2;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/inmobi/media/h6;->g:Lcom/inmobi/media/h6;

    const/16 v2, 0x1f49

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/o3;->a:Lcom/inmobi/media/q3;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/inmobi/media/q3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    return-void
.end method
