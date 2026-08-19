.class public final Lcom/inmobi/media/p3;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/q3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/q3;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/p3;->a:Lcom/inmobi/media/q3;

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityLayout(IIIIILandroid/os/Bundle;)V
    .locals 6

    const-string v0, "extras"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    .line 2
    const-string p6, "q3"

    const-string v0, "access$getLOG_TAG$cp(...)"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p6, p0, Lcom/inmobi/media/p3;->a:Lcom/inmobi/media/q3;

    .line 4
    iget-object p6, p6, Lcom/inmobi/media/q3;->c:Lcom/inmobi/media/h2;

    if-eqz p6, :cond_0

    .line 5
    iget-object v0, p6, Lcom/inmobi/media/h2;->c:Lcom/inmobi/media/c2;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/inmobi/media/c2;->a(IIIII)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 2
    const-string p2, "q3"

    const-string v0, "access$getLOG_TAG$cp(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/inmobi/media/p3;->a:Lcom/inmobi/media/q3;

    .line 4
    iget-object p2, p2, Lcom/inmobi/media/q3;->c:Lcom/inmobi/media/h2;

    if-eqz p2, :cond_b

    .line 5
    iget-object v0, p2, Lcom/inmobi/media/h2;->i:Lcom/inmobi/media/r3;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 7
    iget v1, v0, Lcom/inmobi/media/r3;->e:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    .line 11
    :goto_0
    iget-object v1, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/media/c2;

    if-eqz v1, :cond_2

    sget-object v3, Lcom/inmobi/media/h6;->i:Lcom/inmobi/media/h6;

    iget-object v4, v0, Lcom/inmobi/media/r3;->b:Lcom/inmobi/media/t6;

    const/16 v5, 0x1f43

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    .line 13
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/media/c2;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/inmobi/media/c2;->c()V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/media/c2;

    if-eqz v1, :cond_8

    sget-object v3, Lcom/inmobi/media/h6;->j:Lcom/inmobi/media/h6;

    iget-object v4, v0, Lcom/inmobi/media/r3;->b:Lcom/inmobi/media/t6;

    const/16 v5, 0x1f45

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v1, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 17
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    .line 18
    iget-object v1, v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/media/c2;

    if-eqz v1, :cond_8

    sget-object v3, Lcom/inmobi/media/h6;->j:Lcom/inmobi/media/h6;

    iget-object v4, v0, Lcom/inmobi/media/r3;->b:Lcom/inmobi/media/t6;

    const/16 v5, 0x1f44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v3, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    .line 20
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/inmobi/media/r3;->d:Ljava/lang/Boolean;

    .line 21
    iget-object v3, v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/media/c2;

    if-eqz v3, :cond_6

    sget-object v4, Lcom/inmobi/media/h6;->i:Lcom/inmobi/media/h6;

    iget-object v5, v0, Lcom/inmobi/media/r3;->b:Lcom/inmobi/media/t6;

    .line 22
    invoke-interface {v3, v4, v5, v1}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    .line 23
    :cond_6
    iget-object v1, v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/media/c2;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/inmobi/media/c2;->c()V

    goto :goto_1

    .line 24
    :cond_7
    iget-boolean v4, v0, Lcom/inmobi/media/r3;->c:Z

    if-nez v4, :cond_8

    .line 25
    iput-boolean v3, v0, Lcom/inmobi/media/r3;->c:Z

    .line 26
    iget-object v3, v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/media/c2;

    if-eqz v3, :cond_8

    sget-object v4, Lcom/inmobi/media/h6;->h:Lcom/inmobi/media/h6;

    iget-object v5, v0, Lcom/inmobi/media/r3;->b:Lcom/inmobi/media/t6;

    .line 27
    invoke-interface {v3, v4, v5, v1}, Lcom/inmobi/media/c2;->a(Lcom/inmobi/media/h6;Lcom/inmobi/media/t6;Ljava/lang/Integer;)V

    .line 28
    :cond_8
    :goto_1
    iput p1, v0, Lcom/inmobi/media/r3;->e:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    if-eq p1, v2, :cond_9

    goto :goto_2

    .line 29
    :cond_9
    iget-object p1, p2, Lcom/inmobi/media/h2;->c:Lcom/inmobi/media/c2;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/inmobi/media/c2;->a()V

    goto :goto_2

    .line 30
    :cond_a
    iget-object p1, p2, Lcom/inmobi/media/h2;->c:Lcom/inmobi/media/c2;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/inmobi/media/c2;->b()V

    :cond_b
    :goto_2
    return-void
.end method
