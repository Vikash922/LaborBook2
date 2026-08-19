.class public final Lcom/inmobi/media/Sa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/w;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ya;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ya;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "onAdScreenDisplayFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {v0}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/ab;->c()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    .line 7
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 9
    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onAdScreenDisplayed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    .line 11
    iget-byte v0, p1, Lcom/inmobi/media/Ya;->b:B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Lcom/inmobi/media/Ya;->G:Z

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getListener()Lcom/inmobi/media/ab;

    move-result-object p1

    iget-object v0, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/ab;->e(Lcom/inmobi/media/Ya;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/Ya;->i:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/inmobi/media/Ya;->P0:Ljava/lang/String;

    .line 4
    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/g5;

    const-string v1, "onAdScreenDismissed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/g5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->getViewState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Default"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    const-string v0, "Hidden"

    invoke-virtual {p1, v0}, Lcom/inmobi/media/Ya;->setAndUpdateViewState(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/Sa;->a:Lcom/inmobi/media/Ya;

    invoke-virtual {p1}, Lcom/inmobi/media/Ya;->w()V

    return-void
.end method
