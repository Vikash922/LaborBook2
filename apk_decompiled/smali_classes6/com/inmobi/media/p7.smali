.class public final Lcom/inmobi/media/p7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/w;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/t7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/t7;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/p7;->a:Lcom/inmobi/media/t7;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p7;->a:Lcom/inmobi/media/t7;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/t7;->m:Ljava/lang/String;

    .line 3
    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/p7;->a:Lcom/inmobi/media/t7;

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/O0;->c()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/p7;->a:Lcom/inmobi/media/t7;

    invoke-virtual {p1}, Lcom/inmobi/media/t7;->f()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/p7;->a:Lcom/inmobi/media/t7;

    .line 12
    iget-object p1, p1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/inmobi/media/O0;->d()V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/p7;->a:Lcom/inmobi/media/t7;

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/t7;->w:Lcom/inmobi/media/O0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/inmobi/media/O0;->b()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/p7;->a:Lcom/inmobi/media/t7;

    .line 5
    iget-object p1, p1, Lcom/inmobi/media/t7;->j:Lcom/inmobi/media/f5;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Lcom/inmobi/media/g5;

    invoke-virtual {p1}, Lcom/inmobi/media/g5;->a()V

    :cond_1
    return-void
.end method
