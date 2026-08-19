.class public final Lcom/inmobi/media/P0;
.super Lcom/inmobi/media/E1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/inmobi/media/Q0;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Q0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/media/P0;->d:Lcom/inmobi/media/Q0;

    iput-object p2, p0, Lcom/inmobi/media/P0;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/media/P0;->f:Ljava/lang/String;

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/media/E1;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/E1;->b:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Q0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/inmobi/media/Q0;->m()Lcom/inmobi/media/h;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/media/P0;->e:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/inmobi/media/P0;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/inmobi/media/Q0;->a(Lcom/inmobi/media/Q0;Lcom/inmobi/media/h;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/P0;->d:Lcom/inmobi/media/Q0;

    .line 8
    iget-object v0, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v3, "Updated blob "

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/j6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2733
    iget-object v3, p0, Lcom/inmobi/media/P0;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/g5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2735
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->d:Lcom/inmobi/media/Q0;

    .line 2736
    iget-object v0, v0, Lcom/inmobi/media/Q0;->j:Lcom/inmobi/media/f5;

    if-eqz v0, :cond_1

    .line 2737
    invoke-static {}, Lcom/inmobi/media/Q0;->e()Ljava/lang/String;

    move-result-object v1

    .line 2738
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/g5;

    const-string v2, "Impression ID is null for saveBlob"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/g5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
